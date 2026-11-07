#!/usr/bin/env python3
"""Promote the verified round-4 Lean sources into lean/Blc/ library modules.

Transformations per module: new header comment, namespace renames (word
boundary regex), exact one-shot comment edits, #print filtering (headline
theorems only), blank-run collapse, and the Probe/Slots/Derive de-duplication
by line slicing. Proof text is otherwise untouched.
"""
import re
from pathlib import Path

REPO = Path('/Users/a9lim/Work/blam')
SRC = REPO / 'tmp/round4'
DST = REPO / 'lean/Blc'

HDR = {}
HDR['SelfintWiden'] = """/-
The separated class widened. NEXT may be any source obeying the canonical
rigid branch laws (`RigidNext`: normality and tag-use shape unrestricted), and
the reader may be held to all unary laws (`FullReader`). Above a small
source-price frontier every assembly is dominated by an old-class assembly
with the canonical NEXT and the 20-bit knot, so the conditional equivalence
(162 is optimal iff every full reader has weight at least 46) survives the
widening. With no source restriction at all an assembly still costs at least
`47 + cost R + 2 * depth R`, and a sub-162 assembly has one or two knot holes.
The fixed-reader four-capture price fails, by a genuine self-interpreter.
`OneLet` prices an unbounded family of NEXTs with one designated let and
administrative redexes. No unconditional 162-bit claim.
`docs/classical/self-interpreter/class-bound.md`. All variables are 0-based;
at the root of a reader, c=0 and j=1.
-/
"""
HDR['SelfintProbe'] = """/-
Divergent-probe rigidity. Lemma A: a continuation kappa, free only in the
public C, that joins `C X N` when fed an unsolvable value reduces on fresh
arguments x, y to `C A y`; such a continuation has a canonical head
(`classify_continuation`), and a run with a single public channel head-reduces
to `C A B` with `B ⇝ N` (`probe_two_argument_corollary`). The proof uses the
existing indexed parallel-reduction head factorization, not a new
standardization axiom. `docs/classical/self-interpreter/class-bound.md`.
De Bruijn indices are 0-based. For Lemma A: C=0, x=1, y=2; substituting slot x
removes it, so N=1. For factorization: kappa=0, the forbidden extra C
channel=1, N=2; substituting kappa makes the public C=0 and N=1.
-/
"""
HDR['SelfintProbeSlots'] = """/-
Lemma A with value slots. `reflect_remainder_k` and `lemmaA_context_k` let the
rest sit at any index k ≥ 1; two applications give `lemmaA_two_slots`, the form
with APP's first operand as a second, abstract value slot: filling both slots
with blind probe values and joining `C X N` forces `t ⇝ C A w`.
`docs/classical/self-interpreter/class-bound.md`. Indices are 0-based; in t,
C=0, the value slots x=1 and z=2, the rest w=3.
-/
"""
HDR['SelfintProbeDerive'] = """/-
Probe-to-interface derivations for the actual assembly
`SelfintClass.assemble T R Q`. From the literal separated shape (`Sep`), the
public self-interpreter contract, the head controls C1/C2 and a beta-reducing
zero step, RET/VAL's semantic equations are derived rather than assumed
(`derive_from_source_hypotheses`); every self-interpreter satisfies the
semantic RET/VAL probe equations (`semantic_retval_from_contract`). Builds on
`SelfintProbe` and `SelfintProbeSlots`.
`docs/classical/self-interpreter/class-bound.md`.
-/
"""
HDR['SelfintValuesTransfer'] = """/- Lemma T: a whole-prefix reader converts into a separated-class reader by
   substituting the strip converter `κ = λv. v (λq. c)` for the continuation
   `c`. `docs/classical/self-interpreter/class-bound.md`.

   Whole-prefix reader laws (zero and length-one instances, as in
   `SelfintClass.Reader`): `R Z ⇝ r j` and `R U_1(N) ⇝ c U_1(N) N`.
   Frame at the root of R: c = 0, j = 1; probes N = 2, r = 3.
   The transfer is `substDec 1 κ (shift 1 0 R)`: shift opens a fresh
   slot 0 for the new `c`, the old `c` (now 1) is replaced by κ, and
   everything above slides back. -/
"""
HDR['SelfintValues'] = """/- The value side of the separated class. The class fixes the variable value
   (raw tail) and the constructors; here the reader may hand back any family
   `V n` in place of the raw value, and NEXT may be any source of at least two
   free leaves. A converter κ (one free continuation c) turns a V-reader into
   a raw `FullReader`; three explicit conversions give dominating raw-class
   members, so any raw full-reader floor transfers (`floor_of_dominated`).
   No unconditional 162-bit claim.
   `docs/classical/self-interpreter/class-bound.md`.
   Frame at the root of a reader: c = 0, j = 1; probes N = 2, r = 3. -/
"""
HDR['SelfintKnotHeads'] = """/-
Lemma B steps (ii) and (iii) for the opaque two-head knot.
In the opaque two-head model, h is the free index 0 and occurs only as the
head of a two-argument spine h H J. If t is beta-joinable with h t t, neither
head can be closed: every head must contain a variable bound outside the
spine. Proof: an invariant (SG) saying that every occurrence of h heads a
spine whose tracked argument is a reduct of the closed head is preserved by
beta reduction; the common reduct h t1 t2 then makes t1 a closed reduct of t,
which confluence refutes because every reduct of h t t keeps h free.
`docs/classical/self-interpreter/class-bound.md`.
-/
"""
HDR['SelfintReader30'] = """/-
The reader weight is at least 30, so the separated class costs at least 146
bits. Every one-hole two-probe reader R has `cost R + 4 * depth R ≥ 30`
(`SelfintReader30Final.reader_weight_30`), hence every class member has wire
length at least 146 (`SelfintReader30Final.class_bound_146`). The proof is a
minimum-counterexample reduction (`SelfintReader30`, `SelfintReader30Live`),
a non-lambda elimination (`SelfintReader30NonLambda`,
`SelfintReader30Accounting`) and a five-row finite-grammar exclusion with
recorded certificates (`SelfintReader30Enum`); neither finite coverage nor
minimality is assumed by the final theorems.
`docs/classical/self-interpreter/class-bound.md`. All variables are 0-based;
at the root of R: c=0, j=1.
-/
"""
HDR['SelfintGlobalBarriers'] = """/-
Parameterized barriers for the global floor, rather than enumerations. A
self-interpreter's projection `E K` is a value decoder, so a value-decoder
size bound transfers at a 9-bit discount; the guard wrapper preserves the
self-interpreter contract and cannot join any root-variable law, with a
192-bit concrete guard of the 162; contract-only conversions reduce to
minimum bookkeeping (`semantic_conversion_iff`). This module proves no
numerical global floor above the existing record.
`docs/classical/self-interpreter/global-floor.md`.
-/
"""
HDR['SelfintSpineBarriers'] = """/- Closed Church-spine probe families have small exact interpreters: a 154-bit
term for both outputs and 121- and 123-bit value decoders on Church numerals,
which cap any lower bound proved from these families alone. These are
restricted-domain witnesses, not self-interpreters.
`docs/classical/self-interpreter/global-floor.md`. -/
"""
HDR['SelfintTowerBarriers'] = """/- Explicit infinite-probe-family witnesses on the lambda towers `λⁿ. I`: a
57-bit value decoder, an 84-bit value decoder that also handles the poison
family `λⁿ. Ω`, and an 88-bit term for both outputs, which cap any lower bound
proved from these families alone; no self-interpreter lower bound.
`docs/classical/self-interpreter/global-floor.md`. -/
"""
HDR['SelfintChead'] = """/-
The split class: continuation-headed interpreters with a value-mode and a
rest-mode reader/NEXT pair. NEXT bounds for the two payload modes (value mode
at least 86 bits, rest mode at least 34, each with two free c/p leaves), by
the same pruning/merge argument as `SelfintClassNext.next_price`, generalized
over the pair of rigid branch targets. Every split-class member costs at least
157 bits plus its readers' charges, and 165 with application readers; the
200-bit c-headed construction is a member.
`docs/classical/self-interpreter/class-bound.md`. Frame: c = var 0 (unused by
the targets), p = var 1, the fresh stream t = var 2.
-/
"""

