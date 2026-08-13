"""qALC gate-instance identity: executable falsification surface.

The proof is structural (docs/quantum-algebraic/instance-identity.md): in
the invocation ((p h) t), h and t are the only Gate leaves, at paths fa
and a.  Both paths have lambda-IAM level one.  On the reachable/W1
subtype a successful gate visit therefore has log exactly (i,), and
(gate kind, i) reconstructs its complete (path, log) copy address.

This instrument checks that conclusion on the canonical suite and on
all closed pure p through a requested size.  Gate 1 additionally repairs the
old raw-WF idempotent-recall collision with an exact predecessor-fibre epoch;
this instrument now freezes the former absent/present-frame pair as a
distinct-target control.

This is a standing Gate-1 battery component and a differential pin for the
future Rust reference implementation.
"""

from collections import Counter, defaultdict, deque
from dataclasses import replace
from fractions import Fraction
from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))

from conservation import terms_of
from kernel import Done, FRAME, Run, init, instance, is_alpha, step
from lam_iam import App, Gate, is_lp, level, subterm
from suite import CERTS, PROGRAMS, amp2, mulamp
from wf import cert_fibres, wf, wf7


GATE_PATH = {"h": ("f", "a"), "t": ("a",)}


def graph(term, cert, cap=20_000):
    """Structural reachable graph, truncating only after checking cap states."""
    s0 = next(iter(init(term)))
    seen, todo = {s0}, deque([s0])
    truncated = False
    while todo:
        s = todo.popleft()
        yield s
        if isinstance(s, Done) and s.tick >= 2:
            continue
        for *_, target in step(term, s, cert):
            if target not in seen:
                seen.add(target)
                todo.append(target)
                if len(seen) > cap:
                    truncated = True
                    todo.clear()
                    break
    return truncated


def check_graph(term, cert, cap=20_000):
    addresses = defaultdict(set)
    states = gate_states = keyed_states = 0
    truncated = False
    it = graph(term, cert, cap)
    while True:
        try:
            s = next(it)
        except StopIteration as stop:
            truncated = bool(stop.value)
            break
        states += 1
        if not isinstance(s, Run):
            continue
        node = subterm(term, s.path)
        if not isinstance(node, Gate):
            continue
        gate_states += 1
        assert s.path == GATE_PATH[node.name], (node.name, s.path)
        assert level(s.path) == 1
        i = instance(s)
        if i is None:
            continue
        keyed_states += 1
        assert is_lp(i)
        assert s.log == (i,), (s.path, s.log)
        addresses[(node.name, i)].add((s.path, s.log))
    assert all(len(a) == 1 for a in addresses.values())
    return states, gate_states, keyed_states, len(addresses), truncated


def canonical_suite():
    total = [0, 0, 0]
    keys = 0
    for name, term in PROGRAMS.items():
        s, g, k, nkeys, truncated = check_graph(term, CERTS.get(name))
        assert not truncated, name
        total[0] += s
        total[1] += g
        total[2] += k
        keys += nkeys
    print(
        "canonical: programs=%d states=%d gate_states=%d keyed=%d keys=%d"
        % (len(PROGRAMS), total[0], total[1], total[2], keys)
    )


