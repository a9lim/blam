from lab import *
ABS = r"(cont (\args \arg. exp (\zx \zy. zx arg (zy args))))"
APP = r"(intL (\exp2. cont (\args. exp args (exp2 args))))"
def knot(body): return rf"(\x. x x) (\x. (\intL. {body}) (x x))"
V = {}
V["165"] = knot(rf"\cont. (\next. \list. list (\bit0. bit0 (\unused \r. r next) cont) (list list list)) (\bit1. intL (\exp. bit1 {ABS} {APP}))")
V["next inlined"] = knot(rf"\cont. \list. list (\bit0. bit0 (\unused \r. r (\bit1. intL (\exp. bit1 {ABS} {APP}))) cont) (list list list)")
V["next=\\r\\u. r B, Z=next"] = knot(rf"\cont. (\next. \list. list (\bit0. bit0 next cont) (list list list)) (\r \u. r (\bit1. intL (\exp. bit1 {ABS} {APP})))")
V["next=\\l. l B, Z=\\u.next"] = knot(rf"\cont. (\next. \list. list (\bit0. bit0 (\u. next) cont) (list list list)) (\l. l (\bit1. intL (\exp. bit1 {ABS} {APP})))")
V["select-first"] = knot(rf"\cont. (\next. \list. list (\bit0. bit0 (\unused \r. r next) cont) (list list list)) (\bit1. intL (bit1 (\exp. {ABS}) (\exp. {APP})))")
for k, src in V.items():
    t = parse(src)
    print(f"{size(t):4d}  {k}")
