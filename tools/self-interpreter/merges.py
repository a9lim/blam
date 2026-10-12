#!/usr/bin/env python3
"""Re-measure the operation-level variants recorded in design.md.

Each variant is written out in full, compiled without the optimizer, sized,
and run through battery.py's exact contract check.  A negative control (APP
with its operands swapped) must fail.

    merges.py [--max-bits N]
"""
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
from battery import check, compile_lam, enc

ABS = r"(cont (\args\arg.exp (\zx\zy. zx arg (zy args))))"
APP = r"(intL (\exp2.cont (\args.exp args (exp2 args))))"
VAR = r"(cont list1 (list1 list1 list1))"


def knot(body):
    return rf"(\x. x x) (\x. (\intL. {body}) (x x))"


INT168 = knot(rf"""\cont.
   (\next. \list.list (\bit0\list1.bit0 (list1 next) {VAR}))
   (\bit1.intL (\exp.bit1 {ABS} {APP}))""")

VARIANTS = [
    # name, source, universal-machine contract?, expected bits, should pass
    ("168 (tromp/AIT 2cfa384)", INT168, False, 168, True),
    ("control: APP operands swapped", INT168.replace("exp args (exp2 args)",
                                                     "exp2 args (exp args)"),
     False, 168, False),
    ("select ABS/APP continuation before the first parse", knot(rf"""\cont.
   (\next. \list.list (\bit0\list1.bit0 (list1 next) {VAR}))
   (\bit1.intL (bit1 (\exp. {ABS}) (\exp. {APP})))"""), False, 169, True),
    ("eta the dispatch handler over list1", knot(rf"""\cont.
   (\next. \list.list (\bit0.bit0 (\l. l next) (\l. cont l (l l l))))
   (\bit1.intL (\exp.bit1 {ABS} {APP}))"""), False, 169, True),
    ("universal machine, non-strict (intL dbl)", f"({INT168}) (\\x. x x)",
     True, 178, True),
    ("universal machine, parse under binder (direct values, ABS reparses)",
     knot(r"""\env\cont.
   (\next. \list.list (\bit0\list1.bit0 (list1 next)
                         (cont (list1 env) (list1 list1 list1))))
   (\bit1\l2. intL env (\f. bit1 (cont (\arg. intL (\zx\zy. zx arg (zy env)) bit1 l2))
                                 (intL env (\a. cont (f a)))) l2)""")
     + r" (\x.x) (\x.x)", True, 226, True),
    # The last push (design.md): the nearest correct variants, and the bare
    # leaky cell as a second negative control.
    ("control: bare leaky cell", INT168.replace(
        r"\zx\zy. zx arg (zy args)", r"\zx. zx arg (\zy. zy args)"),
     False, 166, False),
    ("leaky cell repaired by a constant thunk", INT168.replace(
        r"\zx\zy. zx arg (zy args)", r"\zx. zx (\u. arg) (\zy. zy args)"),
     False, 169, True),
    ("leaky cell repaired by its own selector", INT168.replace(
        r"\zx\zy. zx arg (zy args)", r"\zx. zx (zx arg) (\zy. zy args)"),
     False, 170, True),
    ("share ABS's return and APP's second parse: (bit1 cont intL)",
     knot(rf"""\cont.
   (\next. \list.list (\bit0\list1.bit0 (list1 next) {VAR}))
   (\bit1.intL (\exp. (bit1 cont intL) (\y. bit1
      (\arg. exp (\zx\zy. zx arg (zy y)))
      (cont (\args. exp args (y args))))))"""), False, 172, True),
    ("optional second parse, no-input parser \\k. k k",
     knot(rf"""\cont. \list.list (\bit0\list1.bit0
   (list1 (\bit1.intL (\exp. bit1 (\k. k k) intL (\exp2. cont (\args. bit1
      (\arg. exp (\zx\zy. zx arg (zy args))) (exp args (exp2 args)))))))
   {VAR})"""), False, 177, True),
    ("function environment, variable value \\e. e list1",
     knot(r"""\cont.
   (\next. \list.list (\bit0\list1.bit0 (list1 next)
                         (cont (\e. e list1) (list1 list1 list1))))
   (\bit1.intL (\exp.bit1 (cont (\args\arg.exp (\s. s (\b. b (\u. arg) args))))
                          (intL (\exp2.cont (\args.exp args (exp2 args))))))"""),
     False, 177, True),
]


def main():
    max_bits = int(sys.argv[sys.argv.index("--max-bits") + 1]) \
        if "--max-bits" in sys.argv else 18
    good = True
    for name, src, uni, want, should_pass in VARIANTS:
        E = compile_lam(src)
        ok, skip, bad = check(E, uni, max_bits)
        bits = len(enc(E))
        verdict = "pass" if not bad else f"FAIL x{len(bad)}"
        flag = "" if (bits == want and (not bad) == should_pass) else "  <-- UNEXPECTED"
        good &= not flag
        print(f"{bits:4d}  {verdict:9s} ok={ok:<4d} {name}{flag}")
    sys.exit(0 if good else 1)


if __name__ == "__main__":
    main()
