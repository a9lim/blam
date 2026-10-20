#!/usr/bin/env python3
"""Fixed head-reduction accounting checks; no candidate enumeration.

The universal head-decomposition argument is handwritten. These checks only
verify explicit compression examples and the existing 165's head form.
"""
from pathlib import Path
import json
import sys
import time

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools" / "self-interpreter"))
import battery
import lc


def head_step(term):
    """One head contraction, including beneath leading lambdas."""
    if term[0] == "L":
        body = head_step(term[1])
        return None if body is None else ("L", body)
    if term[0] == "A":
        if term[1][0] == "L":
            return lc.beta(term[1], term[2])
        function = head_step(term[1])
        return None if function is None else ("A", function, term[2])
    return None


def occurrences(term, index=0):
    if term[0] == "V":
        return int(term[1] == index)
    if term[0] == "L":
        return occurrences(term[1], index + 1)
    return occurrences(term[1], index) + occurrences(term[2], index)


def affine(term):
    if term[0] == "V":
        return True
    if term[0] == "L":
        return occurrences(term[1]) <= 1 and affine(term[1])
    return affine(term[1]) and affine(term[2])


def nonlinear(term):
    if term[0] == "V":
        return 0
    if term[0] == "L":
        return int(occurrences(term[1]) > 1) + nonlinear(term[1])
    return nonlinear(term[1]) + nonlinear(term[2])


def free_leaves(term, cutoff=0):
    if term[0] == "V":
        return int(term[1] >= cutoff)
    if term[0] == "L":
        return free_leaves(term[1], cutoff + 1)
    return free_leaves(term[1], cutoff) + free_leaves(term[2], cutoff)


def occurrence_depths(term, depth=0):
    if term[0] == "V":
        return [depth] if term[1] == depth else []
    if term[0] == "L":
        return occurrence_depths(term[1], depth + 1)
    return occurrence_depths(term[1], depth) + occurrence_depths(term[2], depth)


def redex_costs(term, path="root"):
    """Visit only existing source redexes; do not generate other terms."""
    rows = []
    if term[0] == "A":
        if term[1][0] == "L":
            body, argument = term[1][1], term[2]
            depths = occurrence_depths(body)
            k, d = len(depths), sum(depths)
            f, g = free_leaves(argument), free_leaves(body, 1)
            argument_bits = lc.size(argument)
            delta = (k - 1) * argument_bits + (f - 1) * d - 2 * k - 4 - g
            assert delta == lc.size(lc.beta(term[1], argument)) - lc.size(term)
            rows.append(dict(path=path, occurrences=k, total_depth=d,
                             argument_free_leaves=f, outer_body_leaves=g,
                             argument_bits=argument_bits, delta_bits=delta))
        rows += redex_costs(term[1], path + ".function")
        rows += redex_costs(term[2], path + ".argument")
    elif term[0] == "L":
        rows += redex_costs(term[1], path + ".body")
    return rows


def main():
    start = time.monotonic()
    examples = []
    for n in (0, 7):
        binders = "".join("\\a" + str(i) for i in range(n))
        body = binders + ".x" if n else "x"
        source = battery.compile_lam("\\r\\q.(\\x." + body + ")(r q)")
        result = head_step(source)
        assert result is not None and head_step(result) is None
        assert affine(source) and affine(result)
        assert lc.size(source) == 3 * n + 17
        assert lc.size(result) == 4 * n + 11
        examples.append(dict(n=n, source_bits=lc.size(source),
                             head_form_bits=lc.size(result), affine=True))

    # A syntax counterexample to pricing residual nonlinear binders as
    # independent source code. This term is explicitly NOT an interpreter.
    shared = "\\y.c (y s) (y (\\z.z))"
    sharing_source = battery.compile_lam(
        "\\c\\s.(\\x.x (x x)) (" + shared + ")")
    sharing_head = head_step(head_step(sharing_source))
    expected = battery.compile_lam(
        "\\c\\s.c (((" + shared + ") (" + shared + ")) s) "
        "(((" + shared + ") (" + shared + ")) (\\z.z))")
    assert sharing_head == expected and head_step(sharing_head) is None
    assert lc.size(sharing_source) == 43 and lc.size(sharing_head) == 125
    assert nonlinear(sharing_source) == 2 and nonlinear(sharing_head) == 6
    sharing_body = sharing_head[1][1]
    left, right = sharing_body[1][2], sharing_body[2]
    assert nonlinear(left) == nonlinear(right) == 2
    # The value payload retains a rigid continuation head after one more
    # head step, whereas a decoded value must be an abstraction.
    value_head = head_step(left)
    assert value_head is not None and head_step(value_head) is None
    spine = value_head
    while spine[0] == "A":
        spine = spine[1]
    assert spine == ("V", 1)

    source = battery.compile_lam(
        (ROOT / "data/self-interpreter/machines/int165.lam").read_text())
    assert lc.enc(source) == (
        ROOT / "data/self-interpreter/machines/int165.blc").read_text().strip()
    assert lc.size(source) == 165
    costs = redex_costs(source)
    assert [row["delta_bits"] for row in costs] == [147, 3, 5]
    result = source
    contractions = 0
    for _ in range(32):
        next_term = head_step(result)
        if next_term is None:
            break
        result = next_term
        contractions += 1
    else:
        raise AssertionError("fixed head-reduction budget exhausted")
    assert contractions == 4 and lc.size(result) == 755
    body = result
    leading = 0
    while body[0] == "L":
        leading += 1
        body = body[1]
    arguments = 0
    while body[0] == "A":
        arguments += 1
        body = body[1]
    assert (leading, body, arguments) == (2, ("V", 0), 2)
    report = dict(
        affine_examples=examples,
        sharing_counterexample=dict(
            source_bits=43, head_form_bits=125, head_contractions=2,
            source_nonlinear=2, head_form_nonlinear=6,
            payload_nonlinear=[2, 2], is_interpreter=False),
        int165=dict(source_bits=165, head_form_bits=755,
                    head_contractions=contractions, leading_lambdas=leading,
                    head="stream", head_arguments=arguments,
                    source_redex_costs=costs),
        seconds=round(time.monotonic() - start, 4),
    )
    (ROOT / "data/self-interpreter/theory/head_decomposition.json").write_text(
        json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
