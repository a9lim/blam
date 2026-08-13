"""Trusted executable core for direct reachable-recall certificates.

This module deliberately depends only on the qALC kernel.  Certificate
discovery and the rest of validation may import it, but it never imports them:
the RRI gate is therefore independent of Gram and of the algorithm that chose
the frozen boundary metadata.

The sole non-enumerated transition fact is the literal first row of
``kernel.step``: every ``Done(kind, residue, tick)`` advances only to
``Done(kind, residue, tick + 1)``.  The Lean ``TerminalCarrier`` theorem takes
that universal terminal-forward fact as an explicit premise.
"""

from __future__ import annotations

from collections import defaultdict, deque

from kernel import BULLET, Done, FRAME, Run, init, is_alpha, step


def successors(term, state, cert):
    """The exact structural successor row on the nonterminal carrier."""
    return tuple(step(term, state, cert))


def recall_view(state):
    """Return ``(full key, phase, erased projection)``, or ``None``.

    A valid state has at most one matching frame because ``rs`` is a set.  We
    nevertheless reject multiplicity here and delete exactly one frame, so the
    direct checker does not borrow that fact from WF or Gram.
    """
    if not isinstance(state, Run) or state.vb is not None:
        return None
    j = 0
    while j < len(state.tape) and state.tape[j] == BULLET:
        j += 1
    if j >= len(state.tape) or not is_alpha(state.tape[j]):
        return None
    alpha = state.tape[j]
    full_key = (alpha[1], alpha[2], alpha[3])
    frame = FRAME(*full_key)
    frame_indices = [index for index, item in enumerate(state.rs)
                     if item == frame]
    if len(frame_indices) > 1:
        raise ValueError("matching-frame-multiplicity")
    if frame_indices:
        index = frame_indices[0]
        reduced_rs = state.rs[:index] + state.rs[index + 1:]
    else:
        reduced_rs = state.rs
    projection = (
        state.path, state.d, state.log, state.tape, state.vb,
        reduced_rs, state.ks,
    )
    return full_key, bool(frame_indices), projection


def projected_collision_count(sources):
    """Count mixed absent/present phases in ``(key, projection)`` buckets."""
    buckets = defaultdict(set)
    collisions = 0
    for source in sources:
        view = recall_view(source)
        if view is None:
            continue
        key, present, projection = view
        bucket = buckets[(key, projection)]
        collisions += bool(bucket and present not in bucket)
        bucket.add(present)
    return collisions, len(buckets)


def recall_target_facts(entries):
    """Check actual target buckets and the target-to-projection factorization."""
    buckets = defaultdict(lambda: {"phases": set(), "projections": set()})
    projection_targets = defaultdict(set)
    for _source, view, target in entries:
        key, present, projection = view
        bucket = buckets[(key, target)]
        bucket["phases"].add(present)
        bucket["projections"].add(projection)
        projection_targets[(key, projection)].add(target)
    phase_collisions = sum(len(bucket["phases"]) > 1
                           for bucket in buckets.values())
    factorization_failures = (
        sum(len(bucket["projections"]) > 1 for bucket in buckets.values())
        + sum(len(targets) > 1 for targets in projection_targets.values())
    )
    return phase_collisions, factorization_failures, len(buckets)


def direct_certificate(term, cert, state_cap=100_000):
    """Check a complete finite nonterminal carrier and its recall matrix.

    ``Done`` targets are classified into the terminal sector rather than
    enumerated along their infinite tick tail.  Soundness therefore uses the
    explicit universal ``Done -> Done`` row theorem named in the module
    docstring.  Hitting ``state_cap`` is rejection, never a certificate.
    """
    initial_states = tuple(init(term))
    if len(initial_states) != 1:
        return {
            "certified": False,
            "reason": "non-singleton-initial-sector",
            "initial_states": len(initial_states),
        }
    initial = initial_states[0]
    if isinstance(initial, Done):
        return {"certified": False, "reason": "terminal-initial-state"}

    states = {initial}
    queue = deque([initial])
    edges = 0
    terminal_edges = 0
    recall_rows = []
    while queue:
        source = queue.popleft()
        rows = successors(term, source, cert)
        edges += len(rows)
        recall_rows_here = [row for row in rows if row[2] == "recall"]
        if recall_rows_here:
            if len(rows) != 1 or len(recall_rows_here) != 1:
                return {
                    "certified": False,
                    "reason": "ambiguous-recall-domain",
                    "states": len(states),
                }
            try:
                view = recall_view(source)
            except ValueError as exc:
                return {
                    "certified": False,
                    "reason": str(exc),
                    "states": len(states),
                }
            if view is None:
                return {"certified": False, "reason": "bad-recall-view"}
            recall_rows.append((source, view, recall_rows_here[0][3]))

        for _sign, _denominator, _rule, target in rows:
            if isinstance(target, Done):
                terminal_edges += 1
                continue
            if target in states:
                continue
            if len(states) >= state_cap:
                return {
                    "certified": False,
                    "reason": "state-cap",
                    "states": len(states),
                }
            states.add(target)
            queue.append(target)

    # Recompute every carrier row: search proposes S; this pass checks the
    # successor-covered premise independently of queue bookkeeping.
    closure_failures = []
    for source in states:
        for _sign, _denominator, rule, target in successors(
                term, source, cert):
            if not isinstance(target, Done) and target not in states:
                closure_failures.append((source, rule, target))

    witness_count, bucket_count = projected_collision_count(
        source for source, _view, _target in recall_rows)
    target_witnesses, factorization_failures, target_bucket_count = \
        recall_target_facts(recall_rows)

    passed = (not closure_failures and witness_count == 0
              and target_witnesses == 0 and factorization_failures == 0)
    return {
        "certified": passed,
        "reason": "pass" if passed
            else "closure" if closure_failures else "rri",
        "states": len(states),
        "edges": edges,
        "terminal_edges": terminal_edges,
        "recalls": len(recall_rows),
        "projection_buckets": bucket_count,
        "target_buckets": target_bucket_count,
        "closure_failures": len(closure_failures),
        "rri_witnesses": witness_count,
        "target_rri_witnesses": target_witnesses,
        "target_factorization_failures": factorization_failures,
        "terminal_forward_premise": "kernel.Done.tick",
    }