HEADLINE = {
    'SelfintWiden': {'frontier_optimal_iff_reader_floor', 'frontier_dominated_full',
                     'unrestricted_next_assembly_lower', 'unrestricted_knot_multiplicity',
                     'sub162_knot_localization', 'OneLet.covered_admin_frontier',
                     'counterexample_is_interpreter'},
    'SelfintProbe': {'lemmaA', 'lemmaA_after_two', 'classify_continuation',
                     'probe_two_argument_corollary'},
    'SelfintProbeSlots': {'lemmaA_two_slots'},
    'SelfintProbeDerive': {'derive_from_source_hypotheses', 'semantic_retval_from_contract'},
    'SelfintValuesTransfer': set(),
    'SelfintValues': {'share_dominated', 'transfer_dominated', 'wholePrefix_dominated_law',
                      'floor_of_dominated', 'vnext_two_leaves', 'wp162_strip'},
    'SelfintKnotHeads': {'Blc.SelfintKnotHeads.no_closed_first_head',
                         'Blc.SelfintKnotHeads.no_closed_second_head',
                         'Blc.SelfintKnotHeads.binary_fixedpoint_count',
                         'Blc.SelfintKnotHeads.three_nonlinear_thirty'},
    'SelfintReader30': {'reader_weight_30', 'class_bound_146'},
    'SelfintGlobalBarriers': {'projection_value', 'value_bound_transfers', 'guard_contract',
                              'guard_not_join_root_variable', 'concrete_guard',
                              'semantic_conversion_iff'},
    'SelfintSpineBarriers': {'church_value121_contract', 'church_full_contract',
                             'church_value_contract'},
    'SelfintTowerBarriers': {'value57_towers', 'value84_towers', 'value84_poison',
                             'both88_towers'},
    'SelfintChead': {'value_next_bound', 'rest_next_bound', 'cassembly_lower',
                     'split_class_165'},
}

