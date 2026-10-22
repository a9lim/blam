"""Small, reasoning-selected attacks on dispatch, shielding, and skip cost."""
import sys,json
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parent/'coord'))
import rd
candidates=[
 ('162 control',r'\s. s I (\u. s (\q.c) (s s u)) j'),
 ('164 control',r'\s. s (\b.b F c) (s I (s s) j)'),
 ('replace I by stream',r'\s. s s (\u. s (\q.c) (s s u)) j'),
 ('remove shielding lambda',r'\s. s I (s (\q.c) (s s s)) j'),
 ('shorten skip to s u',r'\s. s I (\u. s (\q.c) (s u)) j'),
 ('omit skip argument',r'\s. s I (\u. s (\q.c) (s s)) j'),
 ('replace lifted c by c',r'\s. s I (\u. s c (s s u)) j'),
 ('direct second-selector c',r'\s. s (\b.b F c) (s s j)'),
 ('self-app dispatch near miss',r'\s. s (\t.t t c) (s s c) j'),
]
out=[]
for label,src in candidates:
    ok,weights=rd.check(src,nmax=8,verbose=False)
    r=rd.parse(src); outs=[]
    for n in (0,1,2):
        inp=rd.Z('r') if n==0 else rd.U(n,'N')
        try: result=rd.show(rd.normalize(('A',r,inp)))
        except (rd.Fuel,RecursionError):result='fuel'
        outs.append(result)
    out.append(dict(label=label,source=src,pass_n8=ok,weight=weights[0],outputs_Z_U1_U2=outs))
(HERE/'candidates.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