def closed_program_sweep(max_size, cap=30_000):
    """Broad attack: address injectivity, lifecycle, and exact columns."""
    stats = Counter()
    guards = Counter()
    max_visits = 0
    guarded = {"refire", "key-alias", "frame-conflict", "alien-ticket"}
    for size in range(1, max_size + 1):
        for p in terms_of(size, 0):
            stats["programs"] += 1
            term = App(App(p, Gate("h")), Gate("t"))
            s0 = next(iter(init(term)))
            seen, todo = {s0}, deque([s0])
            incoming = defaultdict(list)
            call_keys, visits = set(), Counter()
            ncall = 0
            cut = False
            while todo:
                s = todo.popleft()
                if isinstance(s, Done) and s.tick >= 2:
                    continue
                successors = step(term, s, None)
                for sign, denominator, rule, target in successors:
                    incoming[target].append((s, amp2(sign, denominator)))
                    if rule in guarded:
                        guards[rule] += 1
                    if rule in {"call", "recall", "replay"}:
                        node = subterm(term, s.path)
                        i = instance(s)
                        assert isinstance(node, Gate) and i is not None
                        assert s.path == GATE_PATH[node.name]
                        assert s.log == (i,)
                        key = (node.name, i)
                        visits[key] += 1
                        if rule == "call":
                            ncall += 1
                            call_keys.add(key)
                            stats["calls"] += 1
                        else:
                            stats[rule] += 1
                    if target not in seen:
                        seen.add(target)
                        todo.append(target)
                        if len(seen) > cap:
                            cut = True
                            todo.clear()
                            break
            stats["states"] += len(seen)
            stats["completed"] += int(not cut)
            stats["truncated"] += int(cut)
            stats["truncated_with_calls"] += int(cut and bool(call_keys))
            stats["keys"] += len(call_keys)
            assert ncall == len(call_keys), "one fresh call per key"
            max_visits = max(max_visits, max(visits.values(), default=0))
            if cut:
                continue

            # Exact pairwise one-step column Gram on the completed graph.
            dots = {}
            for arrivals in incoming.values():
                for left in range(len(arrivals)):
                    for right in range(left + 1, len(arrivals)):
                        s1, a1 = arrivals[left]
                        s2, a2 = arrivals[right]
                        if s1 == s2:
                            continue
                        pair = ((s1, s2) if repr(s1) < repr(s2)
                                else (s2, s1))
                        product = mulamp(a1, a2)
                        old = dots.get(pair, (Fraction(0), Fraction(0)))
                        dots[pair] = (old[0] + product[0],
                                      old[1] + product[1])
            assert all(product == (0, 0) for product in dots.values())

    assert not guards
    assert not stats["truncated_with_calls"]
    print(
        "closed<=%d: programs=%d states=%d completed=%d truncated=%d "
        "calls=%d keys=%d recall=%d replay=%d max_visits=%d "
        "guard_hits=0 nonorthogonal_columns=0"
        % (max_size, stats["programs"], stats["states"],
           stats["completed"], stats["truncated"], stats["calls"],
           stats["keys"], stats["recall"], stats["replay"], max_visits)
    )


def raw_recall_boundary():
    """The old raw-WF collision is separated by the Gate-1 recall epoch."""
    term, cert = PROGRAMS["negative"], CERTS["negative"]
    fibres = cert_fibres(term, cert)
    reachable = set()
    base = clone = target = clone_target = None
    for s in graph(term, cert):
        reachable.add(s)
        successors = step(term, s, cert)
        if not isinstance(s, Run) or not successors or successors[0][2] != "recall":
            continue
        j = 0
        while j < len(s.tape) and s.tape[j] == "•":
            j += 1
        ticket = s.tape[j] if j < len(s.tape) else None
        if not is_alpha(ticket):
            continue
        frame = FRAME(ticket[1], ticket[2], ticket[3])
        if frame in s.rs:
            continue
        candidate = replace(s, rs=s.rs + (frame,))
        if wf(term, candidate) or wf7(term, cert, candidate, fibres):
            continue
        other = step(term, candidate, cert)
        if other and other[0][2] == "recall":
            base, clone = s, candidate
            target, clone_target = successors[0][3], other[0][3]
            break
    assert base is not None
    assert clone not in reachable
    assert wf(term, base) == wf(term, clone) == []
    assert wf7(term, cert, base, fibres) == wf7(term, cert, clone, fibres) == []
    assert target != clone_target
    assert target == step(term, base, cert)[0][3]
    assert clone_target == step(term, clone, cert)[0][3]
    print(
        "raw-recall-boundary: wf_pair=yes targets_disjoint=yes "
        "clone_reachable=no "
        "path=%s" % ("".join(base.path) or "epsilon")
    )


if __name__ == "__main__":
    bound = int(sys.argv[1]) if len(sys.argv) > 1 else 11
    canonical_suite()
    closed_program_sweep(bound)
    raw_recall_boundary()
    print("INSTANCE IDENTITY: PASS")
