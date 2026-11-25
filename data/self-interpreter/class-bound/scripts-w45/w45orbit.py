from w45macro import *

def abstractProof(m,t,e):
 def app(f,a):
  k,p=f;l,q=a
  if k=='r':return 'r',f'(.app _ {p})'
  if k==l=='p':return 'p',f'(.a {p} {q})'
  if l in ('r','p') and k in ('p','m'):
   if k=='p':p=f'(.pure {p})'
   return 'm',f'(.{("ar" if l=="r" else "ap")} {p} {q})'
  return '?',''
 def lam(i,*xs):
  if all(k=='p' for k,p in xs):return 'p',f'(.f{i} '+names(p for k,p in xs)+')'
  return '?',''
 return m.extract(t,e,app,lam)

def mix(q):
 k,p=q
 if k=='p':return f'(.pure {p})'
 if k=='r':return f'(.rigid {p})'
 if k=='m':return p
 raise ValueError('unknown constructor')

def closure(m,i,t):
 xs=[f'x{n}' for n in free(t)]
 ih={q:f'ih{q}' for q in free(t)};hs=[f'h{q}' for q in free(t)]
 def expr(t,d):
  if t[0]=='v':
   if t[1]<d:return '(by decide)'
   return f'(freeUnder_mono (by decide : 0 ≤ {d}) {ih[t[1]-d]})'
  if t[0]=='l':return expr(t[1],d+1)
  return f'⟨{expr(t[1],d)},{expr(t[2],d)}⟩'
 simps=','.join([f'F{i}',*[f'shift_closed _ _ {h}' for h in ih.values()],'Closed','FreeUnder'])
 return f' | f{i} {names([*hs,*ih.values()])} =>\n   simp only [{simps}]\n   exact {expr(t,0)}'

