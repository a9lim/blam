#!/usr/bin/env python3
import sys, os, tempfile
sys.path.insert(0,'.'); sys.path.insert(0,'/Users/a9lim/Work/blc/tools')
from lc import decode, enc, size, show, nf, Fuel, TRUE, FALSE, bitlist
import blcc

TESTS = ["0010","000010","0000110","000000110","010010000010","0000000011110","00011010","00000001011110100111010","000100011011010","0000011100111010"]
N = ('L',('L',('V',1)))

def check(E):
    CONT=('L',('A',('V',0), FALSE))
    for bits in TESTS:
        m,_=decode(bits,0)
        try:
            r = nf(('A',('A',E,CONT), bitlist(bits,N)),[20000])
            e = nf(('A',m,N),[20000])
        except Fuel: return f"FUEL@{bits}"
        except RecursionError: return f"REC@{bits}"
        if enc(r)!=enc(e): return f"WRONG@{bits}"
    return "ok"

def run(name, src, verify=True):
    fd,p = tempfile.mkstemp(suffix=".lam"); os.write(fd,src.encode()); os.close(fd)
    try:
        bits,db,best = blcc.compile_lam(p)
    except Exception as ex:
        print(f"  ERR   {name}: {type(ex).__name__}: {ex}"); return None
    finally: os.unlink(p)
    st = check(decode(bits,0)[0]) if verify else "-"
    print(f"  {len(bits):4d} {st:12s} {name}")
    return len(bits), bits
