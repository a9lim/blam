"""Replay B2 while independently challenging every original cycle certificate.
Uses narrow2's closure-preserving readback at each original certificate site.
The search itself is unmodified; any original failure is logged and checked.
"""
import sys,json
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parent/'types'))
import narrow as a, narrow2 as b
a.JLO=2;a.JHI=99
old=a.run_law
counts=dict(certified=0,exact_fail=0,exact_fuel=0,exact_need=0,exact_ok=0)
cases=[]
def meta_for(fills):
    meta={}
    def visit(t,d,head):
        if t[0]=='H':
            meta[t[1]]=(d,head)
            if t[1] in fills: visit(fills[t[1]],d,head)
        elif t[0]=='L': visit(t[1],d+1,False)
        elif t[0]=='A': visit(t[1],d,True);visit(t[2],d,False)
    visit(a.ROOT,0,False)
    return meta
def checked(fills,law,fuel):
    # A direct attempt identifies whether the original path resorts to certification.
    try:
        a.compare(('A',a.ROOT,a.inp(law)),None,a.target(law),(),fills,[fuel])
        return ('ok',)
    except a.Need as e:return ('need',e.h)
    except a.Fail:return ('fail',)
    except (a.Fuel,RecursionError):pass
    result=old(fills,law,fuel)
    if result[0]=='fail':
        counts['certified']+=1
        precise=b.run_law(fills,meta_for(fills),law,fuel)
        counts['exact_'+precise[0]]+=1
        if precise[0]!='fail': cases.append(dict(law=law,term=a.show(a.ROOT,fills),exact=precise[0]))
    return result
a.run_law=checked
st=a.search(45,[1,2,0],2000,True,100000)
out=dict(states=st['states'],sol=st['sol'],fuel=st['fuel'],counts=counts,cases=cases)
(HERE/'audit_cycle.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
