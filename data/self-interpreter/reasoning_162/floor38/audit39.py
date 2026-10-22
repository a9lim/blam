"""Check the fixed classified ledger, literal source mapping and coverage."""
import sys
sys.dont_write_bytecode=True
import json,re,time,signal
from collections import Counter
from size39 import HERE,lc,counts,occ,width,chain,free,timeout
from size39_sources import expr

signal.signal(signal.SIGALRM,timeout);signal.alarm(105)
start=time.monotonic()
positive=json.loads((HERE/'size39-positive-checks.json').read_text())
residual=json.loads((HERE/'size39-residuals-excluded.json').read_text())
pm={(r['part'],r['id']):r for r in positive}
rm={(r['part'],r['id']):r for r in residual}
assert len(pm)==len(positive)==4663 and len(rm)==len(residual)==9
assert not pm.keys() & rm.keys()

def live(t):
    if t[0]=='V':return 0
    if t[0]=='L':return int(occ(t[1])>0)+live(t[1])
    return live(t[1])+live(t[2])

records=[];summary={};wires=set();keys=set()
for part,want in [('literal',1008),('four',2248),('five',1416)]:
    data=json.loads((HERE/f'size39-{part}.json').read_text());rows=data['rows']
    assert len(rows)==want and [r['id'] for r in rows]==list(range(want))
    source=(HERE/f'Sources39{part.title()}.lean').read_text()
    checked=(HERE/f'Finite39{part.title()}.lean').read_text()
    assert {int(x) for x in re.findall(r'^theorem positive(\d+) :',checked,re.M)}=={
        i for p,i in pm if p==part}
    triples=Counter();strengths=Counter()
    for r in rows:
        i=r['id'];key=(part,i);wire=r['wire'];keys.add(key)
        assert wire not in wires;wires.add(wire)
        t=lc.decode(wire)[0]
        assert lc.enc(t)==wire and lc.size(t)==39 and not free(t)
        assert width(t)>=3 and not chain(t)
        assert live(t)==(4 if part=='four' else 5)
        assert t[0]==('L' if part=='literal' else 'A')
        assert f'def e{i} : Term := {expr(t)}\n' in source
        assert f'theorem e{i}_closed : Closed e{i} := by decide' in source
        assert f'theorem e{i}_size : (blcCode e{i}).length = 39 := by decide' in source
        triples[counts(t)]+=1
        if key in pm:
            p=pm[key];assert p['kind']==r['kind'];strength=p['strength']
        else:
            assert r['kind'].startswith('unresolved') and key in rm
            p=rm[key];strength='complete_not_IsSelfInterpreter'
        strengths[strength]+=1
        records.append(dict(part=part,id=i,wire=wire,family=r['family'],
                            strength=strength,proof=p))
    summary[part]=dict(layouts=want,strengths=dict(strengths),
                       triples={','.join(map(str,k)):v for k,v in sorted(triples.items())},
                       classified_probe_seconds=data['seconds'])
assert keys==pm.keys()|rm.keys() and len(keys)==len(wires)==4672
assert summary['four']['triples']=={'4,7,5':1036,'5,6,7':324,'5,7,3':84,'6,6,5':804}
assert summary['five']['triples']=={'5,7,3':1416}
assert summary['literal']['triples']=={'5,7,3':1008}
strengths=Counter(r['strength'] for r in records)
assert dict(strengths)=={'certificate_predicate':4505,'complete_not_IsSelfInterpreter':167}
build=json.loads((HERE/'lean-validation.json').read_text())
assert len(build)==25 and all(r['exit_code']==0 for r in build)
out=dict(numeric_conclusion=40,
         scope='Handwritten completeness and finite-predicate implications; checked source mapping and Lean components.',
         uniform_literal_exclusions=['literal_constant_not_selfint','selfint_of_literal_eta plus prior floor 39'],
         layouts=4672,parts=summary,strengths=dict(strengths),
         initial_residuals=9,residual_exclusion_kinds=dict(Counter(r['kind'] for r in residual)),
         final_residual_ids=[],lean_modules=25,lean_seconds=sum(r['seconds'] for r in build),
         rows=records)
(HERE/'size39-ledger.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k!='rows'},indent=2))
print('audit_seconds',time.monotonic()-start)
