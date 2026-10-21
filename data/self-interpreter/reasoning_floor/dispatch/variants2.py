from lab import *
import db as dbp
ABS = r"(cont (\args \arg. exp (\zx \zy. zx arg (zy args))))"
APP = r"(intL (\exp2. cont (\args. exp args (exp2 args))))"
def knot(body): return rf"(\x. x x) (\x. (\intL. {body}) (x x))"
V = {}
# zero arm reads b2 from the duplicate copy u via bit0 (=K), parses r2 via r (\v. ...)
V["dup-replay inline"] = knot(rf"\cont. \list. list (\bit0. bit0 (\u \r. r (\v. intL (\exp. u bit0 {ABS} {APP}))) cont) (list list list)")
# same but with the second copy used for r2 and the first for b2
V["dup-replay inline 2"] = knot(rf"\cont. \list. list (\bit0. bit0 (\u \r. u (\v. intL (\exp. r bit0 {ABS} {APP}))) cont) (list list list)")
# let-bound next taking u and bit0
V["dup-replay let"] = knot(rf"\cont. (\next. \list. list (\bit0. bit0 (\u \r. r (next u bit0)) cont) (list list list)) (\u \b0 \v. intL (\exp. u b0 {ABS} {APP}))")
progs = [r'\1', r'\\1', r'\\2', r'(\1 1)(\\1)', r'\\\1 2 3', r'\(\1 1) 1']
for k, src in V.items():
    t = parse(src)
    res = [probe(t, dbp.parse(p)) for p in progs]
    print(f"{size(t):4d}  {k}  {res}")
