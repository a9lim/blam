/-
Dead-prefix completion of the last-live-head application algebra.

The generator has two live binders on its leading prefix, and its final
body is headed by the second. Arbitrarily many vacuous binders may occur
before, between, or after them. The body itself may contain arbitrary
zero-live syntax. All vacuous wrappers are kept operationally; this is
not a semantics-changing deletion of dead lambdas.
-/
import Blc.SelfintRound7GlobalLastHead
import Blc.SelfintValuesTransfer

namespace Blc.SelfintRound7GlobalLastPrefix
open Term SelfintLowerBound SelfintCapture SelfintFloor SelfintWireCost
  SelfintWiden SelfintRound6BoundGlobal SelfintRound6BoundNext
  SelfintRound6BoundLiteral QuoteOrigins SelfintRound7GlobalLastHead

/-- A prefix of genuinely unused binders, with explicit index lifting. -/
def wrap : Nat → Term → Term
  | 0, t => t
  | n+1, t => .lam (shift 1 0 (wrap n t))

theorem wrap_scope (n : Nat) {t : Term} {k : Nat} (h : FreeUnder k t) :
    FreeUnder k (wrap n t) := by
  induction n with
  | zero => exact h
  | succ n ih => exact SelfintValuesTransfer.freeUnder_shift _ k 0 ih

theorem wrap_live (n : Nat) (t : Term) : live (wrap n t)=live t := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [wrap,live,live_shift,occ_shift_eq,ih,Nat.lt_irrefl,if_false,Nat.add_zero]

theorem wrap_subst (n : Nat) (t s : Term) (j : Nat) :
    substDec j s (wrap n t)=wrap n (substDec j s t) := by
  induction n with
  | zero => rfl
  | succ n ih =>
      simp only [wrap,substDec]
      rw [← shift_substDec_lt _ _ j 0 (by omega),ih]

theorem generated_wrap {A t : Term} (hA : Closed A) (h : Generated A t) (n : Nat) :
    Generated A (wrap n t) := by
  induction n with
  | zero => exact h
  | succ n ih =>
      change Generated A (.lam (shift 1 0 (wrap n t)))
      rw [shift_closed 1 0 (ih.closed hA)]
      exact .dead ih

/-- There are `n` dead binders between the two live slots, and `m`
after the second. Further dead binders before the first belong to the
surrounding generated algebra. -/
def generator (n m : Nat) (D : Term) : Term :=
  .lam (wrap n (.lam (wrap m D)))

def pending (k m : Nat) (D u : Term) : Term :=
  wrap k (.lam (wrap m (substDec 1 u D)))

theorem generator_closed {D : Term} (hD : FreeUnder 2 D) (n m : Nat) :
    Closed (generator n m D) :=
  wrap_scope n (wrap_scope m hD)

theorem generator_live_le_two {D : Term} (hl : live D=0) (n m : Nat) :
    live (generator n m D)≤2 := by
  simp only [generator,live,wrap_live,hl]
  split <;> split <;> omega

inductive PrefixState (n m : Nat) (D : Term) : Term → Prop where
  | atom : PrefixState n m D (generator n m D)
  | dead {t : Term} : Generated (generator n m D) t → PrefixState n m D (.lam t)
  | wait (k : Nat) {u : Term} : Generated (generator n m D) u →
      PrefixState n m D (pending k m D u)
  | app {f a : Term} : PrefixState n m D f → Generated (generator n m D) a →
      PrefixState n m D (.app f a)

theorem generated_prefixState {n m : Nat} {D t : Term}
    (h : Generated (generator n m D) t) : PrefixState n m D t := by
  induction h with
  | atom => exact .atom
  | dead ht _ => exact .dead ht
  | app _ ha ihf _ => exact .app ihf ha

theorem pending_isLam (k m : Nat) (D u : Term) : IsLam (pending k m D u) := by
  cases k <;> trivial

theorem prefixState_headStep {n m : Nat} {D t u : Term}
    (hD : FreeUnder 2 D) (hl : live D=0)
    (ht : PrefixState n m D t) (hi : IsApp t) (hs : headStep t=some u) :
    PrefixState n m D u := by
  have hA := generator_closed hD n m
  induction ht generalizing u with
  | atom => exact hi.elim
  | dead => exact hi.elim
  | wait k => cases k <;> exact hi.elim
  | @app f a hf ha ih =>
      cases hf with
      | atom =>
          have hc := ha.closed hA
          simp only [generator,headStep,contract,wrap_subst,substDec,
            shift_closed 1 0 hc,Option.some.injEq] at hs
          subst u
          exact .wait n ha
      | dead hb =>
          simp only [headStep,contract,substDec_closed _ _ (hb.closed hA),Option.some.injEq] at hs
          subst u
          exact generated_prefixState hb
      | wait k hb =>
          cases k with
          | zero =>
              simp only [pending,wrap,headStep,contract,wrap_subst,Option.some.injEq] at hs
              subst u
              exact generated_prefixState (generated_wrap hA
                (zero_two_template hA hb ha D 0 hl hD (by intro i hi; omega)) m)
          | succ k =>
              simp only [pending,wrap,headStep,contract,substDec_shift,Option.some.injEq] at hs
              subst u
              exact .wait k hb
      | app hg hb =>
          simp only [headStep,Option.map_eq_some_iff] at hs
          obtain ⟨v,hv,rfl⟩ := hs
          exact .app (ih trivial hv) ha

