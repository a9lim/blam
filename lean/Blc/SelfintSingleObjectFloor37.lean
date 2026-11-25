import Blc.SelfintSingleObjectResiduals

namespace Blc.SelfintSingleObject
open Term WeakHeadClock SelfintControl SelfintLowerBound SelfintFloor SelfintProbe

private theorem counted_call {e} (he : IsSelfInterpreter e) : ∃ n, Count (idCall e) n :=
  hasNormalForm_count ⟨_, interpreter_idCall_betas he, idOutput_normal⟩

private theorem cycle_excluded (swap : Bool) : ¬ IsSelfInterpreter (cycleLayout swap) := by
  intro hi
  have checked : cycleCheck (idCall (cycleLayout swap)) 1 (if swap then 6 else 3) = true := by
    cases swap <;> decide
  obtain ⟨u,hu,hcy⟩ := cycleCheck_spec checked
  have hd := cycle_diverges hu hcy (by cases swap <;> decide)
  exact headDiverges_not_hasNormalForm hd ⟨_,interpreter_idCall_betas hi,idOutput_normal⟩

private theorem lift_weak {f g} (w : weakStep f = some g) (as : List Term) :
    weakStep (apps f as) = some (apps g as) := by
  induction as generalizing f g with
  | nil => exact w
  | cons a as ih => exact ih (weak_app w a)

private theorem lift_betas {f g} (h : Betas f g) (as : List Term) :
    Betas (apps f as) (apps g as) := by
  induction as generalizing f g with
  | nil => exact h
  | cons a as ih => exact ih (betas_appL a h)

private theorem decrease {t u v} (hw : weakStep t = some u) (hr : Betas u v)
    (tail : List Term) {n} (h : Count (apps t tail) n) :
    ∃ m < n, Count (apps v tail) m := by
  obtain ⟨k,hk,hc⟩ := head_decreases h (lift_weak hw tail)
  obtain ⟨m,hm,hc'⟩ := count_reduct k hc (lift_betas hr tail)
  exact ⟨m, by omega, hc'⟩

/-- In the pairing case one trip appends a continuation to the spine. -/
private theorem pair_excluded : ¬ IsSelfInterpreter (advancingLayout true) := by
  intro hi
  let N := advancingHelper true
  let C := Term.var 0
  let S := quoteI (.var 1)
  let L := Term.app (.app N (pairT N C)) S
  let U := (weakStep L).getD L
  have w : weakStep L = some U := by decide
  have hr : Betas U (.app L C) := headReds_betas' (k := 3) (by decide)
  have loop (n : Nat) (tail : List Term) : ¬ Count (apps L tail) n := by
    induction n using Nat.strongRecOn generalizing tail with
    | ind n ih =>
      intro h
      obtain ⟨m,hm,hc⟩ := decrease w hr tail h
      exact ih m hm (C::tail) hc
  obtain ⟨n,hc⟩ := counted_call hi
  have start : Betas (idCall (advancingLayout true)) L := headReds_betas' (k := 3) (by decide)
  obtain ⟨m,_,hm⟩ := count_reduct n hc start
  exact loop m [] hm

/- All arguments in the advancing-wrapper proof are closed. The identity
contract can be specialized to a closed continuation and a closed stream. -/
private abbrev N := advancingHelper false

private def wrap (x t : Term) : Term := .lam (.app (.app x (.var 0)) t)

private theorem wrap_closed {x t} (hx : Closed x) (ht : Closed t) : Closed (wrap x t) :=
  ⟨⟨closed_freeUnder hx 1, Nat.zero_lt_one⟩, closed_freeUnder ht 1⟩

private def tower : List Term → Term
  | [] => N
  | t::ts => wrap (tower ts) t

private theorem tower_closed {ts} (h : ∀ t ∈ ts, Closed t) : Closed (tower ts) := by
  induction ts with
  | nil => decide
  | cons t ts ih => exact wrap_closed (ih fun p hp => h p (by simp [hp])) (h t (by simp))

private theorem unwrap (x t a : Term) (hx : Closed x) (ht : Closed t) :
    Betas (.app (wrap x t) a) (.app (.app x a) t) := by
  have he : contract (.app (.app x (.var 0)) t) a = .app (.app x a) t := by
    simp only [contract, substDec, if_true, substDec_closed _ _ hx, substDec_closed _ _ ht]
  exact he ▸ (Betas.head (Beta.beta _ _) (.refl _))

