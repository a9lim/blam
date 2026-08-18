"""Exhaust the composed machine's single typed application-pop surface."""

from collections import Counter, deque

from kernel import BULLET
from gate1_programs import (MIXED_CERTIFICATES, MIXED_PROGRAMS,
                            NEUTRAL_CERTIFICATES, NEUTRAL_PROGRAMS,
                            STRESS_CERTIFICATES, STRESS_PROGRAMS)
from readback import (APP_BULLET, NFDone, NFRun, _composed_token,
                      _kernel_token, nf_init, nf_step)
from readback_checks import ReductionLimit, closed_terms, normal_form
from suite import CERTS, PROGRAMS


def b3_predecessor(target):
    """The global inverse of the only application-pop row."""
    if not isinstance(target, NFRun):
        raise ValueError(target)
    token = target.token
    source_token = type(token)(
        token.path + ("f",), "U", token.log,
        (APP_BULLET,) + token.tape, token.vb, token.rs, token.ks)
    return NFRun(source_token, target.zipper)


def scan(term, certificate=None, cap=300_000):
    start = nf_init(term)
    seen, todo = {start}, deque([start])
    rules = Counter()
    inverses = 0
    target_sources = {}
    collisions = []
    incoming = {}

    def has_plain(value):
        if value == BULLET:
            return True
        return isinstance(value, tuple) and any(map(has_plain, value))

    def has_application(value):
        if value == APP_BULLET:
            return True
        return isinstance(value, tuple) and any(map(has_application, value))

    while todo:
        source = todo.popleft()
        if isinstance(source, NFDone) and source.tick >= 2:
            continue
        if isinstance(source, NFRun) and any(has_plain(value) for value in (
                source.token.log, source.token.tape, source.token.vb,
                source.token.rs, source.token.ks)):
            raise AssertionError(("plain marker escaped kernel", source))
        if isinstance(source, NFRun) and any(has_application(value) for value in (
                source.token.log, source.token.vb, source.token.rs,
                source.token.ks)):
            raise AssertionError(("application marker escaped tape", source))
        if (isinstance(source, NFRun)
                and any(has_application(entry) and entry != APP_BULLET
                        for entry in source.token.tape)):
            raise AssertionError(("nested application marker", source))
        if (isinstance(source, NFRun)
                and _composed_token(_kernel_token(source.token))
                != source.token):
            raise AssertionError(("marker adapter inverse", source))
        for _sign, _denominator, rule, target in nf_step(
                term, source, certificate):
            rules[rule] += 1
            incoming.setdefault(target, []).append((source, rule))
            if rule == "b3":
                inverses += 1
                if source.token.tape[0] != APP_BULLET:
                    raise AssertionError(("b3 marker phase", source, target))
                if b3_predecessor(target) != source:
                    raise AssertionError(("b3 inverse", source, target))
                prior = target_sources.setdefault(target, source)
                if prior != source:
                    collisions.append((prior, source, target))
            if rule in ("b3-skip", "b3-rb", "b4-skip"):
                raise AssertionError(("retired application row", rule))
            if target not in seen:
                seen.add(target)
                todo.append(target)
        if len(seen) > cap:
            raise ReductionLimit("application carrier cap")
    for target, rows in incoming.items():
        sources = {source for source, _rule in rows}
        if (len(sources) > 1
                and any(rule != "fire-h" for _source, rule in rows)):
            collisions.append(("range", tuple(rows), target))
    return rules, inverses, collisions, len(seen)


if __name__ == "__main__":
    total_rules = Counter()
    total_inverses = bases = pure = 0
    collisions = []
    for name, term in PROGRAMS.items():
        rules, inverses, bad, count = scan(term, CERTS.get(name))
        total_rules.update(rules)
        total_inverses += inverses
        bases += count
        collisions.extend((name,) + collision for collision in bad)
    for name, term in MIXED_PROGRAMS.items():
        rules, inverses, bad, count = scan(
            term, MIXED_CERTIFICATES[name])
        total_rules.update(rules)
        total_inverses += inverses
        bases += count
        collisions.extend((name,) + collision for collision in bad)
    for name, term in STRESS_PROGRAMS.items():
        rules, inverses, bad, count = scan(
            term, STRESS_CERTIFICATES[name])
        total_rules.update(rules)
        total_inverses += inverses
        bases += count
        collisions.extend((name,) + collision for collision in bad)
    for name, term in NEUTRAL_PROGRAMS.items():
        rules, inverses, bad, count = scan(
            term, NEUTRAL_CERTIFICATES[name])
        total_rules.update(rules)
        total_inverses += inverses
        bases += count
        collisions.extend((name,) + collision for collision in bad)
    for size in range(2, 12):
        for term in closed_terms(size):
            try:
                normal_form(term)
            except (ReductionLimit, RecursionError):
                continue
            rules, inverses, bad, count = scan(term, cap=30_000)
            total_rules.update(rules)
            total_inverses += inverses
            bases += count
            pure += 1
            collisions.extend(("pure",) + collision for collision in bad)
    if collisions:
        raise AssertionError(collisions[:3])
    print(f"QALC APPLICATION MARKER: PASS pure={pure} bases={bases} "
          f"b3_inverses={total_inverses} collisions=0")