theorem prefixState_first_lam {n m : Nat} {D t u : Term}
    (hD : FreeUnder 2 D) (hl : live D=0)
    (ht : PrefixState n m D t) (k : Nat) (hs : headSteps k t=some u) (hu : IsLam u) :
    ∃ v, Betas t v ∧ PrefixState n m D v ∧ IsLam v := by
  induction k generalizing t with
  | zero =>
      simp only [headSteps,Option.some.injEq] at hs
      subst u
      exact ⟨t,.refl _,ht,hu⟩
  | succ k ih =>
      by_cases hh : IsLam t
      · exact ⟨t,.refl _,ht,hh⟩
      · have ha : IsApp t := by
          cases ht with
          | atom => exact (hh trivial).elim
          | dead => exact (hh trivial).elim
          | wait k => exact (hh (pending_isLam k _ _ _)).elim
          | app => trivial
        simp only [headSteps,Option.bind_eq_some_iff] at hs
        obtain ⟨v,hv,hrest⟩ := hs
        obtain ⟨w,hw,hstate,hlam⟩ := ih (prefixState_headStep hD hl ht ha hv) hrest
        exact ⟨w,.head (beta_of_headStep (headStep_sound hv)) hw,hstate,hlam⟩

theorem pending_not_selfInterpreter {D u : Term} (hh : RigidAt 0 D) (k m : Nat) :
    ¬ IsSelfInterpreter (pending k m D u) := by
  intro hi
  cases k with
  | succ k =>
      have hp := one_lambda_public_occ hi
      simp only [occ_shift_eq] at hp
      omega
  | zero =>
      cases m with
      | zero => exact own_head_not_selfInterpreter (rigidAt_subst hh 1 _ (by omega)) hi
      | succ m =>
          have hp := (literal_public_occ hi).1
          simp only [occ_shift_eq] at hp
          omega

/-- Whole application-algebra exclusion with arbitrary dead binders
interspersed among the two live prefix binders. -/
theorem generated_prefix_not_selfInterpreter {n m : Nat} {D E : Term}
    (hD : FreeUnder 2 D) (hl : live D=0) (hh : RigidAt 0 D)
    (hG : Generated (generator n m D) E) : ¬ IsSelfInterpreter E := by
  intro hE
  obtain ⟨k,v,hv,hlam⟩ := selfInterpreter_head_lam hE
  obtain ⟨w,hw,hstate,hwl⟩ := prefixState_first_lam hD hl (generated_prefixState hG) k hv hlam
  have hi := selfInterpreter_betas hw hE
  cases hstate with
  | atom =>
      have hlow := selfInterpreter_three_live hi
      have hhigh := generator_live_le_two hl n m
      omega
  | dead ht =>
      have hc := ht.closed (generator_closed hD n m)
      have hzero := occ_of_freeUnder _ 0 0 hc (by omega)
      have hp := one_lambda_public_occ hi
      omega
  | wait k => exact pending_not_selfInterpreter hh k m hi
  | app => exact hwl

/-- The sharing body and all three dead-prefix lengths are unrestricted. -/
theorem sharing_prefix_not_selfInterpreter (B D : Term) (p n m : Nat)
    (hB : FreeUnder 1 B) (hb : live B=0) (hD : FreeUnder 2 D)
    (hd : live D=0) (hh : RigidAt 0 D) :
    ¬ IsSelfInterpreter (.app (.lam B) (wrap p (generator n m D))) := by
  intro hE
  have hA := generator_closed hD n m
  have hv := generated_wrap hA (Generated.atom (A:=generator n m D)) p
  have hG := zero_one_template hA hv B hb hB
  exact generated_prefix_not_selfInterpreter hD hd hh hG (descend_interpreter hE)

#print axioms generated_prefix_not_selfInterpreter
#print axioms sharing_prefix_not_selfInterpreter
end Blc.SelfintRound7GlobalLastPrefix
