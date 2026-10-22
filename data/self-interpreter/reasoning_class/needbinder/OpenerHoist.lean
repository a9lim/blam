import SourceCost

/- Source accounting for hoisting the trailing absorber of a literal
   whole-cell opener. This file proves the arbitrary-body price and scope,
   NOT the residual-pruning lemma used in NOTES.md. -/
namespace Blc.NeedBinder.OpenerHoist
open Term SelfintClass SelfintLowerBound SelfintWireCost
open Round3Reader Close46Source SelfintFloor

set_option maxRecDepth 4000
set_option maxHeartbeats 1000000

/-- [u,t,b,s,...] becomes [t,b,s,u,...], under arbitrary local binders. -/
def outward (d : Nat) : Term → Term
  | .var n => if n=d then .var (d+3)
      else if d<n ∧ n≤d+3 then .var (n-1) else .var n
  | .lam b => .lam (outward (d+1) b)
  | .app f a => .app (outward d f) (outward d a)

theorem outward_price (t : Term) (d : Nat) :
    wire (outward d t) + occ (d+1) t + occ (d+2) t + occ (d+3) t =
      wire t + 3 * occ d t := by
  induction t generalizing d with
  | var n =>
    simp only [outward,occ]
    by_cases h0 : n=d
    · subst n; simp
    · by_cases h1 : n=d+1
      · subst n; simp
      · by_cases h2 : n=d+2
        · subst n; simp
        · by_cases h3 : n=d+3
          · subst n; simp
          · have hn : ¬(d<n ∧ n≤d+3) := by omega
            simp [h0,h1,h2,h3,hn]
  | lam b ih =>
    have h := ih (d+1)
    simp only [outward,wire_lam,occ]
    simp only [Nat.add_assoc,Nat.reduceAdd] at h ⊢
    omega
  | app f a ihf iha =>
    have hf := ihf d; have ha := iha d
    simp only [outward,wire_app,occ]
    omega

theorem outward_scope (t : Term) (d k : Nat) (hd : d+4≤k)
    (ht : FreeUnder k t) : FreeUnder k (outward d t) := by
  induction t generalizing d k with
  | var n =>
    simp only [outward]
    split <;> (try split) <;> simp_all [FreeUnder] <;> omega
  | lam b ih => exact ih (d+1) (k+1) (by omega) ht
  | app f a ihf iha => exact ⟨ihf d k hd ht.1,iha d k hd ht.2⟩

/-- Body D is in [u,t,b,s,c]; the reader itself is in [c,j]. -/
def inside (D : Term) : Term :=
  .lam (.app (.app (.var 0) (.lam (.lam (.lam D)))) (.var 2))

/-- The absorber u moves to the root; the source j now has depth zero. -/
def outside (D : Term) : Term :=
  .app (.lam (.lam (.app (.var 0) (.lam (.lam (outward 0 D)))))) (.var 1)

theorem inside_scope (D : Term) (h : FreeUnder 5 D) :
    FreeUnder 2 (inside D) := by
  simp only [inside,FreeUnder]
  exact ⟨⟨by decide,freeUnder_mono (by decide : 5≤6) h⟩,by decide⟩

theorem outside_scope (D : Term) (h : FreeUnder 5 D) :
    FreeUnder 2 (outside D) := by
  simp only [outside,FreeUnder]
  exact ⟨⟨by decide,freeUnder_mono (by decide : 5≤6) (outward_scope D 0 5 (by decide) h)⟩,by decide⟩

theorem inside_hole (D : Term) (h : FreeUnder 5 D) : occ 1 (inside D)=1 := by
  have hz := occ_of_freeUnder D 5 5 h (by omega)
  simp [inside,occ,hz]

theorem outside_hole (D : Term) (h : FreeUnder 5 D) : occ 1 (outside D)=1 := by
  have hs := outward_scope D 0 5 (by decide) h
  have hz := occ_of_freeUnder (outward 0 D) 5 5 hs (by omega)
  simp [outside,occ,hz]

/-- All source bodies, arbitrary redexes and multiplicities. Balanced
    over Nat so this also covers bodies with no u use. -/
theorem hoist_price (D : Term) (h : FreeUnder 5 D) :
    weight 0 (outside D) + 4 + occ 1 D + occ 2 D + occ 3 D =
      weight 0 (inside D) + 3 * occ 0 D := by
  have hz := occ_of_freeUnder D 5 5 h (by omega)
  have hs := outward_scope D 0 5 (by decide) h
  have hz' := occ_of_freeUnder (outward 0 D) 5 5 hs (by omega)
  have hw := weight_no_hole D 4 hz
  have hw' := weight_no_hole (outward 0 D) 4 hz'
  have hp := outward_price D 0
  simp only [Nat.zero_add] at hp
  simp [inside,outside,weight,hw,hw']
  omega

/-- Once the absorber has one source use, hoisting saves at least a bit.
    No claim about semantics or minimality is hidden in this arithmetic. -/
theorem hoist_single_strict (D : Term) (h : FreeUnder 5 D) (hu : occ 0 D=1) :
    weight 0 (outside D) + 1 + occ 1 D + occ 2 D + occ 3 D =
      weight 0 (inside D) := by
  have hp := hoist_price D h
  rw [hu] at hp
  omega

/-- Arithmetic part of the whole-cell linear-redex exclusion. The
    source-tree lower bound supplying 4F+3d+7 is proved in NOTES.md. -/
theorem critical_linear_cost (F d : Nat) (hc : 7 ≤ (F-1)*d) :
    31 ≤ 4*F+3*d+7 := by
  by_cases h : 31 ≤ 4*F+3*d+7
  · exact h
  · have hf : F≤5 := by omega
    have cases : F=0 ∨ F=1 ∨ F=2 ∨ F=3 ∨ F=4 ∨ F=5 := by omega
    rcases cases with he | he | he | he | he | he <;> subst F <;> simp_all <;> omega

#print axioms critical_linear_cost
#print axioms outward_price
#print axioms hoist_price
#print axioms hoist_single_strict
#print axioms inside_hole
#print axioms outside_hole
end Blc.NeedBinder.OpenerHoist
