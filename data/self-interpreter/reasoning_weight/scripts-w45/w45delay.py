from w45hard import *
name='Slice45Delay'
s='''import Blc.SelfintRootLetBinaryOrbit
namespace Blc.Slice45Delay
open Term SelfintClass SelfintLowerBound SelfintSourceCost WeakHeadClock SelfintWireCost SelfintFloor SelfintNestedLets
open SelfintRootLetPowers (keep keep_apply reader_betas)
def C (x : Term) : Term := .lam (.app (.app (shift 1 0 x) (.var 0)) (.lam (.var 1)))
def H : Term := .lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))))
theorem hstep (x : Term) : weakStep (.app H x)=some (.app x (.app x (keep (C x)))) := by
 simp (disch := decide) [H,C,keep,weakStep,contract,substDec,shift,shift_shift0]
theorem cstep (x y : Term) : weakStep (.app (C x) y)=some (.app (.app x y) (keep y)) := by
 simp [C,keep,weakStep,contract,substDec,substDec_shift]
theorem kstep (x y : Term) : weakStep (.app (keep x) y)=some x := by simp [keep,weakStep,contract,substDec_shift]
inductive Orb : Term → Prop where
 | h : Orb H
 | c {x} : Orb x → Orb (C x)
 | k {x} : Orb x → Orb (keep x)
 | a {f a} : Orb f → Orb a → Orb (.app f a)
theorem closed (h : Orb t) : Closed t := by
 induction h with
 | h => decide
 | c h ih =>
   simp only [C,shift_closed 1 0 ih,Closed,FreeUnder]
   exact ⟨⟨freeUnder_mono (by decide : 0≤1) ih,by decide⟩,by decide⟩
 | k h ih =>
   simp only [keep,shift_closed 1 0 ih,Closed,FreeUnder]
   exact freeUnder_mono (by decide : 0≤1) ih
 | a hf ha ihf iha => exact ⟨ihf,iha⟩
theorem orbitStep (h : Orb t) (hs : weakStep t=some u) : Orb u := by
 induction h generalizing u with
 | h | c | k => simp [H,C,keep,weakStep] at hs
 | @a f a hf ha ihf iha =>
   cases hf with
   | h => rw [hstep] at hs; cases hs; exact .a ha (.a ha (.k (.c ha)))
   | c hx => rw [cstep] at hs; cases hs; exact .a (.a hx ha) (.k ha)
   | k hx => rw [kstep] at hs; cases hs; exact hx
   | a => simp only [weakStep,Option.map_eq_some_iff] at hs; obtain ⟨v,hv,rfl⟩ := hs; exact .a (ihf hv) ha
inductive Delay : Term → Prop where
 | rigid {t} : Rigid t → Delay t
 | k {t} : Delay t → Delay (keep t)
 | a {t} : Delay t → (x : Term) → Delay (.app t x)
theorem delayStep (hd : Delay t) (hs : weakStep t=some u) : Delay u := by
 induction hd generalizing u with
 | rigid hr => rw [rigid_stop hr] at hs; contradiction
 | k => simp [keep,weakStep] at hs
 | @a f hh a ih =>
   cases hh with
   | rigid hr => rw [rigid_stop (Rigid.app a hr)] at hs; contradiction
   | k hx => rw [kstep] at hs; cases hs; exact hx
   | a => simp only [weakStep,Option.map_eq_some_iff] at hs; obtain ⟨v,hv,rfl⟩ := hs; exact .a (ih hv) a
theorem keepDead (t : Term) : ¬ Reader (keep t) := by
 intro hr
 have hz := betas_preserve_nf (.head (keep_apply t Z) (.refl _)) hr.zero_red zeroOut_normal
 have ho := betas_preserve_nf (.head (keep_apply t S) (.refl _)) hr.one_red varOut_normal
 exact (by decide : zeroOut ≠ varOut) (normalForm_unique hz ho zeroOut_normal varOut_normal)
inductive Mixed : Term → Prop where
 | pure {t} : Orb t → Mixed t
 | delay {t} : Delay t → Mixed t
 | a {f a} : Mixed f → Delay a → Mixed (.app f a)
theorem mixStep (h : Mixed t) (hs : weakStep t=some u) : Mixed u := by
 induction h generalizing u with
 | pure h => exact .pure (orbitStep h hs)
 | delay h => exact .delay (delayStep h hs)
 | @a f a hf ha ih =>
   cases hf with
   | pure ho =>
     cases ho with
     | h => rw [hstep] at hs; cases hs; exact .delay (.a ha _)
     | c hx => rw [cstep] at hs; cases hs; exact .a (.a (.pure hx) ha) (.k ha)
     | k hx => rw [kstep] at hs; cases hs; exact .pure hx
     | a => simp only [weakStep,Option.map_eq_some_iff] at hs; obtain ⟨v,hv,rfl⟩ := hs; exact .a (ih hv) ha
   | delay hd => exact .delay (delayStep (.a hd a) hs)
   | a => simp only [weakStep,Option.map_eq_some_iff] at hs; obtain ⟨v,hv,rfl⟩ := hs; exact .a (ih hv) ha
'''
o=(proofs/'Slice44Orbit.lean').read_text();s+=o[o.index('theorem endpoint'):o.index('theorem rejectMixed')]
s+='''theorem impossible (h : Mixed t) : ¬ Reader t := by
 intro hr
 obtain ⟨n,hn⟩ := hasNormalForm_count ⟨_,hr.zero_red,zeroOut_normal⟩
 obtain ⟨_,_,hc⟩ := SelfintRootLetOrbit.count_fn n hn
 obtain ⟨u,hu,hm,hs⟩ := endpoint h hc
 have hru := reader_betas hr hu
 cases hm with
 | pure ho =>
   have hj := reader_j hru
   have hz := occ_of_freeUnder _ 0 1 (closed ho) (by decide)
   omega
 | delay hd =>
   cases hd with
   | rigid h => exact reader_not_rigid hru h
   | k => exact keepDead _ hru
   | a => exact reader_not_rigid hru (weakStep_none_rigid hs (fun h => h))
 | a => exact reader_not_rigid hru (weakStep_none_rigid hs (fun h => h))
'''
for i in (31218,31219):
 r=ad.tup(sources()[str(i)]['source'])
 s+=f'def r{i} : Term := {ex.lean(r)}\ntheorem reject{i} : ¬ Reader r{i} := by\n intro hr\n apply impossible (.a (.a (.pure (.a .h .h)) (.rigid (.var _))) (.rigid (.var _)))\n exact hr.beta (.appL _ (.appL _ (.beta _ _)))\n#print axioms reject{i}\n'
(proofs/(name+'.lean')).write_text(s+'end Blc.'+name+'\n')