log = []


def edit(text, old, new, mod):
    n = text.count(old)
    assert n == 1, f'{mod}: edit target found {n} times: {old!r}'
    log.append((mod, 'edit', old, new))
    return text.replace(old, new)


def rename(text, pat, new, mod):
    text2, n = re.subn(pat, new, text)
    log.append((mod, 'rename', pat, f'{new} ({n} occurrences)'))
    return text2


def strip_header(text):
    lines = text.split('\n')
    i = next(k for k, l in enumerate(lines) if l.startswith('import '))
    return '\n'.join(lines[i:])


def filter_prints(text, keep, mod):
    out, dropped, kept = [], [], []
    for l in text.split('\n'):
        m = re.match(r'#print\s+(axioms\s+)?(\S+)\s*$', l)
        if m:
            if m.group(1) and m.group(2) in keep:
                kept.append(m.group(2)); out.append(l)
            else:
                dropped.append(l)
            continue
        out.append(l)
    missing = keep - set(kept)
    log.append((mod, 'prints', f'kept {len(kept)}', f'dropped {len(dropped)}'))
    return '\n'.join(out), kept, missing


def collapse(text):
    text = re.sub(r'\n{3,}', '\n\n', text)
    return text.strip('\n') + '\n'


def lines(path, a, b):
    """1-based inclusive line slice."""
    return '\n'.join(Path(path).read_text().split('\n')[a - 1:b])


