#!/usr/bin/env python3
"""Joint slot searches around the 168 with `blam selfint hole`.

Each sketch is the 168 written out with named binders, with one protocol
changed by hand and a hole `_` (and optionally a second hole `~`) where the
compensating fragment goes. The tool enumerates every fill and checks the
exact contract on 91 probe programs. docs/classical/self-interpreter/interpreter.md §4 ("Joint holes") records
the results.

    sketches.py [NAME...]      run every sketch (default) or the named ones

Needs target/release/blam built with `--features lab`.
"""
from pathlib import Path
import re
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[2]
BLAM = str(ROOT / "target" / "release" / "blam")


def parse(src):
    """Named λ source -> tree. `\\x y. b`, juxtaposition, parentheses;
    `_` and `~` are holes."""
    toks = re.findall(r"\\|\.|\(|\)|_|~|[A-Za-z][A-Za-z0-9']*", src)
    pos = 0

    def peek():
        return toks[pos] if pos < len(toks) else None

    def eat():
        nonlocal pos
        pos += 1
        return toks[pos - 1]

    def term():
        if peek() == "\\":
            eat()
            names = []
            while peek() != ".":
                tok = eat()
                if tok != "\\":
                    names.append(tok)
            eat()
            body = term()
            for n in reversed(names):
                body = ("L", n, body)
            return body
        f = atom()
        while peek() not in (None, ")"):
            f = ("A", f, term() if peek() == "\\" else atom())
        return f

    def atom():
        tok = eat()
        if tok == "(":
            x = term()
            assert eat() == ")"
            return x
        return ("H", tok) if tok in ("_", "~") else ("V", tok)

    t = term()
    assert peek() is None, toks[pos:]
    return t


def bits(t, env=()):
    if t[0] == "H":
        return t[1]
    if t[0] == "V":
        return "1" * (env.index(t[1]) + 1) + "0"
    if t[0] == "L":
        return "00" + bits(t[2], (t[1],) + env)
    return "01" + bits(t[1], env) + bits(t[2], env)


def frame(t, hole, env=()):
    if t[0] == "H":
        return env if t[1] == hole else None
    if t[0] == "V":
        return None
    if t[0] == "L":
        return frame(t[2], hole, (t[1],) + env)
    return frame(t[1], hole, env) or frame(t[2], hole, env)


def interp(var=r"cont list1 (list1 list1 list1)",
           cell=r"\zx zy. zx arg (zy args)",
           appv=r"\args. exp args (exp2 args)",
           nexth=None, handler=None):
    """The 168 with any part replaced."""
    abs_ = rf"cont (\args arg. exp ({cell}))"
    app = rf"intL (\exp2. cont ({appv}))"
    nexth = nexth or rf"\bit1. intL (\exp. bit1 ({abs_}) ({app}))"
    handler = handler or rf"\bit0 list1. bit0 (list1 next) ({var})"
    return (rf"(\x.x x)(\x.(\intL. \cont. (\next. \list. list ({handler}))"
            rf" ({nexth}))(x x))")


SEL = (r"\bit1. intL (bit1 (\exp. cont (\args arg. exp (\zx zy. zx arg (zy args))))"
       r" _)")
KREP = r"\b. b (\u. arg) (\r. r args)"
CELLS = {
    "leaky": r"\zx. zx arg (\zy. zy args)",
    "scott": r"\f. f arg args",
    "scott-flip": r"\f. f args arg",
    "leaky-flip": r"\zx. zx (\zy. zy args) arg",
    "selK": r"\zx. zx (zx arg) (\zy. zy args)",
    "cons-flip": r"\zx zy. zy arg (zx args)",
    "cons-flip2": r"\zx zy. zx (zy args) arg",
    "k-arg": r"\zx. zx arg",
    "args-first": r"\zx zy. zx args (zy arg)",
    "apply-args": r"\zx zy. zx arg zy args",
}
VALUES = ["list", "list1 list1", "list1 bit0", "bit0 list1", "list list1",
          "list1 list", "list1 next", "next", "list bit0", "bit0",
          "list1 cont", "list list"]

