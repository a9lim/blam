from w44hard import *
name='Slice44KeepOrbit'
src=(proofs/'Slice44Orbit.lean').read_text()
def block(a,b):return src[src.index(a):src.index(b)]
s=src[:src.index('def grow')]+'''def grow (x : Term) : Term := .lam (.app (.app (.app (.var 0) idT) (keep (shift 1 0 x))) (.var 0))
def H : Term := .lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) idT) (.lam (.var 2))) (.var 0))))
theorem hstep (x : Term) : weakStep (.app H x)=some (.app x (grow x)) := by
 simp [H,weakStep,contract,substDec,keep,grow,idT,shift]
theorem gstep (x y : Term) : weakStep (.app (grow x) y)=some (.app (.app (.app y idT) (keep x)) y) := by
 simp [grow,idT,keep,weakStep,contract,substDec,shift_shift0]
 exact substDec_shift0 1 2 _ x (by decide)
'''+block('theorem kstep','def r15988')
s='\n'.join(line for line in s.split('\n') if not line.startswith((' | b :',' | d :','   | b =>','   | d =>','     | b =>','     | d =>')))
s=s.replace('| h | b | d | ident','| h | ident').replace('| h | b | g | k | ident | d','| h | g | k | ident').replace('H,B,grow,keep,idT,dble,weakStep','H,grow,keep,idT,weakStep')
s=s.replace('exact .a ha (.a ha (.k (.g ha)))','exact .a ha (.g ha)').replace('exact .a hx (.a ha .ident)','exact .a (.a (.a ha .ident) (.k hx)) ha').replace('exact .app (.pure hx) (.app _ ha)','exact .rigid (.app _ (.app _ (.app _ ha)))')
s=s.replace('simp only [grow,shift_closed 1 0 hx,Closed,FreeUnder]\n   exact ⟨freeUnder_mono (by decide : 0≤1) hx,by decide⟩','simp only [grow,keep,shift_closed 1 0 hx,Closed,FreeUnder]\n   exact ⟨⟨by decide, freeUnder_mono (by decide : 0≤2) hx⟩,by decide⟩')
for i in (15068,15069):
 r=ad.tup(sources()[str(i)]['source']);s+=f'def r{i} : Term := {ex.lean(r)}\ntheorem reject{i} : ¬ Reader r{i} := by\n intro hr\n apply rejectMixed (.app (.pure (.a .h .h)) (.var _)) _\n exact hr.beta (.appL _ (.appL _ (.beta _ _)))\n#print axioms reject{i}\n'
s+='end Blc.Slice44Orbit\n'
(proofs/(name+'.lean')).write_text(s.replace('Blc.Slice44Orbit','Blc.'+name))