def build():
    out = {}
    # Widen
    m = 'SelfintWiden'
    t = strip_header((SRC / 'widen/Widen.lean').read_text())
    t = edit(t, """/- The following namespace is copied unchanged (apart from its import) from
   reasoning_162/floor/ReaderHoist.lean, the round-3 hoisting proof. -/""",
             """/- The following namespace is copied unchanged (apart from its import and
   name) from data/self-interpreter/reasoning_162/floor/ReaderHoist.lean. -/""", m)
    t = edit(t, '/-! Hoisting comparison. The round-3 definitions are connected to the',
             '/-! Hoisting comparison. The `SelfintWidenHoist` definitions are connected to the', m)
    t = edit(t, '/-! Follow-up: unrestricted cheap-end exclusions', '/-! Unrestricted cheap-end exclusions', m)
    t = rename(t, r'\bRound3Reader\b', 'SelfintWidenHoist', m)
    out[m] = t
    # Probe
    m = 'SelfintProbe'
    t = strip_header((SRC / 'probelean/Probe.lean').read_text())
    t = rename(t, r'\bDivergentProbe\b', 'SelfintProbe', m)
    out[m] = t
    # Slots: only the extension (Slots.lean 926..992); 1..920 equal Probe.lean.
    m = 'SelfintProbeSlots'
    probe = (SRC / 'probelean/Probe.lean').read_text().split('\n')
    slots = (SRC / 'escape/Slots.lean').read_text().split('\n')
    assert slots[:920] == probe[:920], 'Slots prefix differs from Probe'
    assert slots[920] == '' and slots[921].startswith('/-! ## Escape lane extension')
    assert slots[924].endswith('-/') and slots[925] == ''
    assert slots[992] == 'end Blc.DivergentProbe'
    ext = '\n'.join(slots[925:992])  # lines 926..992 (theorems + the three prints)
    t = ('import Blc.SelfintProbe\n\n'
         'namespace Blc.SelfintProbeSlots\n'
         'open Term SelfintControl SelfintProjections QuoteOrigins SelfintLowerBound SelfintWireCost\n'
         '  SelfintProbe\n'
         'set_option maxRecDepth 4096\n'
         'set_option maxHeartbeats 800000\n\n' + ext + '\nend Blc.SelfintProbeSlots\n')
    log.append((m, 'dedup', 'Slots.lean 1..920 (== Probe.lean 1..920) and the /-! section header',
                'dropped; kept lines 926..992'))
    out[m] = t
    # Derive: only the ProbeInterface section; lines 1..968 are Probe 1..898 + Slots extension.
    m = 'SelfintProbeDerive'
    der = (SRC / 'probelean/Derive.lean').read_text().split('\n')
    assert der[:10] == probe[:10] and der[13:898] == probe[12:897]
    assert der[968] == 'end Blc.DivergentProbe'
    assert '\n'.join(der[899:968]).replace('\n\n', '\n') .strip() in \
        '\n'.join(slots[920:989]).replace('\n\n', '\n')
    assert der[975] == 'namespace Blc.ProbeInterface'
    assert der[976] == 'open Term SelfintControl SelfintProjections DivergentProbe'
    body = '\n'.join(der[975:])
    body = body.replace('open Term SelfintControl SelfintProjections DivergentProbe',
                        'open Term SelfintControl SelfintProjections SelfintProbe SelfintProbeSlots', 1)
    log.append((m, 'edit', 'open ... DivergentProbe', 'open ... SelfintProbe SelfintProbeSlots'))
    log.append((m, 'dedup', 'Derive.lean 1..975 (Probe 1..898 + Slots extension + provenance comment)',
                'dropped; imports Blc.SelfintProbeSlots'))
    t = 'import Blc.SelfintProbeSlots\nimport Blc.SelfintClass\n\n' + body
    t = rename(t, r'\bProbeInterface\b', 'SelfintProbeDerive', m)
    assert 'DivergentProbe' not in t
    out[m] = t
    # LemmaT
    m = 'SelfintValuesTransfer'
    t = strip_header((SRC / 'values/LemmaT.lean').read_text())
    t = rename(t, r'\bValuesLemmaT\b', 'SelfintValuesTransfer', m)
    out[m] = t
    # ValuesH3
    m = 'SelfintValues'
    t = strip_header((SRC / 'values/lean/ValuesH3.lean').read_text())
    t = edit(t, 'import Widen\n', 'import Blc.SelfintWiden\n', m)
    t = rename(t, r'\bValuesH3\b', 'SelfintValues', m)
    t = rename(t, r'\bRound3Reader\b', 'SelfintWidenHoist', m)
    out[m] = t
    # KnotHeads
    m = 'SelfintKnotHeads'
    t = strip_header((SRC / 'knot/KnotHeads.lean').read_text())
    t = rename(t, r'\bKnotHeads\b', 'SelfintKnotHeads', m)
    out[m] = t
    # Final146
    m = 'SelfintReader30'
    t = strip_header((SRC / 'lean146/Final146.lean').read_text())
    t = edit(t, '/-- The five count rows from reader30.md, now proved for every lambda-rooted\n'
                '    sub-30 reader. Normality and finite-layout membership are separate steps. -/',
             '/-- The five count rows from data/self-interpreter/reasoning_162/floor/reader30.md,\n'
             '    now proved for every lambda-rooted sub-30 reader. Normality and\n'
             '    finite-layout membership are separate steps. -/', m)
    t = edit(t, 'Both named coverage assumptions are discharged\n    in Final146.lean. -/',
             'Both named coverage assumptions are discharged\n    later in this module. -/', m)
    t = edit(t, 'Lean146Final.class_bound_146 in Final146.lean. -/',
             'Lean146Final.class_bound_146 later in this module. -/', m)
    t = edit(t, '/- Spine and exact substitution identities adapted from close46/SourceCost.lean;\n'
                '   the minimum interface here uses only the two-probe Reader. -/',
             '/- Spine and exact substitution identities adapted from\n'
             '   data/self-interpreter/reasoning_class/close46/SourceCost.lean; the minimum\n'
             '   interface here uses only the two-probe Reader. -/', m)
    t = rename(t, r'\bLean146', 'SelfintReader30', m)
    out[m] = t
    # Barriers
    for m, f, old in [('SelfintGlobalBarriers', 'global/GlobalBarriers.lean', 'Round4Global'),
                      ('SelfintSpineBarriers', 'global/SpineBarriers.lean', 'Round4Spines'),
                      ('SelfintTowerBarriers', 'global/TowerBarriers.lean', 'Round4Towers')]:
        t = strip_header((SRC / f).read_text())
        t = rename(t, r'\b' + old + r'\b', m, m)
        out[m] = t
    # Chead
    m = 'SelfintChead'
    t = strip_header((SRC / 'chead/lean/ModeNext.lean').read_text())
    t = edit(t, "/-! spec200 (the lane's c-headed construction) is literally a split-class member. -/",
             '/-! spec200 (the c-headed construction of data/self-interpreter/reasoning_class/chead/)\n'
             '    is literally a split-class member. -/', m)
    t = rename(t, r'\bChead\b', 'SelfintChead', m)
    out[m] = t

    report = {}
    for m, t in out.items():
        t, kept, missing = filter_prints(t, HEADLINE[m], m)
        assert not missing, f'{m}: headline prints missing {missing}'
        t = HDR[m] + collapse(t)
        (DST / f'{m}.lean').write_text(t)
        report[m] = (len(t.split('\n')) - 1, kept)
    return report


if __name__ == '__main__':
    rep = build()
    for m, (n, kept) in rep.items():
        print(f'{m}: {n} lines; prints kept: {", ".join(kept) or "-"}')
    print()
    for e in log:
        print(' | '.join(e).replace('\n', '\\n')[:220])
