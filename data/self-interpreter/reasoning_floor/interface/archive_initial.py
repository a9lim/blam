"""Retain the exact pre-self-forcing revisions recorded in polish_initial.log."""
from pathlib import Path
import sys
LANE=Path(__file__).resolve().parent
sys.path.insert(0,str(LANE.parents[2]/'tools/self-interpreter'))
import battery
out=LANE/'initial'
out.mkdir(exist_ok=True)
for name,size,other in [('third_operand_thunk',211,'f'),('delayed_drop_thunk',221,None),
                        ('thunk_input_output',236,'c'),('root_next_thunk',242,'f')]:
    src=(LANE/(name+'.lam')).read_text()
    src=src.replace(r'\v\t. c v (t t)',r'\v\t. c v (t v)')
    if other: src=src.replace('(t t)','(t '+other+')')
    bits=battery.enc(battery.compile_lam(src))
    assert len(bits)==size,(name,len(bits),size)
    (out/(name+'.lam')).write_text(src)
    (out/(name+'.blc')).write_text(bits+'\n')
    print(name,size)
