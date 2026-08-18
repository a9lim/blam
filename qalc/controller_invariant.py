"""Physical controller inverses, marker safety, and residue necessity."""

from collections import Counter, deque

import readback as R
from gate1_programs import (MIXED_CERTIFICATES, MIXED_PROGRAMS,
                            NEUTRAL_CERTIFICATES, NEUTRAL_PROGRAMS,
                            STRESS_CERTIFICATES, STRESS_PROGRAMS)
from lam_iam import App, Lam, Var
from readback_checks import ReductionLimit, closed_terms, normal_form
from suite import CERTS, PROGRAMS


def output_paths(tree, path=()):
    yield path
    if isinstance(tree, R.NFLam):
        yield from output_paths(tree.body, path + ("b",))
    elif isinstance(tree, R.NFApp):
        yield from output_paths(tree.function, path + ("f",))
        yield from output_paths(tree.argument, path + ("a",))


def physical_pure_return_sources(term, stripped):
    """All accepted pure-RETURN sources above one residue-stripped target."""
    token, zipper = stripped.token, stripped.zipper
    sources = []
    for output_path in output_paths(zipper.tree):
        prefix = ((R.APP_BULLET,)
                  * R.leading_lambdas(R.at(zipper.tree, output_path)))
        parent_function = token.path + ("f",)
        child_path = token.path + ("a",)
        depth = R.leading_lambdas(R.at(zipper.tree, output_path)) + sum(
            len(mark.output_path) < len(output_path)
            and output_path[:len(mark.output_path)] == mark.output_path
            and output_path[len(mark.output_path)] == "b"
            for mark in zipper.binders)
        source = R.NFRun(
            R.Run(child_path, "U",
                  (R.RBL(parent_function, output_path, child_path),)
                  + token.log,
                  prefix + (R.RB(depth, output_path, child_path),
                            R.APP_BULLET) + token.tape,
                  token.vb, token.rs, token.ks),
            zipper)
        try:
            target = R._return_successor(source)
        except Exception:
            continue
        if target is None:
            continue
        logical = R.NFRun(target.token, R.Zipper(
            target.zipper.tree, target.zipper.cursor,
            target.zipper.binders, target.zipper.residues[:-1]))
        if logical == stripped:
            sources.append((output_path, source))
    return sources


def scan(term, certificate=None, cap=300_000):
    start = R.nf_init(term)
    seen, todo = {start}, deque([start])
    rules = Counter()
    pure_returns = 0
    w10 = w11 = 0
    while todo:
        source = todo.popleft()
        if isinstance(source, R.NFDone) and source.tick >= 2:
            continue
        if isinstance(source, R.NFRun):
            token, zipper = source.token, source.zipper
            try:
                code = R.subterm(term, token.path)
            except Exception:
                code = None
            identity = ("source", token.path, token.log)
            if (token.d == "D" and isinstance(code, R.Lam)
                    and token.tape and token.tape[0] == R.APP_BULLET
                    and any(mark.identity == identity
                            for mark in zipper.binders)):
                w10 += 1
        for _sign, _denominator, rule, target in R.nf_step(
                term, source, certificate):
            rules[rule] += 1
            if rule == "recall" and isinstance(target, R.NFRun):
                token2, zipper2 = target.token, target.zipper
                if R._enter_shape(token2, zipper2) is not None:
                    w11 += 1
            if rule == "enter" and R.enter_predecessor(term, target) != source:
                raise AssertionError(("enter inverse", source, target))
            if rule == "return" and isinstance(
                    target.zipper.residues[-1], R.PureScopeResidue):
                pure_returns += 1
                stripped = R.NFRun(target.token, R.Zipper(
                    target.zipper.tree, target.zipper.cursor,
                    target.zipper.binders, target.zipper.residues[:-1]))
                fibre = physical_pure_return_sources(term, stripped)
                wanted = target.zipper.residues[-1].output_path
                actual = [(path, candidate) for path, candidate in fibre
                          if path == wanted]
                if actual != [(wanted, source)]:
                    raise AssertionError(("pure RETURN exact fibre", fibre,
                                          source, target))
            if target not in seen:
                seen.add(target)
                todo.append(target)
        if len(seen) > cap:
            raise ReductionLimit("controller carrier cap")
    return rules, pure_returns, len(seen), w10, w11


def stripped_path_collision_fixture():
    """The path residue is forced: stripping it merges legal row sources."""
    term = Lam(App(Var(1), Var(1)))
    start = R.nf_init(term)
    seen, todo = {start}, deque([start])
    while todo:
        source = todo.popleft()
        for _sign, _denominator, rule, target in R.nf_step(term, source):
            if rule == "return":
                stripped = R.NFRun(target.token, R.Zipper(
                    target.zipper.tree, target.zipper.cursor,
                    target.zipper.binders, target.zipper.residues[:-1]))
                fibre = physical_pure_return_sources(term, stripped)
                if len(fibre) < 2:
                    raise AssertionError(("path residue not forced", fibre))
                return len(fibre)
            if target not in seen:
                seen.add(target)
                todo.append(target)
    raise AssertionError("RETURN fixture did not return")


if __name__ == "__main__":
    totals = Counter()
    returns = bases = pure = 0
    sectors = tuple((name, term, CERTS.get(name))
                    for name, term in PROGRAMS.items()) + tuple(
        (name, term, MIXED_CERTIFICATES[name])
        for name, term in MIXED_PROGRAMS.items()) + tuple(
        (name, term, NEUTRAL_CERTIFICATES[name])
        for name, term in NEUTRAL_PROGRAMS.items())
    for _name, term, certificate in sectors:
        rules, count, size, w10, w11 = scan(term, certificate)
        totals.update(rules)
        returns += count
        bases += size
        if w10 or w11:
            raise AssertionError(("W10/W11", _name, w10, w11))
    for _name, term in STRESS_PROGRAMS.items():
        rules, count, size, w10, w11 = scan(
            term, STRESS_CERTIFICATES[_name])
        totals.update(rules)
        returns += count
        bases += size
        if w10 or w11:
            raise AssertionError(("W10/W11", _name, w10, w11))
    for size in range(2, 12):
        for term in closed_terms(size):
            try:
                normal_form(term)
            except (ReductionLimit, RecursionError):
                continue
            rules, count, carrier_size, w10, w11 = scan(term, cap=30_000)
            totals.update(rules)
            returns += count
            bases += carrier_size
            pure += 1
            if w10 or w11:
                raise AssertionError(("W10/W11 pure", term, w10, w11))
    collision_size = stripped_path_collision_fixture()
    if not totals["enter"] or not totals["return"]:
        raise AssertionError(("controller rows uncovered", totals))
    print("QALC CONTROLLER INVARIANT: PASS "
          f"pure={pure} bases={bases} enter={totals['enter']} "
          f"return={totals['return']} pure_return={returns} "
          f"stripped_fibre={collision_size} W10=0 W11=0")
