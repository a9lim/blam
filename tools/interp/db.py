#!/usr/bin/env python3
"""Parse Tromp's 1-based de Bruijn notation ( \\M , juxtaposition, integers ) -> bits."""
import sys, re

def parse(s):
    i = 0
    def skipws():
        nonlocal i
        while i < len(s) and s[i] in ' \t\n': i += 1
    def atom():
        nonlocal i
        skipws()
        if i >= len(s): return None
        c = s[i]
        if c == '(':
            i += 1
            e = expr()
            skipws()
            assert s[i] == ')', (i, s[i:i+20])
            i += 1
            return e
        if c == '\\':
            i += 1
            return ('L', expr())
        if c.isdigit():
            j = i
            while i < len(s) and s[i].isdigit(): i += 1
            return ('V', int(s[j:i]) - 1)   # 1-based -> 0-based
        return None
    def expr():
        nonlocal i
        e = atom()
        assert e is not None, (i, s[i:i+20])
        while True:
            save = i
            skipws()
            if i < len(s) and s[i] == ')': i = save; break
            a = atom()
            if a is None: i = save; break
            e = ('A', e, a)
        return e
    e = expr()
    skipws()
    assert i == len(s), (i, s[i:])
    return e

def enc(t):
    if t[0] == 'V': return '1'*(t[1]+1) + '0'
    if t[0] == 'L': return '00' + enc(t[1])
    return '01' + enc(t[1]) + enc(t[2])

def show(t, d=0):
    if t[0]=='V': return str(t[1]+1)
    if t[0]=='L': return ('(' if d>0 else '')+'\\'+show(t[1],0)+(')' if d>0 else '')
    return ('(' if d>1 else '')+show(t[1],1)+' '+show(t[2],2)+(')' if d>1 else '')

if __name__ == '__main__':
    for line in sys.argv[1:]:
        t = parse(line)
        b = enc(t)
        print(f"{len(b):5d}  {show(t)}\n       {b}")
