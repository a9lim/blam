import json,copy,time
from pathlib import Path
from flow_probe import cert
from regular import discover,Limit
from portable import portable,check
H=Path(__file__).resolve().parent
# Each has an explicit head normal form, even with an ignored divergent operand.
negatives={
 'SF2_false_positive':r'(\x.x x)(\z.z (\a b.b b z) (\w.w))',
 'identity':r'\x.x',
 'K':r'\x y.x',
 'rigid_spine':r'a b c',
 'ignored_omega':r'(\x.\y.y) ((\x.x x)(\x.x x))',
 'self_application_identity':r'(\x.x x)(\x.x)',
 'under_applied_binary':r'(\x y.x) (\z.z)',
 'bad_SF_dispatcher':r'(\x.x x)(\z.z (z (z (z (z (\a b.b)))))) W',
 'fuel_is_not_divergence':r'(\x.x ((x x) W))(\z.z (z (z (z (\a.a)))))',
}
# First six are plain HNFs/reduce to HNFs; last two reach an opaque head.
rows=[]
for name,s in negatives.items():
 t=cert.parse_show(s)
 for mode,k in [('site',0),('site',2),('lambda',2),('arg',1)]:
  try:r=discover(t,k,cap=12000,seconds=2,mode=mode)
  except Limit as e:r={'ok':False,'reason':str(e)}
  assert not r['ok'],name
  rows.append(dict(name=name,mode=mode,k=k,accepted=r['ok'],reason=r['reason']))
# Independent concrete check of claimed termination, with rigid W left opaque.
from exact import run
for name,s in negatives.items():
 r=run(cert.parse_show(s),cap=15000)
 assert r['stop']!='cap',(name,r)
# Positive templates, including trailing opaque payloads and K-like templates.
positives={
 'Omega':r'(\x.x x)(\x.x x)',
 'W5':r'(\a b.b a b W) X (\a b.b a b W)',
 'SR':r'(\x.x x W)(\x.x x W)',
 'SFprime':r'(\y.y (\z.y z W) V)(\y.y (\z.y z W) V)',
 'SF2':r'(\a b.a a a)(\a b.a a a)(\a b.a a a)',
 'Y_family':r'(\y.y y (\z.z y))(\y.y y (\z.z y))',
}
pr=[]
for name,s in positives.items():
 for mode,k in [('site',0),('site',1),('site',2),('lambda',2),('arg',1)]:
  try:r=discover(cert.parse_show(s),k,cap=12000,seconds=2,mode=mode)
  except Limit:r={'ok':False}
  if r['ok']:break
 assert r['ok'],name
 pc=portable(r);pr.append(dict(name=name,states=len(pc['states']),mode=mode,k=k))
# A valid certificate, then three independently rejected corruptions.
c=portable(discover(cert.parse_show(positives['Omega']),0));assert check(c)
wrong=copy.deepcopy(c);wrong['states']=[];wrong['hints']=[];assert not check(wrong)
wrong=copy.deepcopy(c);wrong['nodes'][0]=('C','forged');assert not check(wrong)
wrong=copy.deepcopy(c);wrong['hints']=[[] for _ in wrong['hints']];assert not check(wrong)
(H/'CONTROLS.json').write_text(json.dumps(dict(negative_checks=rows,positive_checks=pr,mutations_rejected=3),indent=2))
print('negative checks',len(rows),'positive',len(pr),'mutations rejected',3)
