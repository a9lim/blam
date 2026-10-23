/-
An obstruction to erasing ABS in a spread-environment compiler.

If parsing a lambda only updates a control state and returns its child's
value unchanged (up to beta), a fixed public decoder can be correct only
when the states reached at different positive lambda depths are all
distinct.  In particular no finite-state tag repairs the identity-ABS
proposal.  Applications, variable values, the decoder, and the state
transition are otherwise unrestricted.

This is a protocol obstruction, not a numerical lower bound on arbitrary
self-interpreters.  An unbounded continuation or environment is a state
and is explicitly allowed by the positive theorem.
-/
import Blc.SelfintControl
import Init.Data.List.Perm
import Init.Data.List.Nat.Range

namespace Blc.SelfintArchitecture5Depth
open Term SelfintControl

/-- `tower (n+1)` is the closed normal source `lambda^(n+1).var 0`. -/
def tower : Nat → Term
  | 0 => .var 0
  | n + 1 => .lam (tower n)

theorem tower_nft (n : Nat) : NFt (tower n) := by
  induction n with
  | zero => trivial
  | succ n ih => exact ih

theorem tower_normal (n : Nat) : NormalForm (tower n) :=
  fun _ hb => nft_no_beta (tower_nft n) hb

theorem tower_free (n k : Nat) (h : 0 < n + k) : FreeUnder k (tower n) := by
  induction n generalizing k with
  | zero => simpa [tower, FreeUnder] using h
  | succ n ih =>
      change FreeUnder (k + 1) (tower n)
      exact ih (k + 1) (by omega)

theorem tower_closed (n : Nat) : Closed (tower (n + 1)) :=
  tower_free (n + 1) 0 (by omega)

theorem tower_injective : Function.Injective tower := by
  intro n
  induction n with
  | zero =>
      intro m h
      cases m with
      | zero => rfl
      | succ m => cases h
  | succ n ih =>
      intro m h
      cases m with
      | zero => cases h
      | succ m =>
          have hb : tower n = tower m := Term.lam.inj h
          exact congrArg Nat.succ (ih hb)

theorem tower_join_injective {n m : Nat}
    (h : BetaJoin (tower n) (tower m)) : n = m := by
  obtain ⟨w, hn, hm⟩ := h
  exact tower_injective
    ((normalForm_betas_eq (tower_normal n) hn).symm.trans
      (normalForm_betas_eq (tower_normal m) hm))

/-- The ordinary value projection supplies this necessary condition for
any implementation that factors through a compiled value and one decoder. -/
def DecodesClosed {S : Type} (compile : S → Term → Term)
    (initial : S) (decoder : Term) : Prop :=
  ∀ M, Closed M → BetaJoin (.app decoder (compile initial M)) (.lam M)

theorem decodesClosed_of_interpreter
    {S : Type} {compile : S → Term → Term} {initial : S}
    {decoder E N : Term} (hE : IsSelfInterpreter E)
    (factor : ∀ M, Closed M →
      BetaJoin (.app (.app E churchTrue) (streamOf (blcCode M) N))
        (.app decoder (compile initial M))) :
    DecodesClosed compile initial decoder := by
  intro M hM
  apply join_trans (join_symm (factor M hM))
  exact join_trans (contract_join hE hM churchTrue N)
    (join_of_betas (betas_of_spineReds (spine_true2 (.lam M) N)))

/-- Even the meanings of the depth states must be pairwise beta-distinct;
merely creating syntactically different aliases of a finite state set does
not suffice.  The state schedule may be arbitrary and nonlocal. -/
theorem erased_tower_values_beta_distinct
    {S : Type} (compile : S → Term → Term) (initial : S)
    (decoder : Term) (state : Nat → S)
    (correct : DecodesClosed compile initial decoder)
    (erase : ∀ n, BetaJoin (compile initial (tower (n + 1)))
      (compile (state n) (.var 0))) {n m : Nat}
    (states_join : BetaJoin (compile (state n) (.var 0))
      (compile (state m) (.var 0))) : n = m := by
  have hn := join_appR decoder (erase n)
  have hm := join_appR decoder (erase m)
  have he := join_trans hn (join_trans (join_appR decoder states_join) (join_symm hm))
  have hn' := correct (tower (n + 1)) (tower_closed n)
  have hm' := correct (tower (m + 1)) (tower_closed m)
  have hj := join_trans (join_symm hn') (join_trans he hm')
  change BetaJoin (tower (n + 2)) (tower (m + 2)) at hj
  have := tower_join_injective hj
  omega