private theorem peel (ts : List Term) (hc : ∀ t ∈ ts, Closed t) (a : Term) (tail : List Term) :
    Betas (apps (tower ts) (a::tail)) (apps N (a :: ts.reverse ++ tail)) := by
  induction ts generalizing tail with
  | nil => exact .refl _
  | cons t ts ih =>
    have hcs : ∀ p ∈ ts, Closed p := fun p hp => hc p (by simp [hp])
    have hu := lift_betas (unwrap (tower ts) t a (tower_closed hcs) (hc t (by simp))) tail
    have hp := ih hcs (t::tail)
    exact betas_trans hu (by simpa only [List.reverse_cons, List.cons_append, List.append_assoc,
      List.nil_append, apps_cons] using hp)

private theorem advance (x p : Term) (hx : Closed x) (hp : Closed p) :
    ∃ u, weakStep (.app (.app N x) p) = some u ∧ Betas u (.app x (wrap x p)) := by
  let b := Term.app x (.lam (.app (.app x (.var 0)) (.var 1)))
  refine ⟨.app (.lam b) p, ?_, ?_⟩
  · apply weak_app
    simp [N, advancingHelper, weakStep, contract, substDec, b,
      shift_of_freeUnder 1 x 0 0 hx (Nat.le_refl 0)]
  · have he : contract b p = .app x (wrap x p) := by
      simp [b, wrap, contract, substDec, substDec_closed _ _ hx,
        shift_of_freeUnder 1 p 0 0 hp (Nat.le_refl 0)]
    exact he ▸ (Betas.head (Beta.beta _ _) (.refl _))

private theorem wrapper_excluded : ¬ IsSelfInterpreter (advancingLayout false) := by
  intro hi
  let C := churchTrue
  let S := quoteI identity
  let call := Term.app (.app (advancingLayout false) C) S
  have hint := identity_contract hi C identity
  have hout : Betas (.app (.app C churchFalse) identity) churchFalse :=
    betas_of_spineReds (spine_true2 _ _)
  have hj := join_trans hint (join_of_betas hout)
  obtain ⟨q,hq,hf⟩ := hj
  have heq := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt churchFalse)) hf
  subst q
  obtain ⟨n,hc⟩ := hasNormalForm_count (t := call) ⟨_,hq,fun _ => nft_no_beta (by decide : NFt churchFalse)⟩
  have loop (n : Nat) (ts : List Term) (hn : ts ≠ []) (pending : List Term)
      (hp : pending ≠ []) (cs : ∀ t ∈ ts, Closed t) (cp : ∀ t ∈ pending, Closed t) :
      ¬ Count (apps N (tower ts :: pending)) n := by
    induction n using Nat.strongRecOn generalizing ts pending with
    | ind n ih =>
      intro h
      cases pending with
      | nil => exact hp rfl
      | cons p tail =>
        have hw := tower_closed cs
        have hpc := cp p (by simp)
        obtain ⟨u,hu,hr⟩ := advance (tower ts) p hw hpc
        obtain ⟨k,hk,hc⟩ := decrease hu hr tail h
        have hpeel := peel ts cs (wrap (tower ts) p) tail
        obtain ⟨m,hm,hm'⟩ := count_reduct k hc hpeel
        apply ih m (by omega) (p::ts) (by simp) (ts.reverse ++ tail) _ _ _ hm'
        · simp [hn]
        · simpa using And.intro hpc cs
        · intro z hz
          rcases List.mem_append.mp hz with hz | hz
          · exact cs z (List.mem_reverse.mp hz)
          · exact cp z (by simp [hz])
  have hs : Betas call (apps N [tower [C],S]) := headReds_betas' (k := 3) (by decide)
  obtain ⟨m,_,hm⟩ := count_reduct n hc hs
  exact loop m [C] (by decide) [S] (by decide) (by simp [C]; decide) (by simp [S]; decide) hm

theorem selfintSizeBound_37 : SelfintSizeBound 37 := by
  apply bound_of_minima
  intro E hm
  by_cases hw : SelfintWireCost.wire E ≤ 36
  · have h := minimum_residual hm hw
    simp only [residuals, List.mem_cons, List.not_mem_nil, or_false] at h
    rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact (cycle_excluded _ hm.1).elim
    · exact (cycle_excluded _ hm.1).elim
    · exact (pair_excluded hm.1).elim
    · exact (wrapper_excluded hm.1).elim
    all_goals exact (selfInterpreter_not_so hm.1 (factoredLayout_so _ _)).elim
  · omega

#print axioms selfintSizeBound_37
end Blc.SelfintSingleObject
