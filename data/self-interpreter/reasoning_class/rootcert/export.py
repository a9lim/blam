from probe import *
def ls(xs):return '['+', '.join(lean(a.tup(t)) for t in xs)+']'
def ps(xs):return '['+', '.join('['+', '.join(map(str,p))+']' for p in xs)+']'
rs=source_rows();cs=json.loads((H/'certificates.json').read_text());mods=[]
for off in range(0,len(cs),150):
 mod=f'Families{off//150}';mods.append(mod)
 s='import Grow\nnamespace Blc.Rootcert.'+mod+'\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet BodyLetGrow BodyLetSpecial\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
 for rec in cs[off:off+150]:
  i=rec['id'];R=a.tup(rs[i][1]['source']);s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n'
  if rec['kind']=='grow':s+=f' exact grow_reduct true {ps(rec["prep"])} {ls(rec["ws"])} {ls(rec["ts"])} {ls(rec["ss"])} {ls(rec["rest"])} (by decide)\n'
  else:
   s+=' intro hr\n'
   s+=f' have he : betaSteps {ps(rec["prep"])} (.app r{i} Z) = some (spine (templateState {lean(a.tup(rec["D"]),2)} {lean(a.tup(rec["t"]))}) {ls(rec["rest"])}) := by decide\n'
   s+=' have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal\n'
   s+=f' exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩\n'
  s+=f'#print axioms reject{i}\n'
 s+='end Blc.Rootcert.'+mod+'\n';(H/(mod+'.lean')).write_text(s)
(H/'family_modules.json').write_text(json.dumps(mods)+'\n');print(mods)
