import sys
sys.path.insert(0,'tools/self-interpreter'); sys.path.insert(0,'tools')
import battery, lc, db as dbparse
from battery import enc, shift, bitlist, normalize
E,_=lc.decode(open(sys.argv[1]).read().strip())
F=("L",("L",("V",0)))
def parse(s): return dbparse.parse(s)
progs={"Omega":"(\\1 1)(\\1 1)","lam Omega":"\\(\\1 1)(\\1 1)","Omega I":"(\\1 1)(\\1 1)(\\1)","I Omega":"(\\1)((\\1 1)(\\1 1))","K Omega":"\\\\(\\1 1)(\\1 1)","Omega3":"(\\1 1 1)(\\1 1 1)"}
for name,src in progs.items():
    M=parse(src)
    # \n. E F (<M> ++ n)  should normalize to \n. n
    t=("L",("A",("A",shift(E,1),shift(F,1)),bitlist(enc(M),("V",0))))
    out=normalize(enc(t),1<<20)
    print(name, "suffix ->", out, "(want", enc(("L",("V",0))),")")