def makeOrbit(i,R,forbidden=1):
 name=f'Slice45Orbit{i}';m=Machine();tm=debruijn(R)
 assert all(q in (0,1) for q in free(tm))
 def retry():return makeOrbit(i,R,0) if forbidden else None
 root=abstractProof(m,tm,{q:(('r','(.var _)') if q==forbidden else ('p','.atom')) for q in free(tm)})
 if root[0]=='?':return retry()
 rows=[]
 for j,t in enumerate(m.func):
  bind=free(t)
  env={q+1:('p',f'h{q}') for q in bind}
  pure=abstractProof(m,t[1],{0:('p','ha'),**env})
  rigid=abstractProof(m,t[1],{0:('r','ha'),**env})
  if pure[0]!='p' or rigid[0]=='?':return retry()
  rows.append((j,t,[f'h{q}' for q in bind],pure[1],mix(rigid)))
 s=f'import Blc.SelfintRootLetBinaryOrbit\nnamespace Blc.{name}\nopen Term SelfintClass SelfintLowerBound WeakHeadClock SelfintSourceCost SelfintWireCost SelfintFloor SelfintNestedLets\nset_option linter.unusedSimpArgs false\n'+m.emit()
 s+='inductive Orb : Term → Prop where\n'+f' | atom : Orb (.var {1-forbidden})\n'
 for j,t,hs,_,__ in rows:
  xs=[f'x{q}' for q in free(t)]
  bind='{'+names(xs)+' : Term} : ' if xs else ': '
  s+=f' | f{j} {bind}'+''.join(f'Orb {x} → ' for x in xs)+f'Orb (F{j} {names(xs)})\n'
 s+=' | a {f a} : Orb f → Orb a → Orb (.app f a)\n'
 s+='''theorem occMany (x : Term) (k d : Nat) : occ (k+d) (shift d 0 x) = occ k x := by
 induction d with
 | zero => simp only [Nat.add_zero,shift_zero]
 | succ d ih =>
   calc
    occ (k+(d+1)) (shift (d+1) 0 x) = occ ((k+d)+1) (shift 1 0 (shift d 0 x)) := by
      rw [shift_shift0 1 d 0 x (Nat.zero_le d),Nat.add_assoc,Nat.add_comm 1 d]
    _ = occ (k+d) (shift d 0 x) := occ_shift_ge _ _ _ (Nat.zero_le _)
    _ = occ k x := ih
'''
 s+=f'theorem orbitAbsent (h : Orb t) : occ {forbidden} t=0 := by\n induction h with\n | atom => decide\n'
 for j,t,hs,*_ in rows:
  xs=[f'x{q}' for q in free(t)];ih=[f'ih{q}' for q in free(t)]
  s+=f' | @f{j} {names([*xs,*hs,*ih])} =>\n'
  for q in free(t):
   def depths(t,d=0):
    if t[0]=='v':return {d} if t[1]==q+d else set()
    return set().union(*(depths(a,d+(t[0]=='l')) for a in t[1:]))
   for dep in sorted(depths(t)):
    s+=f'   have leaf{q}_{dep} : occ {forbidden+dep} (shift {dep} 0 x{q})=0 := (occMany x{q} {forbidden} {dep}).trans ih{q}\n'
  s+=f'   simp [F{j}, occ, *]\n'
 s+=' | a hf ha ihf iha => simp [occ,ihf,iha]\n'
 s+='theorem closedStep (h : Orb t) (hs : weakStep t = some u) : Orb u := by\n induction h generalizing u with\n'
 s+=' | atom | '+' | '.join(f'f{j}' for j,*_ in rows)+' => simp ['+','.join(f'F{j}' for j,*_ in rows)+',weakStep] at hs\n | @a f a hf ha ihf iha =>\n   cases hf with\n   | atom => simp [weakStep] at hs\n'
 for j,t,hs,p,_ in rows:s+=f'   | f{j} {names(hs)} => rw [weak{j}] at hs; cases hs; exact {p}\n'
 lift='simp only [weakStep,Option.map_eq_some_iff] at hs; obtain ⟨v,hv,rfl⟩ := hs'
 s+='   | a => '+lift+'; exact .a (ihf hv) ha\n'
 s+='''inductive Mixed : Term → Prop where
 | pure {t} : Orb t → Mixed t
 | rigid {t} : Rigid t → Mixed t
 | ar {f a} : Mixed f → Rigid a → Mixed (.app f a)
 | ap {f a} : Mixed f → Orb a → Mixed (.app f a)
theorem mixStep (h : Mixed t) (hs : weakStep t=some u) : Mixed u := by
 induction h generalizing u with
 | pure hh => exact .pure (closedStep hh hs)
 | rigid hh => rw [rigid_stop hh] at hs; contradiction
 | @ar f a hf ha ih =>
   cases hf with
   | pure hor =>
     cases hor with
     | atom => simp [weakStep] at hs
'''
 for j,t,hs,_,p in rows:s+=f'     | f{j} {names(hs)} => rw [weak{j}] at hs; cases hs; exact {p}\n'
 s+='     | a => '+lift+'; exact .ar (ih hv) ha\n'
 s+='   | rigid hh => rw [rigid_stop (Rigid.app a hh)] at hs; contradiction\n'
 s+='   | ar | ap => '+lift+'; exact .ar (ih hv) ha\n'
 s+=' | @ap f a hf ha ih =>\n   cases hf with\n   | pure hh => exact .pure (closedStep (.a hh ha) hs)\n   | rigid hh => rw [rigid_stop (Rigid.app a hh)] at hs; contradiction\n   | ar | ap => '+lift+'; exact .ap (ih hv) ha\n'
 old=(proofs/'Slice44Orbit.lean').read_text()
 s+=old[old.index('theorem endpoint'):old.index('theorem rejectMixed')]
 s+='''theorem rejectMixed {t : Term} (hm : Mixed t) : ¬ Reader t := by
 intro hr
 obtain ⟨n,hn⟩ := hasNormalForm_count ⟨_,hr.zero_red,zeroOut_normal⟩
 obtain ⟨_,_,ht⟩ := SelfintRootLetOrbit.count_fn n hn
 obtain ⟨u,hu,hh,hs⟩ := endpoint hm ht
 have hr' := SelfintRootLetPowers.reader_betas hr hu
 cases hh with
 | pure h =>
   have h1 := MISSING_LAW hr'
   have hz := orbitAbsent h
   omega
 | rigid h => exact reader_not_rigid hr' h
 | ar | ap => exact reader_not_rigid hr' (weakStep_none_rigid hs (fun h => h))
'''.replace('MISSING_LAW','reader_j' if forbidden else 'reader_c')
 s+=f'def r{i} : Term := {ex.lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := rejectMixed {mix(root)}\n#print axioms reject{i}\nend Blc.{name}\n'
 (proofs/(name+'.lean')).write_text(s);return name
if __name__=='__main__':
 xs=json.loads((D/'extras.json').read_text());mods={}
 for j,r in sources().items():
  if j not in xs:
   nm=makeOrbit(int(j),ad.tup(r['source']))
   if nm:mods[j]=nm
 save(D/'orbitplans.json',mods);supervise(leanjobs(list(mods.values())),'orbit')
 xs.update({j:['orbit omitting one rigid variable',n] for j,n in mods.items()});save(D/'extras.json',xs)
