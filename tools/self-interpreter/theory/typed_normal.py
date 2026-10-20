#!/usr/bin/env python3
"""A simply typed, beta-normal interpreter gated by the first source bit.

This is one explicit construction, not a search.  Two casts uniformly embed
the existing interpreter in a simply typed normal form.  The actual source
bit supplies an ill-typed application when evaluation starts.
"""
from pathlib import Path
import json
import sys
import time

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
MACHINES = ROOT / "data/self-interpreter/machines"
RESULTS = ROOT / "data/self-interpreter/theory"
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery as b


def app(*ts):
    out = ts[0]
    for t in ts[1:]:
        out = ("A", out, t)
    return out


def v(n):
    return ("V", n)


def lam(t):
    return ("L", t)


I = lam(v(0))
K = lam(lam(v(1)))
PACKET = lam(app(v(0), I, I))


def cons(bit, rest):
    return lam(app(v(0), b.shift(bit, 1), b.shift(rest, 1)))


def cast_translation(t, depth=0):
    """Translate under two newly inserted binders [down, up].

    All source variables receive type o.
    up:o->o->o; down:(o->o)->o.
    """
    if t[0] == "V":
        return v(t[1] if t[1] < depth else t[1] + 2)
    if t[0] == "A":
        return app(v(depth + 1), cast_translation(t[1], depth),
                   cast_translation(t[2], depth))
    return app(v(depth), lam(cast_translation(t[1], depth + 1)))


def is_normal(t):
    if t[0] == "V":
        return True
    if t[0] == "L":
        return is_normal(t[1])
    return t[1][0] != "L" and is_normal(t[1]) and is_normal(t[2])


class Types:
    """Ordinary first-order simple-type inference, including an occurs check."""
    def __init__(self):
        self.next_id = 0
        self.assignments = {}

    def fresh(self):
        out = self.next_id
        self.next_id += 1
        return out

    def prune(self, t):
        if isinstance(t, int) and t in self.assignments:
            self.assignments[t] = self.prune(self.assignments[t])
            return self.assignments[t]
        return t

    def occurs(self, variable, t):
        t = self.prune(t)
        return variable == t if isinstance(t, int) else any(
            self.occurs(variable, a) for a in t)

    def unify(self, left, right):
        left, right = self.prune(left), self.prune(right)
        if left == right:
            return
        if isinstance(left, int):
            if self.occurs(left, right):
                raise ValueError("simple-type occurs check failed")
            self.assignments[left] = right
        elif isinstance(right, int):
            self.unify(right, left)
        else:
            self.unify(left[0], right[0])
            self.unify(left[1], right[1])

    def infer(self, term, context=()):
        if term[0] == "V":
            return context[term[1]]
        if term[0] == "L":
            arg = self.fresh()
            return (arg, self.infer(term[1], (arg,) + context))
        fn = self.infer(term[1], context)
        arg = self.infer(term[2], context)
        result = self.fresh()
        self.unify(fn, (arg, result))
        return result

    def render(self, t, names=None):
        names = {} if names is None else names
        t = self.prune(t)
        if isinstance(t, int):
            if t not in names:
                names[t] = f"a{len(names)}"
            return names[t]
        return f"({self.render(t[0], names)} -> {self.render(t[1], names)})"


def named_source(t, context=(), counter=None):
    counter = [0] if counter is None else counter
    if t[0] == "V":
        return context[t[1]]
    if t[0] == "L":
        name = f"x{counter[0]}"
        counter[0] += 1
        return f"(\\{name}. {named_source(t[1], (name,) + context, counter)})"
    return f"({named_source(t[1], context, counter)} {named_source(t[2], context, counter)})"


def main():
    start = time.monotonic()
    e0 = b.compile_lam((ROOT / "data/self-interpreter/machines/int165.lam").read_text())
    # At the T construction site the outer context is [rest, bit, stream, C].
    source_call = app(e0, v(3), cons(K, v(0)))
    translated = lam(lam(cast_translation(source_call)))
    handler = lam(lam(app(v(1), PACKET, v(0), translated)))
    interpreter = lam(lam(app(v(0), handler)))
    assert is_normal(interpreter)
    types = Types()
    principal = types.render(types.infer(interpreter))
    bits = b.enc(interpreter)
    (MACHINES / "int672_typed_normal.lam").write_text(named_source(interpreter) + "\n")
    (MACHINES / "int672_typed_normal.blc").write_text(bits + "\n")
    assert b.compile_lam(named_source(interpreter)) == interpreter
    # The typed two-cast expression becomes Omega after two affine I arguments.
    two_casts = b.compile_lam(
        r"\u\d.u (d (\x.u x x)) (d (\x.u x x))")
    witness_types = Types()
    witness_type = witness_types.render(witness_types.infer(two_casts))
    result = {
        "bits": len(bits),
        "beta_normal": True,
        "simply_typable": True,
        "principal_type": principal,
        "two_cast_witness_type": witness_type,
        "search_performed": False,
    }
    if "--battery" in sys.argv:
        ok, skipped, bad = b.check(interpreter, max_bits=18, threads=2)
        assert not bad
        result["battery"] = {"ok": ok, "skipped": skipped, "failures": bad}
        omega = b.compile_lam(r"(\x.x x) (\x.x x)")
        tail_selector = b.compile_lam(r"\value\rest.rest")
        probe = lam(app(b.shift(interpreter, 1), tail_selector,
                        b.bitlist(b.enc(omega), v(0))))
        assert b.normalize(b.enc(probe), 1 << 16) == "0010"
        result["divergent_source_suffix"] = True
    result["elapsed_seconds"] = round(time.monotonic() - start, 3)
    if "--battery" in sys.argv:
        (RESULTS / "typed_normal.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
