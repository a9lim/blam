"""Close precisely the uncertified pairs from closed_transport.log."""
import sys,ast,re
from pathlib import Path
sys.dont_write_bytecode=True
sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
base=Path('/Users/a9lim/Work/blam/tmp/round4/zerolam')
records=[ast.literal_eval(line) for line in (base/'closed_exceptions.txt').read_text().splitlines()]
ytexts={(v[1],v[-2] if v[0] in ('EQ','GROW') else v[-1]) for v in records}
def encode(t,env):
    if t[0]=='V':return '1'*(env.index(t[1])+1)+'0'
    if t[0]=='L':return '00'+encode(t[2],[t[1]]+env)
    return '01'+encode(t[1],env)+encode(t[2],env)
out=[]
for line in (base/'closed_transport.log').read_text().splitlines():
    if not line.startswith('UNRESOLVED '):continue
    m=re.match(r'^UNRESOLVED (\d+) (\d+) ',line)
    ny,nc=map(int,m.groups())
    rest=line[m.end():].split(" ['",1)[0]
    matches=[y for n,y in ytexts if n==ny and rest.startswith(y+' ')]
    assert len(matches)==1
    y=matches[0]
    c=rest[len(y)+1:]
    assert rd.weight(rd.parse(y))[0]==ny
    assert rd.weight(('L','s',rd.parse(c)))[0]-6==nc
    x=('A',rd.parse(y),('V','j'))
    body=rd.subst(rd.parse(c),'j',x)
    assert rd.weight(('L','s',body))[0]==8+ny+nc<=46
    z=rd.subst(body,'s',rd.Z('r'))
    t=('L','c',('L','j',('L','r',z)))
    out.append(encode(t,[]))
assert 0 < len(out) < 100000
(base/'cap_terms.blc').write_text('\n'.join(out)+'\n')
print('wrote',len(out),'closed zero-probe terms; bits',min(map(len,out)),max(map(len,out)))