/-- Thus every lambda depth requires a distinct control state. -/
theorem erased_tower_states_injective
    {S : Type} (compile : S → Term → Term) (initial : S)
    (decoder : Term) (state : Nat → S)
    (correct : DecodesClosed compile initial decoder)
    (erase : ∀ n, BetaJoin (compile initial (tower (n + 1)))
      (compile (state n) (.var 0))) :
    Function.Injective state := by
  intro n m hs
  apply erased_tower_values_beta_distinct compile initial decoder state correct erase
  rw [hs]
  exact join_refl _

/-- Abstract iteration, written in the order consumed by recursive parsing. -/
def descend {S : Type} (step : S → S) : Nat → S → S
  | 0, q => q
  | n + 1, q => descend step n (step q)

theorem erase_lambdas
    {S : Type} (compile : S → Term → Term) (step : S → S)
    (abs_identity : ∀ q M, BetaJoin (compile q (.lam M))
      (compile (step q) M)) (n : Nat) (q : S) :
    BetaJoin (compile q (tower n)) (compile (descend step n q) (.var 0)) := by
  induction n generalizing q with
  | zero => exact join_refl _
  | succ n ih =>
      exact join_trans (abs_identity q (tower n)) (ih (step q))

/-- The proposed no-constructor-cost ABS protocol needs a distinct state
at every positive depth, regardless of its APP clause or decoder syntax. -/
theorem identity_abs_depth_injective
    {S : Type} (compile : S → Term → Term) (step : S → S)
    (initial : S) (decoder : Term)
    (correct : DecodesClosed compile initial decoder)
    (abs_identity : ∀ q M, BetaJoin (compile q (.lam M))
      (compile (step q) M)) :
    Function.Injective (fun n => descend step (n + 1) initial) :=
  erased_tower_states_injective compile initial decoder _ correct
    (fun n => erase_lambdas compile step abs_identity (n + 1) initial)

private theorem nodup_length_le_subset {S : Type} {xs ys : List S}
    (hn : xs.Nodup) (hs : xs ⊆ ys) : xs.length ≤ ys.length := by
  classical
  induction xs generalizing ys with
  | nil => simp
  | cons a xs ih =>
      rw [List.nodup_cons] at hn
      have ha : a ∈ ys := hs (List.mem_cons_self ..)
      have hsub : xs ⊆ ys.erase a := by
        intro x hx
        have hxa : x ≠ a := fun h => hn.1 (h ▸ hx)
        exact (List.mem_erase_of_ne hxa).2 (hs (List.mem_cons_of_mem _ hx))
      have hi := ih hn.2 hsub
      have hl : (ys.erase a).length = ys.length - 1 := by
        rw [List.length_erase]
        simp [ha]
      have hp : 0 < ys.length := List.length_pos_of_mem ha
      simp only [List.length_cons]
      omega

/-- Quantitative form: any list covering the first `n` depth states has
at least `n` entries.  No enumeration or interpreter search is involved. -/
theorem distinct_states_need_space {S : Type} (state : Nat → S)
    (hi : Function.Injective state) (states : List S) (n : Nat)
    (cover : ∀ i, i < n → state i ∈ states) : n ≤ states.length := by
  have hn : ((List.range n).map state).Nodup :=
    List.Pairwise.map state (fun _ _ hne he => hne (hi he)) List.nodup_range
  have hsub : (List.range n).map state ⊆ states := by
    intro q hq
    obtain ⟨i, hi, rfl⟩ := List.mem_map.mp hq
    exact cover i (List.mem_range.mp hi)
  simpa using nodup_length_le_subset hn hsub

theorem identity_abs_no_finite_states
    {S : Type} (compile : S → Term → Term) (step : S → S)
    (initial : S) (decoder : Term)
    (correct : DecodesClosed compile initial decoder)
    (abs_identity : ∀ q M, BetaJoin (compile q (.lam M))
      (compile (step q) M)) :
    ¬ ∃ states : List S, ∀ q, q ∈ states := by
  rintro ⟨states, cover⟩
  have hi := identity_abs_depth_injective compile step initial decoder correct abs_identity
  have h := distinct_states_need_space _ hi states (states.length + 1)
    (fun _ _ => cover _)
  omega

theorem identity_abs_no_depth_free_compiler
    (compile : Term → Term) (decoder : Term)
    (correct : ∀ M, Closed M → BetaJoin (.app decoder (compile M)) (.lam M))
    (abs_identity : ∀ M, BetaJoin (compile (.lam M)) (compile M)) : False := by
  have hi := identity_abs_depth_injective (fun (_ : Unit) => compile)
    id () decoder correct (fun _ M => abs_identity M)
  have hc : (0 : Nat) = 1 := hi rfl
  omega

#print axioms erased_tower_states_injective
#print axioms erased_tower_values_beta_distinct
#print axioms identity_abs_depth_injective
#print axioms identity_abs_no_finite_states
#print axioms identity_abs_no_depth_free_compiler

end Blc.SelfintArchitecture5Depth
