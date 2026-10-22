from probe import *
from discover import lower
sys.path.insert(0,str(H.parent/'rootlet'))
import boundary as b
rows=source_rows();src={(c,e['exception_index']):(i,a.tup(e['source'])) for i,(c,e) in enumerate(rows)}
eta=json.loads((H.parent/'rootlet/eta_inventory.json').read_text());records=[]
def context(t,p,dep=0):
 if not p:return '.hole',dep
 h,*ps=p
 if h==0:
  C,n=context(t[1],ps,dep+1);return f'(.lam {C})',n
 if h==1:
  C,n=context(t[1],ps,dep);return f'(.appL {C} {lean(t[2],dep)})',n
 C,n=context(t[2],ps,dep);return f'(.appR {lean(t[1],dep)} {C})',n
for rec in eta['candidates']:
 i,R=src[(rec['cell'],rec['index'])];p=rec['path'];sub=mx.at(R,p)
 assert sub[0]=='l' and sub[1][0]=='a' and sub[1][2]==D.V(0)
 P=lower(sub[1][1],1);assert P is not None
 C,dep=context(R,p)
 assert b.weight(R)==rec['weight'] and b.weight(a.tup(rec['reduct']))==rec['reduct_weight']
 records.append(dict(id=i,cell=rec['cell'],source=R,context=C,depth=dep,p=P,saving=rec['saving']))
assert len(records)==346
for k,off in enumerate(range(0,len(records),175)):
 mod=f'EtaCases{k}';s='import Eta\nnamespace Blc.Rootcert.'+mod+'\nopen Term SelfintSourceCost RootcertEta SelfintWireCost\nset_option maxRecDepth 10000\n'
 for r in records[off:off+175]:
  i=r['id'];s+=f'\ndef r{i} : Term := {lean(r["source"])}\ntheorem reject_min{i} : ¬ MinimumReader r{i} :=\n minimum_no_eta {r["context"]} {lean(r["p"],r["depth"])}\n#print axioms reject_min{i}\n'
 s+='end Blc.Rootcert.'+mod+'\n';(H/(mod+'.lean')).write_text(s)
(H/'eta_certificates.json').write_text(json.dumps([{k:r[k] for k in ('id','cell','saving')} for r in records],separators=(',',':'))+'\n');print('eta',len(records),collections.Counter(r['cell'] for r in records))