# name -> (source, flags)
SKETCHES = {"control: the cell": (interp(cell="_"), "--max-size 24 --must 1,2")}
for v in VALUES:
    SKETCHES[f"value {v} x cell"] = (
        interp(var=rf"cont ({v}) (list1 list1 list1)", cell="_"),
        "--max-size 25 --must 1,2")
for name, c in CELLS.items():
    SKETCHES[f"cell {name} x value"] = (
        interp(var=r"cont _ (list1 list1 list1)", cell=c), "--max-size 14")
    SKETCHES[f"cell {name} x VAR"] = (interp(var="_", cell=c), "--max-size 24 --must 5")
SKETCHES.update({
    "169 krep x APP value": (interp(cell=KREP, appv=r"\args. _"), "--max-size 17"),
    "169 krep x VAR": (interp(cell=KREP, var="_"), "--max-size 21 --must 5"),
    "169 eta-handler x VAR fn": (
        interp(handler=r"\bit0. bit0 (\l. l next) (_)"), "--max-size 21 --must 4"),
    "169 eta-handler x zero branch": (
        interp(handler=r"\bit0. bit0 (_) (\l. cont l (l l l))"), "--max-size 11"),
    "169 select-first x APP continuation": (interp(nexth=SEL), "--max-size 34 --must 3"),
    "joint value ~ x cell _": (
        interp(var=r"cont ~ (list1 list1 list1)", cell="_"),
        "--max-size 26 --max2 12 --max-sum 26"),
    "joint cell _ x APP body ~": (
        interp(cell="_", appv=r"\args. ~"),
        "--max-size 26 --must 1 --max2 19 --must2 2,3 --max-sum 41"),
    "joint APP body _ x VAR ~": (
        interp(appv=r"\args. _", var="~"),
        "--max-size 19 --must 2,3 --max2 24 --must2 5 --max-sum 39"),
})


def interp165(zero=r"\unused r. r next", skip="list list list", handler=None):
    """The 165 with part of its reader replaced (NEXT is the 168's)."""
    handler = handler or rf"\bit0. bit0 ({zero}) cont"
    nexth = (r"\bit1. intL (\exp. bit1 (cont (\args arg. exp (\zx zy. zx arg (zy args))))"
             r" (intL (\exp2. cont (\args. exp args (exp2 args)))))")
    return (rf"(\x.x x)(\x.(\intL. \cont. (\next. \list. list ({handler}) ({skip}))"
            rf" ({nexth}))(x x))")


# The 165's reader slots (interpreter.md §4, "The reader").
SKETCHES.update({
    "165 zero arm": (interp165(zero="_"), "--max-size 14"),
    "165 skip": (interp165(skip="_"), "--max-size 10"),
    "165 handler": (interp165(handler="_"), "--max-size 24"),
})


def run(name, src, flags):
    t = parse(src)
    b = bits(t)
    fixed = len(b) - b.count("_") - b.count("~")
    out = subprocess.run([BLAM, "selfint", "hole", b, *flags.split(), "--threads", "8"],
                         capture_output=True, text=True)
    lines = out.stdout.splitlines()
    if out.returncode or not lines or not lines[-1].startswith("total"):
        sys.exit(f"{name}: blam failed\n{out.stderr}")
    fills = [ln.split() for ln in lines if "SURVIVOR" in ln]
    print(f"{name}")
    print(f"    `_` frame [{' '.join(frame(t, '_'))}]" + (
        f", `~` frame [{' '.join(frame(t, '~'))}]" if "~" in b else ""))
    print(f"    {fixed} fixed bits; {flags}")
    print(f"    {lines[-1]}")
    for ln in lines:
        if "`~` =" in ln or "SURVIVOR" in ln:
            print("   ", ln.strip())
    if "~" not in b:
        for f in fills:
            print(f"      interpreter {fixed + int(f[1])} bits")
    sys.stdout.flush()


def main():
    names = sys.argv[1:] or list(SKETCHES)
    for name in names:
        src, flags = SKETCHES[name]
        run(name, src, flags)


if __name__ == "__main__":
    main()
