#!/usr/bin/env python3
"""decode BLC bits -> DB term; pretty print; normal-order normalizer with fuel."""
import sys
sys.setrecursionlimit(100000)

def decode(bits, i=0):
    if bits[i:i+2] == '00':
        t, j = decode(bits, i+2); return ('L', t), j
    if bits[i:i+2] == '01':
        f, j = decode(bits, i+2); a, k = decode(bits, j); return ('A', f, a), k
    n = 0
    while bits[i+n] == '1': n += 1
    assert bits[i+n] == '0'
    return ('V', n-1), i+n+1

def enc(t):
    if t[0]=='V': return '1'*(t[1]+1)+'0'
    if t[0]=='L': return '00'+enc(t[1])
    return '01'+enc(t[1])+enc(t[2])

def size(t):
    if t[0]=='V': return 2+t[1]
    if t[0]=='L': return 2+size(t[1])
    return 2+size(t[1])+size(t[2])

NAMES = "abcdefghijklmnopqrstuvwxyz"
def show(t, depth=0, prec=0, names=None):
    names = names or []
    if t[0]=='V':
        return names[t[1]] if t[1] < len(names) else f"#{t[1]}"
    if t[0]=='L':
        # collect binders
        vs=[]; b=t
        while b[0]=='L':
            v = NAMES[(len(names)+len(vs)) % 26] + ("" if len(names)+len(vs)<26 else str((len(names)+len(vs))//26))
            vs.append(v); b=b[1]
        s = "\\"+"\\".join(vs)+"."+show(b,0,0,list(reversed(vs))+names)
        return "("+s+")" if prec>0 else s
    s = show(t[1],0,1,names)+" "+show(t[2],0,2,names)
    return "("+s+")" if prec>1 else s

# --- normalizer (de Bruijn, normal order, fuel in beta steps) ---
def shift(d, c, t):
    if t[0]=='V': return ('V', t[1]+d) if t[1]>=c else t
    if t[0]=='L': return ('L', shift(d,c+1,t[1]))
    return ('A', shift(d,c,t[1]), shift(d,c,t[2]))
def subst(j, s, t):
    if t[0]=='V': return s if t[1]==j else t
    if t[0]=='L': return ('L', subst(j+1, shift(1,0,s), t[1]))
    return ('A', subst(j,s,t[1]), subst(j,s,t[2]))
def beta(f, a):
    return shift(-1,0,subst(0, shift(1,0,a), f[1]))

class Fuel(Exception): pass
def nf(t, fuel=[200000]):
    # whnf then recurse
    def whnf(t):
        while True:
            if t[0]=='A':
                f = whnf(t[1])
                if f[0]=='L':
                    fuel[0]-=1
                    if fuel[0]<0: raise Fuel()
                    t = beta(f, t[2]); continue
                return ('A', f, t[2])
            return t
    t = whnf(t)
    if t[0]=='L': return ('L', nf(t[1], fuel))
    if t[0]=='A': return ('A', nf(t[1], fuel), nf(t[2], fuel))
    return t

# --- BLC list helpers ---
TRUE  = ('L',('L',('V',1)))   # bit '0'
FALSE = ('L',('L',('V',0)))   # bit '1'
def pair(x,y): return ('L',('A',('A',('V',0), shift(1,0,x)), shift(1,0,y)))
def bitlist(bits, tail):
    t = tail
    for b in reversed(bits):
        t = pair(TRUE if b=='0' else FALSE, t)
    return t
