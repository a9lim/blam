#!/usr/bin/env python3
"""Small dispatcher inventory and explicit source-capture witnesses."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from functools import lru_cache
import json,time,resource
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parents[2]/'tmp/round4/coord'))
import rd
from callbacks import d,nf,wire,show,occ,Unresolved

@lru_cache(None)
def terms(n,q):
    if n<2:return ()
    out=[d.V(i) for i in range(q+2) if i+2==n]
    out += [d.L(b) for b in terms(n-2,q+1)]
    for a in range(2,n-3):
        out += [d.A(f,x) for f in terms(a,q) for x in terms(n-2-a,q)]
    return tuple(out)

def normal(t):
    if t[0] in ('v','k'):return True
    if t[0]=='l':return normal(t[1])
    return t[1][0]!='l' and normal(t[1]) and normal(t[2])

def spine(t):
    args=[]
    while t[0]=='a':args.append(t[2]);t=t[1]
    return t,list(reversed(args))

def lean(t,env=('c','j')):
    if t[0]=='V':return f'(.var {env.index(t[1])})'
    if t[0]=='L':return f'(.lam {lean(t[2],(t[1],)+env)})'
    return f'(.app {lean(t[1],env)} {lean(t[2],env)})'

def main():
    start=time.monotonic();rows=[];redex=[]
    specials={d.I:'existing I-selector bound',
      d.L(d.L(d.V(2))):'remove A: decreases weight by 10',
      d.L(d.L(d.L(d.V(0)))):'remove s and A: decreases weight by 14',
      d.L(d.A(d.V(0),d.V(1))):'new second-cell callback bound',
      d.L(d.A(d.V(0),d.I)):'new second-cell callback bound'}
    for n in range(2,11):
        for A in terms(n,0):
            if not normal(A):
                contracted=nf(A,[100]);assert wire(contracted)<n
                redex.append(dict(cost=n,A=show(A,('s','c')),nf_cost=wire(contracted)))
                continue
            vals=[]
            for stream,bit,tail in [(d.Z(),d.K,d.Kc('r')),(d.U(1),d.F,d.U(0))]:
                z=d.inst(A,stream)
                for t in (bit,tail,d.Kc('V'),d.Kc('j')):z=d.A(z,t)
                vals.append(nf(z,[100]))
            if A in specials:why=specials[A]
            else:
                zh,za=spine(vals[0]);uh,ua=spine(vals[1])
                if zh[0]=='l':why='zero retains a lambda'
                elif zh==d.Kc('V') and not za:why='zero is V, a lambda'
                elif zh in (d.Kc('c'),d.Kc('j')):why='wrong rigid zero head'
                elif zh==d.Kc('r') and len(za)!=1:why='wrong rigid zero arity'
                else:
                    assert vals[0]==d.A(d.Kc('r'),d.Kc('j'))
                    assert uh in (d.Kc('N'),d.Kc('j'))
                    why='wrong rigid unary-one head'
            rows.append(dict(cost=n,A=show(A,('s','c')),zero=show(vals[0]),unary_one=show(vals[1]),reason=why))
    thinD=d.A(d.V(0),d.A(d.A(d.V(1),d.V(1)),d.V(0)))
    assert wire(thinD)==16
    thin_counts={};thin_fail={};thin_exceptions=[];thin_hits=[];thin_seen=set()
    for nbits in range(2,14):
        number=0
        for A in terms(nbits,0):
            if not occ(A,1):continue
            assert A not in thin_seen;thin_seen.add(A);number+=1
            Y=d.A(d.A(d.V(0),A),d.L(thinD))
            for label,stream,target in [('zero',d.Z(),d.A(d.Kc('r'),d.Kc('j')))] + [
                (str(n),d.U(n),d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))) for n in (1,2,3)]:
                try:actual=nf(d.A(d.inst(Y,stream),d.Kc('j')),[1200])
                except (Unresolved,RecursionError) as e:
                    thin_exceptions.append(dict(A=show(A,('s','c')),reason=str(e)));break
                if actual!=target:
                    thin_fail[label]=thin_fail.get(label,0)+1;break
            else:thin_hits.append(show(A,('s','c')))
        thin_counts[str(nbits)]=number
    assert not thin_exceptions and not thin_hits
    fixtures={
      'capture53':r'\s. s I ((\x u. s (\q. c) (x u)) (s s)) j',
      'sunk55':r'\s. s I (\u. (\x. s (\q. c) (x u)) (s s)) j',
      'needed66':r'\s. s (\b t v. b t (v t)) (\u k. c u (u u k)) j',
      'deep109':r'\s. s I (\u. (\x a b d e f. s (\q. c) x) (s s u) I I I I I) j',
      'contract111':r'\s. s I (\u. (\a b d e f. s (\q. c) (s s u)) I I I I I) j',
      'sink119':r'\s. s I (\u. (\a b d e f. (\x. s (\q. c) x) (s s u)) I I I I I) j',
      'thin75':r'\s. s (\b t v k. b (t k) (v (c t))) (\u. u (s s u)) j'}
    checks={}
    for k,src in fixtures.items():
        ok,price=rd.check(src,nmax=8,verbose=False)
        assert ok
        checks[k]=dict(source=src,price=price,zero_and_unary_through=8)
    assert [checks[k]['price'][0] for k in fixtures]==[53,55,66,109,111,119,75]
    output=dict(dispatchers=rows,non_normal=redex,fixtures=checks,
      thin_dispatcher_check=dict(D='u (s s u)',D_cost=16,A_cap=13,sources=len(thin_seen),
        counts_by_cost=thin_counts,wrong_nf=thin_fail,exceptions=thin_exceptions,survivors=thin_hits),
      seconds=time.monotonic()-start,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=1)
    (H/'r1_followup.json').write_text(json.dumps(output,indent=2)+'\n')
    source='''import Blc.SelfintNeededHead
namespace Blc.NeedBinder.R1Followup
open Term SelfintClass SelfintLowerBound SelfintWiden SelfintWidenHoist SelfintSourceCost SelfintStreamSpecializer
set_option maxRecDepth 4000
set_option maxHeartbeats 1000000
'''
    for name,src in fixtures.items():source+=f'def {name} : Term := {lean(rd.parse(src))}\n'
    source+='''
theorem capture_contracts : Betas capture53 reader162 :=
  normalSteps_sound (by decide : normalSteps 1 capture53 = some reader162)
theorem sunk_contracts : Betas sunk55 reader162 :=
  normalSteps_sound (by decide : normalSteps 1 sunk55 = some reader162)
theorem capture_full : FullReader capture53 :=
  FullReader.of_betas (by decide) capture_contracts reader162_fullReader
theorem sunk_full : FullReader sunk55 :=
  FullReader.of_betas (by decide) sunk_contracts reader162_fullReader
theorem prices : weight 0 capture53=53 ∧ weight 0 sunk55=55 ∧ weight 0 needed66=66 := by decide

theorem deep_contracts : Betas deep109 reader162 :=
  normalSteps_sound (by decide : normalSteps 6 deep109 = some reader162)
theorem contract_contracts : Betas contract111 reader162 :=
  normalSteps_sound (by decide : normalSteps 5 contract111 = some reader162)
theorem sink_contracts : Betas sink119 reader162 :=
  normalSteps_sound (by decide : normalSteps 6 sink119 = some reader162)
theorem deep_full : FullReader deep109 :=
  FullReader.of_betas (by decide) deep_contracts reader162_fullReader
theorem contract_full : FullReader contract111 :=
  FullReader.of_betas (by decide) contract_contracts reader162_fullReader
theorem sink_full : FullReader sink119 :=
  FullReader.of_betas (by decide) sink_contracts reader162_fullReader
theorem deep_prices : weight 0 deep109=109 ∧ weight 0 contract111=111 ∧ weight 0 sink119=119 := by decide

theorem critical_profiles (F d : Nat) (hc : 7 ≤ (F-1)*d)
    (hb : 4*F+3*d+5 ≤ 37) :
    (F=2 ∧ 7≤d ∧ d≤8) ∨ (F=3 ∧ 4≤d ∧ d≤6) ∨
    (F=4 ∧ 3≤d ∧ d≤5) ∨ (F=5 ∧ 2≤d ∧ d≤4) ∨ (F=6 ∧ d=2) := by
  have hd : 1≤d := by
    by_cases hz : d=0
    · simp [hz] at hc
    · omega
  have hF : F≤7 := by omega
  have casesF : F=0 ∨ F=1 ∨ F=2 ∨ F=3 ∨ F=4 ∨ F=5 ∨ F=6 ∨ F=7 := by omega
  rcases casesF with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp_all <;> omega

theorem needed_zero : Betas (.app needed66 Z) zeroOut := by
  have hh := advance_sound 16 (.app needed66 Z)
  have he : advance 16 (.app needed66 Z)=zeroOut := by decide
  rwa [he] at hh

theorem needed_var_head : Betas (.app needed66 (pairT churchFalse (.var 2)))
    (.app (.app (.var 0) (.var 2)) (.app (.app (.var 2) (.var 2)) (.var 1))) := by
  have hh := advance_sound 16 (.app needed66 (pairT churchFalse (.var 2)))
  have he : advance 16 (.app needed66 (pairT churchFalse (.var 2)))=
    (.app (.app (.var 0) (.var 2)) (.app (.app (.var 2) (.var 2)) (.var 1))) := by decide
  rwa [he] at hh

theorem needed_full : FullReader needed66 := by
  refine ⟨by decide,⟨_,needed_zero,.refl _⟩,?_⟩
  intro n
  have hh := SelfintControl.betas_subst needed_var_head 2 (unary n (.var 2))
  have hr : substDec 2 (unary n (.var 2)) needed66=needed66 :=
    substDec_of_freeUnder _ _ _ (by decide : FreeUnder 2 needed66)
  have head : Betas (.app needed66 (unary (n+1) (.var 2)))
      (.app (.app (.var 0) (unary n (.var 2)))
        (.app (.app (unary n (.var 2)) (unary n (.var 2))) (.var 1))) := by
    simpa [substDec,hr,unary,pairT,shift,shift_churchFalse,
      substDec_churchFalse,substDec_shift0,shift_zero] using hh
  have hs := betas_of_spineReds (skip_self n (.var 2))
  rw [← unary_stream] at hs
  have tail : Betas (.app (.app (unary n (.var 2)) (unary n (.var 2))) (.var 1)) (.var 2) :=
    betas_trans (betas_appL (.var 1) hs) (.head (.beta _ _) (.refl _))
  exact ⟨_,betas_trans head (betas_appR _ tail),.refl _⟩

theorem thin_price : weight 0 thin75=75 := by decide
theorem thin_zero : Betas (.app thin75 Z) zeroOut := by
  have hh := advance_sound 16 (.app thin75 Z)
  have he : advance 16 (.app thin75 Z)=zeroOut := by decide
  rwa [he] at hh
theorem thin_var_head : Betas (.app thin75 (pairT churchFalse (.var 2)))
    (.app (.app (.var 0) (.var 2))
      (.app (.app (pairT churchFalse (.var 2)) (pairT churchFalse (.var 2)))
        (.app (.var 0) (.var 2)))) := by
  have hh := advance_sound 16 (.app thin75 (pairT churchFalse (.var 2)))
  have he : advance 16 (.app thin75 (pairT churchFalse (.var 2)))=
    (.app (.app (.var 0) (.var 2))
      (.app (.app (pairT churchFalse (.var 2)) (pairT churchFalse (.var 2)))
        (.app (.var 0) (.var 2)))) := by decide
  rwa [he] at hh
theorem thin_full : FullReader thin75 := by
  refine ⟨by decide,⟨_,thin_zero,.refl _⟩,?_⟩
  intro n
  have hh := SelfintControl.betas_subst thin_var_head 2 (unary n (.var 2))
  have hr : substDec 2 (unary n (.var 2)) thin75=thin75 :=
    substDec_of_freeUnder _ _ _ (by decide : FreeUnder 2 thin75)
  have head : Betas (.app thin75 (unary (n+1) (.var 2)))
      (.app (.app (.var 0) (unary n (.var 2)))
        (.app (.app (unary (n+1) (.var 2)) (unary (n+1) (.var 2)))
          (.app (.var 0) (unary n (.var 2))))) := by
    simpa [substDec,hr,unary,pairT,shift,shift_churchFalse,
      substDec_churchFalse,substDec_shift0,shift_zero] using hh
  have hs := betas_of_spineReds (skip_self (n+1) (.var 2))
  rw [← unary_stream] at hs
  have tail : Betas
      (.app (.app (unary (n+1) (.var 2)) (unary (n+1) (.var 2)))
        (.app (.var 0) (unary n (.var 2)))) (.var 2) :=
    betas_trans (betas_appL _ hs) (.head (.beta _ _) (.refl _))
  exact ⟨_,betas_trans head (betas_appR _ tail),.refl _⟩

#print axioms capture_full
#print axioms sunk_full
#print axioms prices
#print axioms needed_full
#print axioms deep_full
#print axioms contract_full
#print axioms sink_full
#print axioms deep_prices
#print axioms critical_profiles
#print axioms thin_price
#print axioms thin_full
end Blc.NeedBinder.R1Followup
'''
    (H/'R1Followup.lean').write_text(source)
    print(json.dumps(dict(normal_dispatchers=len(rows),non_normal=len(redex),fixtures=checks,
        thin_dispatcher_check=output['thin_dispatcher_check'],
        seconds=output['seconds'],peak_rss_bytes=output['peak_rss_bytes']),indent=2))

if __name__=='__main__':main()
