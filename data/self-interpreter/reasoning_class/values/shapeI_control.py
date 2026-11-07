from shapeI_check import close, F, K, cons, U, N_, E_, A_, app, nf
import lc
# positive controls (sizes > 26, outside the enumeration): must pass both laws
envlane = ("L",("L", ("A", ("V",0), ("L", ("A", ("A", ("V",0), ("L", ("V",4))), ("A", ("V",4), ("V",0)))))))
bit1K   = ("L",("L", ("A", ("V",0), ("L", ("A", ("A", ("V",0), ("A", ("V",6), ("V",3))), ("A", ("V",4), ("V",0)))))))  # uses bit1 as K: b (bit1 a) (e b)
for name, D in [("envlane34", envlane), ("bit1-K", bit1K)]:
    Dc = close(D)
    r1 = nf(app(Dc, F, cons(K, N_))); r2 = nf(app(Dc, F, U(1, N_)))
    print(name, lc.size(D), r1 == A_, r2 == nf(app(E_, F, U(0, N_))))
# negative control: raw 162 cell λb t. b a (t e) as a whole-prefix cell must fail
raw = ("L",("L", ("A", ("A", ("V",1), ("V",2)), ("A", ("V",0), ("V",3)))))
Dc = close(raw); print("raw24", lc.size(raw), nf(app(Dc, F, cons(K, N_))) == A_)
