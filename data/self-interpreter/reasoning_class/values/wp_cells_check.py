#!/usr/bin/env python3
"""Check whole-prefix cells: U_n env_k = a_(k-n+1), env_k = D(a_k, env_(k-1)),
env_0 = z rigid; a_i, z, N rigid. Sizes in the ABS frame [a, e, ...]."""
from lab import *
FR = ["a3", "a2", "a1", "z", "N"]          # rigid, innermost first
idx = {n: i for i, n in enumerate(FR)}
cells = {
 "envlane34 λu r. r (λb. b (λd. a) (e b))": r"\a. \e. \u. \r. r (\b. b (\d. a) (e b))",
 "twodoor41 λu t. t (λb t'. b a (e b t'))": r"\a. \e. \u. \t. t (\b. \t2. b a (e b t2))",
 "junk49   λu t. t (λb t'. b a (t' (e u I)))": r"\a. \e. \u. \t. t (\b. \t2. b a (t2 (e u (\i. i))))",
}
raw = r"\a. \e. \b. \t. b a (t e)"
for name, src in cells.items():
    D = parse(src, FR)
    # env_3 = D a3 (D a2 (D a1 z)), whole-prefix U_n
    env = ("V", idx["z"])
    for a in ["a1", "a2", "a3"]:
        env = app(D, ("V", idx[a]), env)
    ok = all(eq(app(U(n, ("V", idx["N"])), env), ("V", idx[want]))
             for n, want in [(1, "a3"), (2, "a2"), (3, "a1")])
    body = D[1][1]                      # strip \a \e: size in frame [e, a, ...]
    print(f"{name}: lookups ok={ok}  cell bits (frame [a,e]) = {size(body)}")
Dr = parse(raw, FR); body = Dr[1][1]
env = ("V", idx["z"])
for a in ["a1", "a2", "a3"]: env = app(Dr, ("V", idx[a]), env)
print("raw cell with whole-prefix values (off by one): U_1 ->",
      [n for n in FR if eq(app(U(1, ("V", idx["N"])), env), ("V", idx[n]))])
print("raw cell size:", size(body))
