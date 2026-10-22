from lab import *
import lc
def headstep(t):
    if t[0]=='V': return None
    if t[0]=='L':
        b = headstep(t[1]); return None if b is None else ('L', b)
    f, a = t[1], t[2]
    if f[0]=='L': return lc.beta(f, a)
    g = headstep(f); return None if g is None else ('A', g, a)
def count(t, target):
    n = 0
    while t != target:
        t = headstep(t); n += 1
        if t is None or n > 200: return None
    return n
FR=["c","j","N","r"]
P = cons(K, ("V",2)); S = cons(F, P); Z = cons(K, ("V",3))
wp = parse(r"\s. s (\a.a) (\u. c s (s s u)) j", FR)
print("wp Z ->", count(app(wp,Z), app(("V",3),("V",1))))
hnf = app(("V",0), S, app(S, S, ("V",1)))
print("wp S -> c S (S S j):", count(app(wp,S), hnf))
print("S S j -> N:", count(app(S,S,("V",1)), ("V",2)))
kap = ("L", app(("V",0), ("L",("V",2))))
print("kap S N -> c P N:", count(app(kap,S,("V",2)), app(("V",0),P,("V",2))))
print(wp)
