"""Emit the 4,672 fixed sources; no layout or reduction discovery."""
import sys
sys.dont_write_bytecode=True
import json
from size39 import HERE,lc

def expr(t):
    if t[0]=='V':return f'(.var {t[1]})'
    if t[0]=='L':return f'(.lam {expr(t[1])})'
    return f'(.app {expr(t[1])} {expr(t[2])})'

def main():
    for part in ['literal','four','five']:
        rows=json.loads((HERE/f'size39-{part}.json').read_text())['rows']
        out=['import Proofs\nnamespace Blc.Round3Floor38.Size39'+part.title()+'\nopen Term\n']
        for r in rows:
            i=r['id'];e=lc.decode(r['wire'])[0]
            out += [f'def e{i} : Term := {expr(e)}',
                    f'theorem e{i}_closed : Closed e{i} := by decide',
                    f'theorem e{i}_size : (blcCode e{i}).length = 39 := by decide']
        out.append('end Blc.Round3Floor38.Size39'+part.title())
        (HERE/('Sources39'+part.title()+'.lean')).write_text('\n\n'.join(out)+'\n')
        print(part,len(rows),'fixed sources')

if __name__=='__main__':main()
