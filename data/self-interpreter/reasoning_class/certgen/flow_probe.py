import sys, json
sys.dont_write_bytecode=True
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'shared'))
import cert

def cfa(t):
    nodes=[]; binds={}
    def go(t,env):
        i=len(nodes); nodes.append(None)
        if t[0]=='V': nodes[i]=('v',env[t[1]])
        elif t[0]=='C': nodes[i]=('k',0)
        elif t[0]=='L':
            binds[i]=set(); nodes[i]=('l',go(t[1],[i]+env))
        else: nodes[i]=('a',go(t[1],env),go(t[2],env))
        return i
    go(t,[]); flow=[set() for _ in nodes]
    for count in range(1000):
        change=False
        for i,nd in enumerate(nodes):
            old=len(flow[i]); k=nd[0]
            if k=='v': flow[i]|=binds[nd[1]]
            elif k=='k': flow[i].add(-1)
            elif k=='l': flow[i].add(i)
            else:
                for l in list(flow[nd[1]]):
                    if l==-1: flow[i].add(-1)
                    else:
                        n=len(binds[l]); binds[l]|=flow[nd[2]]
                        change |= len(binds[l])!=n
                        flow[i]|=flow[nodes[l][1]]
            change |= old!=len(flow[i])
        if not change: return flow[0], count+1, len(nodes)
    raise RuntimeError('cap')

def inputs():
    out=[]
    for fn in ('h2_2.final_left','h2_5.final_left','pre_h63re.txt'):
        for i,s in enumerate((ROOT/'rootnarrow/work'/fn).read_text().splitlines()):
            out.append((f'{fn}:{i}',s))
    for i,(_,s) in enumerate(json.loads((ROOT/'rootnarrow/work/h3_1.json').read_text())['cut']):
        out.append((f'h3_1.json:{i}',s))
    return out
if __name__=='__main__':
    for name,s in inputs():
        t=cert.parse_show(s); r=cfa(t)
        print(name,sorted(r[0]),r[1:])
