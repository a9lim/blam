from pathlib import Path
p=Path('proofs/Slice43Poly.lean');s=p.read_text().replace('FloorPoly','FloorMeet').replace('List (Nat × Nat)','List ((Nat × Nat) × Nat)').replace('abbrev Env := Nat → Nat','abbrev Env := Nat → Nat × Nat').replace('def ext (a : Nat)','def ext (a : Nat × Nat)')
s=s.replace(' | var (e : Env) (i : Nat) : Ty F e (.var i) (e i)',' | varL (e : Env) (i : Nat) : Ty F e (.var i) (e i).1\n | varR (e : Env) (i : Nat) : Ty F e (.var i) (e i).2')
s=s.replace('Ty F e f k → Ty F e a x →','Ty F e f k → Ty F e a x.1 → Ty F e a x.2 →')
a=s.index(' | var e n =>');b=s.index(' | top =>',a);orig=s[a:b]
s=s[:a]+''.join(orig.replace('var e n',f'var{z} e n').replace('.var _ _',f'.var{z} _ _') for z in 'LR')+s[b:]
s=s.replace('app hk hm _ _ ihf iha => intros; exact .app hk hm (ihf _ _ _ (by assumption)) (iha _ _ _ (by assumption))','app hk hm _ _ _ ihf iha ihb => intros; exact .app hk hm (ihf _ _ _ (by assumption)) (iha _ _ _ (by assumption)) (ihb _ _ _ (by assumption))')
s=s.replace('Ty F d s (e j) →','Ty F d s (e j).1 → Ty F d s (e j).2 →')
a=s.index(' | var e i =>');b=s.index(' | top =>',a);orig=s[a:b]
s=s[:a]+''.join(orig.replace('var e i',f'var{z} e i').replace('d hs he','d hs hs2 he').replace('using hs','using '+h).replace('.var _ _',f'.var{z} _ _') for z,h in [('L','hs'),('R','hs2')])+s[b:]
a=s.index('theorem substTy');b=s.index('theorem preserve');q=s[a:b]
q=q.replace('d hs he','d hs hs2 he').replace('hs hs2 hs2','hs hs2').replace('(by assumption) (by assumption)','(by assumption) (by assumption) (by assumption)').replace('   · intro i hi','   · exact shiftTy hs2 1 0 _ (by intro n; simp [ext])\n   · intro i hi')
q=q.replace('app hk hm _ _ ihf iha => intros; exact .app hk hm','app hk hm _ _ _ ihf iha ihb => intros; exact .app hk hm').replace('(iha _ _ _ (by assumption) (by assumption) (by assumption))','(iha _ _ _ (by assumption) (by assumption) (by assumption)) (ihb _ _ _ (by assumption) (by assumption) (by assumption))')
s=s[:a]+q+s[b:]
s=s.replace(' | var => intro u h; cases h',' | varL => intro u h; cases h\n | varR => intro u h; cases h').replace('hk hm hf ha ihf iha','hk hm hf ha hb ihf iha ihb').replace('0 a e ha (by','0 a e ha hb (by').replace('(ihf _ h) ha','(ihf _ h) ha hb').replace('hf (iha _ h)','hf (iha _ h) (ihb _ h)')
Path('proofs/Slice43Meet.lean').write_text(s)
