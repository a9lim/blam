import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
p=Path(__file__).resolve().parent
four=json.loads((p/'four_lambda.json').read_text());five=json.loads((p/'five_lambda.json').read_text())
remaining=[448,449,454,455,460,461,466,467,472,473,478,479,572]
hand={}
for i in (378,380,393,395):hand[i]='duplicate-last-argument wrapper invariant'
for i in range(436,448):hand[i]='one-argument closed macro grammar'
for i in range(450,484,3):hand[i]='NN prefix pumping'
for i in (451,452,457,458,463,464,469,470,475,476,481,482):hand[i]='two-pending-argument closed macro grammar'
for i in (486,490,506,570,574,590):hand[i]='two-pending-argument closed macro grammar'
assert len(hand)==46
unresolved=[i for i,r in enumerate(four) if r['kind'].startswith('unresolved')]
assert set(unresolved)==set(hand)|set(remaining)
assert [i for i,r in enumerate(five) if r['kind'].startswith('unresolved')]==[9,19]
bit_ids={bits:int(i) for i,bits in (s.split('\t') for s in (p/'thirteen.tsv').read_text().splitlines())}
verdict={}
for line in (p/'thirteen.adjudicate.log').read_text().splitlines():
    words=line.split()
    if words and words[0] in bit_ids:verdict[bit_ids[words[0]]]=' '.join(words[1:])
result=dict(residual_layouts=676,finite_refutations=615,handwritten_invariant_refutations=48,
            remaining=[dict(id=i,source=four[i]['src'],family=four[i]['family'],invocation_I_engine=verdict[i]) for i in remaining],
            unconditional_floor_unchanged=37)
(p/'progress.json').write_text(json.dumps(result,indent=2)+'\n')
print('676 layouts: 615 finite, 48 handwritten invariants, 13 remaining')
print('engine divergers',[i for i,v in verdict.items() if v.startswith('DIVERGE')])
print('engine unknowns',[i for i,v in verdict.items() if v.startswith('UNKNOWN')])
