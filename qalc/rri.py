#!/usr/bin/env python3
"""Falsification instruments for reachable-recall injectivity (RRI).

These finite searches look for projected recall collisions and for the
certified-pop/riding-ticket obstruction to the proposed provenance proof.
Clean output is evidence only: it does not prove no-rider, cross-phase
separation, or RRI on the unbounded reachable machine.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict, deque
from collections.abc import Iterable
from dataclasses import replace

from certify import discover_total
from conservation import terms_of
from kernel import (
    Done,
    FIRST_FRAME_EPOCH,
    FRAME,
    Run,
    alpha_keys_live,
    classify_arrival,
    init,
    is_gam,
    recall_epoch,
    rs_insert,
    step,
)
from lam_iam import App, Gate
from rri_direct import recall_view, rri_facts
from suite import CERTS, PROGRAMS
from typecheck import fragment_check


def summary(label: str, counts: Counter, **extra: object) -> None:
    fields = [f"{key}={counts[key]}" for key in sorted(counts)]
    fields.extend(f"{key}={value}" for key, value in extra.items())
    print(label + ": " + " ".join(fields))


def successors(term, state, cert):
    if isinstance(state, Done) and state.tick >= 2:
        return []
    return step(term, state, cert)


def live_tail_log_keys(state: Run) -> set[tuple]:
    arrival = classify_arrival(state.tape)
    if arrival is None:
        return set()
    _, _, tail = arrival
    live = set()
    for entry in tail + state.log:
        live |= alpha_keys_live(entry)
    return live


def frame_keys(state: Run) -> set[tuple]:
    return {(frame[1], frame[2]) for frame in state.rs}


def popped_keys(state: Run, cert) -> set[tuple]:
    if cert is None or state.path not in cert:
        return set()
    selected = cert[state.path] if isinstance(cert, dict) else None
    keys = frame_keys(state)
    return keys if selected is None else keys & set(selected)


def canonical_suite() -> tuple[Counter, bool]:
    counts = Counter()
    for key in ("projected_collisions", "rider_fires"):
        counts[key] = 0
    failed = False
    for name, term in PROGRAMS.items():
        counts["programs"] += 1
        cert = CERTS.get(name)
        seen = set(init(term))
        queue = deque(seen)
        projections = {}
        while queue:
            source = queue.popleft()
            edges = successors(term, source, cert)
            if isinstance(source, Run) and edges:
                rule = edges[0][2]
                if rule == "fire-h":
                    counts["fires"] += 1
                    live = live_tail_log_keys(source)
                    if live:
                        counts["surviving_ticket_fires"] += 1
                    if live & popped_keys(source, cert):
                        counts["rider_fires"] += 1
                        failed = True
                elif rule == "replay":
                    counts["replays"] += 1
                elif rule == "recall":
                    _, present, projection = recall_view(source)
                    counts["recall_present" if present else "recall_absent"] += 1
                    if projection in projections and projections[projection] != present:
                        counts["projected_collisions"] += 1
                        failed = True
                    projections[projection] = present
            for *_, target in edges:
                if target not in seen:
                    seen.add(target)
                    queue.append(target)
        counts["states"] += len(seen)
    summary("canonical", counts, complete="true")
    return counts, failed


def epoch_controls() -> bool:
    """Raw recall pairs the canonical suite cannot separate.

    Every canonical source is alone in its projection bucket, so the suite
    does not distinguish a first-epoch-only frame match from the any-epoch
    view.  Clone `negative`'s reachable frame-absent recall source with a
    matching frame of a replay-return epoch: the view must read it present at
    the absent source's projection (one witness).  Two clones differing only
    in that erased epoch share projection and phase and land on distinct
    targets: no witness, since only target-to-projection is required.
    """
    term, cert = PROGRAMS["negative"], CERTS["negative"]
    seen = set(init(term))
    queue = deque(seen)
    absent = None
    while queue and absent is None:
        source = queue.popleft()
        edges = successors(term, source, cert)
        if isinstance(source, Run) and edges and edges[0][2] == "recall":
            absent = source
        for *_, target in edges:
            if target not in seen:
                seen.add(target)
                queue.append(target)
    key, present, _ = recall_view(absent)

    def framed(epoch):
        return replace(absent, rs=rs_insert(absent.rs, FRAME(*key, epoch)))

    def entries(states):
        out = []
        for state in states:
            ((_sign, _denominator, rule, target),) = step(term, state, cert)
            assert rule == "recall", rule
            out.append((recall_view(state), target))
        return out

    replayed = framed(recall_epoch(FIRST_FRAME_EPOCH, FIRST_FRAME_EPOCH))
    rider = framed(recall_epoch(FIRST_FRAME_EPOCH, None))
    phase_pair = rri_facts(entries([absent, replayed]))
    epoch_pair = entries([replayed, rider])
    ok = (not present and phase_pair[:3] == (1, 0, 0)
          and rri_facts(epoch_pair)[:3] == (0, 0, 0)
          and epoch_pair[0][1] != epoch_pair[1][1])
    print("epoch-controls: absent/replay-epoch witness=%d "
          "epoch-only witnesses=%d distinct_targets=%s"
          % (phase_pair[0], sum(rri_facts(epoch_pair)[:3]),
             "yes" if epoch_pair[0][1] != epoch_pair[1][1] else "no"))
    return ok


def typed_programs(max_size: int) -> Iterable[tuple[int, object, object]]:
    for size in range(1, max_size + 1):
        for program in terms_of(size, 0):
            term = App(App(program, Gate("h")), Gate("t"))
            fragment = fragment_check(term)
            if fragment["typable"] and fragment["h_only"]:
                yield size, program, term


def explore(term, cert, cap: int) -> tuple[set, bool, bool]:
    seen = set(init(term))
    queue = deque(seen)
    has_fire = False
    truncated = False
    while queue:
        source = queue.popleft()
        edges = successors(term, source, cert)
        if isinstance(source, Run) and edges and edges[0][2] == "fire-h":
            has_fire = True
        for *_, target in edges:
            if target in seen:
                continue
            seen.add(target)
            if len(seen) > cap:
                truncated = True
                queue.clear()
                break
            queue.append(target)
    return seen, has_fire, truncated


def typed_pipeline(max_size: int, cap: int) -> tuple[Counter, bool]:
    counts = Counter()
    for key in (
        "recall_absent", "recall_present", "replays", "rider_fires",
        "surviving_ticket_fires",
    ):
        counts[key] = 0
    failed = False
    for _, _, term in typed_programs(max_size):
        counts["programs"] += 1
        _, has_fire, plain_cut = explore(term, None, cap)
        counts["plain_truncated"] += plain_cut
        cert = discover_total(term, state_cap=cap) if has_fire and not plain_cut else None
        counts["cert_nonempty"] += bool(cert)
        seen = set(init(term))
        queue = deque(seen)
        cut = False
        while queue:
            source = queue.popleft()
            edges = successors(term, source, cert)
            if isinstance(source, Run) and edges:
                rule = edges[0][2]
                if rule == "fire-h":
                    counts["fires"] += 1
                    live = live_tail_log_keys(source)
                    if live:
                        counts["surviving_ticket_fires"] += 1
                    if live & popped_keys(source, cert):
                        counts["rider_fires"] += 1
                        failed = True
                elif rule == "replay":
                    counts["replays"] += 1
                elif rule == "recall":
                    _, present, _ = recall_view(source)
                    counts["recall_present" if present else "recall_absent"] += 1
            for *_, target in edges:
                if target in seen:
                    continue
                seen.add(target)
                if len(seen) > cap:
                    cut = True
                    queue.clear()
                    break
                queue.append(target)
        counts["states"] += len(seen)
        counts["truncated"] += cut
    summary(
        f"typed<={max_size}", counts,
        complete=str(not counts["plain_truncated"] and not counts["truncated"]).lower(),
    )
    return counts, failed


def arbitrary_cert_overapprox(max_size: int, cap: int) -> tuple[Counter, bool]:
    counts = Counter()
    counts["rider_sources"] = 0
    failed = False
    max_keys = 0
    for _, _, term in typed_programs(max_size):
        counts["programs"] += 1
        seen = set(init(term))
        queue = deque(seen)
        cut = False
        while queue:
            source = queue.popleft()
            choices = [None]
            if (
                isinstance(source, Run)
                and source.d == "U"
                and source.path
                and source.path[-1] == "a"
                and source.log
                and is_gam(source.log[0])
                and classify_arrival(source.tape) is not None
            ):
                counts["fire_boundaries"] += 1
                bit, _, _ = classify_arrival(source.tape)
                keys = sorted(
                    {(frame[1], frame[2]) for frame in source.rs if frame[3] == bit},
                    key=repr,
                )
                live = live_tail_log_keys(source)
                if live & set(keys):
                    counts["rider_sources"] += 1
                    failed = True
                max_keys = max(max_keys, len(keys))
                choices.extend(
                    {
                        source.path: frozenset(
                            keys[index]
                            for index in range(len(keys))
                            if mask >> index & 1
                        )
                    }
                    for mask in range(1 << len(keys))
                )
            for cert in choices:
                for *_, target in successors(term, source, cert):
                    if target in seen:
                        continue
                    seen.add(target)
                    if len(seen) > cap:
                        cut = True
                        queue.clear()
                        break
                    queue.append(target)
                if cut:
                    break
        counts["states"] += len(seen)
        counts["truncated"] += cut
    summary(
        f"overapprox<={max_size}", counts,
        max_bit_compatible_frame_keys=max_keys,
        complete=str(not counts["truncated"]).lower(),
    )
    return counts, failed


def all_closed(max_size: int, cap: int) -> tuple[Counter, bool]:
    counts = Counter()
    counts["projected_collisions"] = 0
    failed = False
    ancestry_bad = 0
    for size in range(1, max_size + 1):
        for program in terms_of(size, 0):
            counts["programs"] += 1
            term = App(App(program, Gate("h")), Gate("t"))
            start = next(iter(init(term)))
            seen = {start}
            queue = deque([start])
            reverse = defaultdict(set)
            recalls = []
            projections = {}
            cut = False
            while queue:
                source = queue.popleft()
                edges = successors(term, source, None)
                if isinstance(source, Run) and edges and edges[0][2] == "recall":
                    key, present, projection = recall_view(source)
                    if projection in projections and projections[projection] != present:
                        counts["projected_collisions"] += 1
                        failed = True
                    projections[projection] = present
                    recalls.append((source, key, present))
                for *_, target in edges:
                    reverse[target].add(source)
                    if target in seen:
                        continue
                    seen.add(target)
                    if len(seen) > cap:
                        cut = True
                        queue.clear()
                        break
                    queue.append(target)
            counts["states"] += len(seen)
            counts["truncated"] += cut
            counts["truncated_with_recall"] += cut and bool(recalls)
            absent = [record for record in recalls if not record[2]]
            for source, key, present in recalls:
                counts["recall_present" if present else "recall_absent"] += 1
                if not present:
                    continue
                ancestors = set()
                ancestors_queue = deque([source])
                while ancestors_queue:
                    target = ancestors_queue.popleft()
                    for predecessor in reverse[target]:
                        if predecessor not in ancestors:
                            ancestors.add(predecessor)
                            ancestors_queue.append(predecessor)
                matching = [
                    record for record in absent
                    if record[1] == key and record[0] in ancestors
                ]
                if len(matching) == 1:
                    counts["present_unique_absent_ancestor"] += 1
                else:
                    ancestry_bad += 1
    summary(
        f"closed<={max_size}", counts,
        ancestry_bad=ancestry_bad,
        complete=str(not counts["truncated"]).lower(),
    )
    return counts, failed or bool(ancestry_bad)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "mode", choices=("canonical", "typed", "overapprox", "closed"),
        nargs="?", default="canonical",
    )
    parser.add_argument("--max-size", type=int, default=12)
    parser.add_argument("--cap", type=int, default=30_000)
    args = parser.parse_args()
    if args.max_size < 1 or args.cap < 1:
        parser.error("--max-size and --cap must be positive")

    if args.mode == "canonical":
        _, failed = canonical_suite()
        failed = not epoch_controls() or failed
    elif args.mode == "typed":
        _, failed = typed_pipeline(args.max_size, args.cap)
    elif args.mode == "overapprox":
        _, failed = arbitrary_cert_overapprox(args.max_size, args.cap)
    else:
        _, failed = all_closed(args.max_size, args.cap)

    if failed:
        print("RRI ATTACK: FAIL")
        return 1
    print("RRI ATTACK: PASS (finite falsification only)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
