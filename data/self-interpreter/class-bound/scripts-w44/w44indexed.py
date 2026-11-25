from w44hard import *
from w44model import bound_model
def arr(xs):return '['+','.join(map(str,xs))+']'
def clo(cl):return f'⟨{cl[0]},{arr(cl[1])}⟩'
def state(s):return f'⟨⟨{s[0]},{arr(s[1])}⟩,{s[2]}⟩'
def node(n):
 if n[0]=='C':return '.opaque'
 if n[0]=='V':return f'.var {n[1]}'
 if n[0]=='L':return f'.lam {n[1]}'
 return f'.app {n[1]} {n[2]}'
def choose(starts,leaf):
 if len(starts)==1:return leaf(starts[0])
 k=len(starts)//2
 return f'(if i < {starts[k]} then {choose(starts[:k],leaf)} else {choose(starts[k:],leaf)})'
def dispatch(xs):
 if len(xs)==1:return f'exact FloorIndex.rangeOK_at block{xs[0]} (by omega) (by omega)'
 k=len(xs)//2
 return f'by_cases cmp{xs[k]} : i < {xs[k]}\n· '+dispatch(xs[:k]).replace('\n','\n  ')+'\n· '+dispatch(xs[k:]).replace('\n','\n  ')
def gen(i,e):
 m=f'Slice44Regular{i}';r=ad.tup(e['source']);dct=json.loads((D/f'regular{i}.json').read_text());c=dct['certificate']
 opts=list(small_options(r,0));zlen=len(opts);opts+=list(small_options(r,1))[2:];t,prep,rest=opts[dct['idx']];unary=dct['idx']>=zlen
 ns=f'Certgen.{m}';graphs=[];chunks=[];decl=[]
 def put(suffix,imports,body):
  n=m+suffix
  (proofs/(n+'.lean')).write_text(''.join('import '+x+'\n' for x in imports)+f'namespace {ns}\nset_option maxRecDepth 16000\nset_option maxHeartbeats 12000000\n'+body+'\nend '+ns+'\n')
  return n
 for key,ty,vals,default in [
  ('V','List AClo',[arr(map(clo,row)) for row in c['values']],'[]'),
  ('K','List Frame',[arr(f'⟨{clo(fr[0])},{fr[1]}⟩' for fr in row) for row in c['konts']],'[]'),
  ('st','AState',list(map(state,c['states'])),'entry'),('hs','List Nat',list(map(arr,c['hints'])),'[]')]:
  starts=list(range(0,len(vals),32))
  if not starts:decl.append(f'def {key} (_ : Nat) : {ty} := {default}');continue
  ds=[f'def {key}{j} : Array ({ty}) := #{arr(vals[j:j+32])}' for j in starts]
  for k in range(0,len(ds),4):graphs.append(put(f'T{key}{k}', ['Slice44Indexed'],'\n'.join(ds[k:k+4])))
  lookup=choose(starts,lambda j:f'({key}{j}[i-{j}]?.getD {default})')
  decl.append(f'def {key} (i : Nat) : {ty} := {lookup}')
 data=put('Data',graphs+['Slice44Indexed'],'\n'.join(decl)+f'\ndef code : Array Code := #{arr(map(node,c["nodes"]))}\ndef P (i : Nat) := code[i]?.getD .opaque\ndef valid (i : Nat) := FloorIndex.check P V K st i (hs i)')
 defs=[];nodes=[]
 def visit(u,level):
  j=len(nodes);nodes.append(j)
  if u[0]=='a':v=f'.app node{visit(u[1],level)} node{visit(u[2],level)}'
  elif u[0]=='l':v=f'.lam node{visit(u[1],level+1)}'
  else:v=ex.lean(u,level)
  defs.append(f'def node{j} : Term := {v}');return j
 visit(t,0);opens='open Blc Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintClass Blc.SelfintSourceCost\n'
 modelbody=bound_model(t).split('def termAt',1)[1].replace(':= by decide\n',':= by decide +kernel\n')
 model=put('Model',[data],opens+'\n'.join(defs)+'\ndef core : Term := node0\ndef syntaxTable : Array Term := #'+arr('node'+str(j) for j in nodes)+'\ndef termAt'+modelbody)
 n=dct['states'];step=12;starts=list(range(0,n,step))
 checks=[f'theorem block{j} : FloorIndex.rangeOK valid {j} {min(step,n-j)}=true := by decide +kernel' for j in starts]
 for j in range(0,len(starts),4):chunks.append(put(f'Check{j}',[data],'\n'.join(checks[j:j+4])))
 # The table default after its last chunk is entry. The proof at index zero witnesses progress there.
 tail=f'theorem outside (i : Nat) (hi : {n}≤i) : st i=entry := by\n simp only [st]\n'
 last=(n-1)//32*32
 def rejectif(j):
  return ''
 tail+=' repeat\' first | rw [if_neg (by omega)]\n rw [Array.getElem?_eq_none (by change '+str(n-last)+' ≤ i-'+str(last)+'; omega)]\n rfl\n'
 select=dispatch(starts).replace('\n','\n  ')
 closed=f'theorem allValid (i : Nat) (hi : i<{n}) : valid i=true := by\n  {select}\n'
 tail+=closed+f'''theorem diverges (n : Nat) : ¬ Count core n := by
 rw [←literal]
 apply FloorIndex.sound model st (by rfl)
 intro i
 by_cases h : i < {n}
 · exact ⟨hs i,allValid i h⟩
 · refine ⟨hs 0,?_⟩
   unfold FloorIndex.check
   rw [outside i (by omega)]
   exact allValid 0 (by decide)
'''
 # Use the same literal betaSteps proof as the older regular modules.
 name=f'r{i}';probe='S' if unary else 'Z';law='one_red varOut_normal' if unary else 'zero_red zeroOut_normal';norm='varOut_normal' if unary else 'zeroOut_normal'
 conclusion=f'''def {name} : Term := {ex.lean(r)}
theorem reject{i} : ¬ Reader {name} := by
 intro hr
 have replay : betaSteps {ex.ps(prep)} (.app {name} {probe}) = some (spine core {ex.ls(rest)}) := by decide +kernel
 have red := betas_preserve_nf (betaSteps_sound _ replay) hr.{law}
 obtain ⟨n,h⟩ := hasNormalForm_count ⟨_,red,{norm}⟩
 obtain ⟨m,_,hm⟩ := SelfintRootLetOrbit.count_spine_fn {ex.ls(rest)} h
 exact diverges m hm
#print axioms reject{i}'''
 lastmod=put('',[model,*chunks,'Blc.SelfintRootLetEmbedding','Certificates'],opens+'open Blc.HandlerLet Blc.SelfintLowerBound Blc.SelfintStreamSpecializer\n'+tail+conclusion)
 return graphs,[data],[model,*chunks],[lastmod]
def remaining():
 es=sources();exs=json.loads((D/'extras.json').read_text());return [int(i) for i in es if i not in exs],es
if __name__=='__main__':
 ids,es=remaining();ids=list(map(int,sys.argv[1:])) or [i for i in ids if (D/f'regular{i}.json').exists()]
 plans=[gen(i,es[str(i)]) for i in ids]
 build(['Slice44Indexed'],'indexlib',True)
 for j in range(4):build([n for p in plans for n in p[j]],f'indexed{j}',j<3)
