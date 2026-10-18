#!/usr/bin/env python3
"""Generate adversarial Lean controls for the concrete qALC RRI replay."""

from __future__ import annotations

from collections import defaultdict, deque
from dataclasses import replace
from pathlib import Path

import certify
from kernel import (FIRST_FRAME_EPOCH, FRAME, FRESH_EPOCH, Run, init,
                    recall_epoch, rs_insert, step)
import suite

from QalcConcreteExport import (carrier_and_rows, lean_certificate,
                                lean_epoch, lean_run, lean_state, lean_term)


def raw_recall_pair(term, cert):
    initial = next(iter(init(term)))
    seen, todo = {initial}, deque([initial])
    while todo:
        source = todo.popleft()
        rows = step(term, source, cert)
        if rows and rows[0][2] == "recall":
            j = 0
            while source.tape[j] == "•":
                j += 1
            alpha = source.tape[j]
            if not any(frame[1:3] == alpha[1:3] for frame in source.rs):
                frame = FRAME(alpha[1], alpha[2], alpha[3])
                return source, replace(source, rs=source.rs + (frame,))
        for _sign, _denominator, _rule, target in rows:
            if isinstance(target, Run) and target not in seen:
                seen.add(target)
                todo.append(target)
    raise AssertionError("negative raw recall pair disappeared")


def with_matching_frame(source, epoch):
    j = 0
    while source.tape[j] == "•":
        j += 1
    alpha = source.tape[j]
    frame = FRAME(alpha[1], alpha[2], alpha[3], epoch)
    return replace(source, rs=rs_insert(source.rs, frame))


# Distinct epochs with one affine hash: hashEpoch is linear in its children,
# so both reduce to 438 P + 107 + 4 C (P, C the hashMix constants).
HASH_LEFT_EPOCH = recall_epoch(recall_epoch(FRESH_EPOCH, FIRST_FRAME_EPOCH),
                               None)
HASH_RIGHT_EPOCH = recall_epoch(FRESH_EPOCH,
                                recall_epoch(FIRST_FRAME_EPOCH, None))


def h_reconvergence(term, cert):
    states, rows = carrier_and_rows(term, cert, 100_000)
    groups = defaultdict(list)
    for source, outgoing in zip(states, rows):
        for row in outgoing:
            if row[2] == "fire-h" and isinstance(row[3], Run):
                groups[row[3]].append(source)
    for target, sources in groups.items():
        distinct = list(dict.fromkeys(sources))
        if len(distinct) >= 2:
            return distinct[0], distinct[1], target
    raise AssertionError("qprime certified-H reconvergence disappeared")


def main():
    negative = suite.PROGRAMS["negative"]
    negative_cert = certify.discover_total(negative)
    bare, framed = raw_recall_pair(negative, negative_cert)
    replayed = with_matching_frame(
        bare, recall_epoch(FIRST_FRAME_EPOCH, FIRST_FRAME_EPOCH))
    hash_left = with_matching_frame(bare, HASH_LEFT_EPOCH)
    hash_right = with_matching_frame(bare, HASH_RIGHT_EPOCH)

    qprime = suite.PROGRAMS["qprime"]
    qprime_cert = certify.discover_total(qprime)
    left, right, target = h_reconvergence(qprime, qprime_cert)

    out = Path("QalcConcreteCertificateAudit.lean")
    out.write_text(f'''import QalcConcreteCertificate

namespace QalcConcreteAudit
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000

def negativeTerm : Term := {lean_term(negative)}
def negativeCert : Certificate := {lean_certificate(negative_cert)}
def bare : State := {lean_state(bare)}
def framed : State := {lean_state(framed)}

-- These raw-WF sources have structurally disjoint recall targets.
-- No reachability or finite-carrier RRI premise is used here.
theorem raw_recall_targets_disjoint :
    (step negativeTerm bare negativeCert).map (·.target) !=
      (step negativeTerm framed negativeCert).map (·.target) := by
  decide +kernel

-- The recall view matches a frame of any epoch: a replay-return frame is
-- present at the frame-absent source's projection, an RRI phase witness.
def replayed : State := {lean_state(replayed)}

theorem replay_epoch_frame_is_present :
    recallPhase replayed = true ∧
    eqBool (recallProjection replayed) (recallProjection bare) = true ∧
    pairRRI negativeTerm negativeCert bare replayed = false := by
  decide +kernel

-- Two epochs with one hash give equal target fingerprints, engaging the
-- summary guard.  The sources differ only in the erased epoch, so they share
-- projection and phase but land apart; the target checker accepts exactly
-- the stated one-way property rather than a hash-dependent converse.
def hashLeftEpoch : Epoch := {lean_epoch(HASH_LEFT_EPOCH)}
def hashRightEpoch : Epoch := {lean_epoch(HASH_RIGHT_EPOCH)}
def hashLeft : State := {lean_state(hash_left)}
def hashRight : State := {lean_state(hash_right)}

theorem hash_equal_epochs_check_exactly :
    hashLeftEpoch != hashRightEpoch ∧
    hashEpoch hashLeftEpoch = hashEpoch hashRightEpoch ∧
    eqBool (uniqueRecallTarget? negativeTerm negativeCert hashLeft)
      (uniqueRecallTarget? negativeTerm negativeCert hashRight) = false ∧
    eqBool ((recallTargetSummary? negativeTerm negativeCert hashLeft).map
        (·.targetFingerprint))
      ((recallTargetSummary? negativeTerm negativeCert hashRight).map
        (·.targetFingerprint)) = true ∧
    pairTargetFacts negativeTerm negativeCert hashLeft hashRight = true ∧
    summariesTargetFacts
      (recallTargetSummaries negativeTerm negativeCert [hashLeft, hashRight])
      = true := by
  decide +kernel

-- A finite prefix is not a certificate: closure rejects the initial singleton.
theorem prefix_rejected :
    certificateBool negativeTerm negativeCert [initial] = false := by
  decide +kernel

def qprimeTerm : Term := {lean_term(qprime)}
def qprimeCert : Certificate := {lean_certificate(qprime_cert)}
def leftFire : State := {lean_state(left)}
def rightFire : State := {lean_state(right)}
def commonTarget : State := {lean_state(target)}

def reaches (source target : State) : Bool :=
  (step qprimeTerm source qprimeCert).any
    (fun edge => eqBool edge.target target)

-- Two distinct certified Hadamard sources really reconverge on this exact Run.
theorem certified_hadamard_reconvergence :
    leftFire != rightFire ∧
    reaches leftFire commonTarget = true ∧
    reaches rightFire commonTarget = true := by
  decide +kernel

-- Both Hadamard arms are part of closure; silently dropping one changes the row.
theorem certified_fire_has_two_arms :
    (step qprimeTerm leftFire qprimeCert).length = 2 := by
  decide +kernel

end QalcConcreteAudit
''')
    print("QALC-CONCRETE-AUDIT-EXPORT", out)


if __name__ == "__main__":
    main()
