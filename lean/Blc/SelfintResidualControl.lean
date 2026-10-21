/-
Application-sensitive semantic derivatives of exact remainder extraction.
These are obligations on residual behavior, not a source-size lower bound.
-/
import Blc.SelfintRemainderChain
import Blc.SelfintTower45
import Blc.SelfintSharp
import Blc.SelfintOrigins

namespace Blc.SelfintResidualControl
open Term SelfintControl SelfintRemainderChain

def ident : Term := .lam (.var 0)

/-- Apply the reader after a fixed, possibly incomplete, bit prefix. -/
def derivative (R : Term) (p : List Bool) (S : Term) : Term :=
  .app R (streamOf p S)

theorem completed {R M : Term} (hR : IsRemainder R) (hM : Closed M)
    (S : Term) : BetaJoin (derivative R (blcCode M) S) S := hR.2 M hM S

/-- After APP and its left child, precisely one source remains pending. -/
theorem one_pending {R M : Term} (hR : IsRemainder R) (hM : Closed M)
    (Q : Term) (hQ : Closed Q) (N : Term) :
    BetaJoin (derivative R ([false, true] ++ blcCode M)
      (streamOf (blcCode Q) N)) N := by
  have h := hR.2 (.app M Q) ⟨hM, hQ⟩ N
  simpa only [derivative, blcCode, List.cons_append, List.nil_append,
    streamOf_cons, streamOf_append] using h

theorem lam_not_join_var (B : Term) (n : Nat) :
    ¬ BetaJoin (.lam B) (.var n) := by
  rintro ⟨v, hl, hv⟩
  have he := normalForm_betas_eq
    (fun _ hb => nft_no_beta (by simp [NFt] : NFt (.var n)) hb) hv
  subst v
  obtain ⟨w, hw, _⟩ := lam_betas_shape hl
  cases hw

/-- In particular the two states cannot be flat: the same continuation
cannot represent both 'done' and 'one closed source pending'. -/
theorem pending_ne_done {R M : Term} (hR : IsRemainder R) (hM : Closed M) :
    ¬ BetaJoin
      (derivative R (blcCode M) (streamOf (blcCode ident) (.var 0)))
      (derivative R ([false, true] ++ blcCode M)
        (streamOf (blcCode ident) (.var 0))) := by
  intro he
  have h0 := completed hR hM (streamOf (blcCode ident) (.var 0))
  have h1 := one_pending hR hM ident (by decide) (.var 0)
  have hj := join_trans (join_symm h0) (join_trans he h1)
  exact lam_not_join_var _ _ hj

/-- The family of unfinished left spines carries arbitrarily many
pending right children. Each right child used below is the closed I. -/
def tags : Nat → List Bool
  | 0 => []
  | n + 1 => false :: true :: tags n

def tails : Nat → List Bool
  | 0 => []
  | n + 1 => blcCode ident ++ tails n

def comb (M : Term) : Nat → Term
  | 0 => M
  | n + 1 => .app (comb M n) ident

theorem tails_add (i j : Nat) : tails (i + j) = tails i ++ tails j := by
  induction i with
  | zero => simp only [Nat.zero_add, tails, List.nil_append]
  | succ i ih => simp only [Nat.succ_add, tails, ih, List.append_assoc]

theorem tails_snoc (i : Nat) : tails (i + 1) = tails i ++ blcCode ident := by
  simpa only [tails, List.append_nil] using tails_add i 1

theorem comb_closed {M : Term} (hM : Closed M) (k : Nat) : Closed (comb M k) := by
  induction k with
  | zero => exact hM
  | succ k ih => exact ⟨ih, by decide⟩

theorem code_comb (M : Term) (k : Nat) :
    blcCode (comb M k) = tags k ++ blcCode M ++ tails k := by
  induction k with
  | zero => simp only [comb, tags, tails, List.nil_append, List.append_nil]
  | succ k ih =>
    simp only [comb, blcCode, ih, tags, tails_snoc, List.cons_append,
      List.append_assoc]

theorem k_pending {R M : Term} (hR : IsRemainder R) (hM : Closed M)
    (k : Nat) (N : Term) :
    BetaJoin (derivative R (tags k ++ blcCode M) (streamOf (tails k) N)) N := by
  have h := hR.2 (comb M k) (comb_closed hM k) N
  simpa only [derivative, code_comb, streamOf_append] using h

theorem fewer_pending {R M : Term} (hR : IsRemainder R) (hM : Closed M)
    (i k : Nat) (N : Term) :
    BetaJoin (derivative R (tags i ++ blcCode M) (streamOf (tails (i + k)) N))
      (streamOf (tails k) N) := by
  simpa only [tails_add, streamOf_append] using
    k_pending hR hM i (streamOf (tails k) N)

/-- Arbitrarily many pairwise distinguishable pending-depth states.
Both readers are supplied the identical remaining stream. -/
theorem pending_depths_distinct {R M : Term} (hR : IsRemainder R)
    (hM : Closed M) (i k : Nat) (hk : 0 < k) :
    ¬ BetaJoin
      (derivative R (tags i ++ blcCode M) (streamOf (tails (i + k)) (.var 0)))
      (derivative R (tags (i + k) ++ blcCode M)
        (streamOf (tails (i + k)) (.var 0))) := by
  intro he
  have h0 := fewer_pending hR hM i k (.var 0)
  have h1 := k_pending hR hM (i + k) (.var 0)
  have hj := join_trans (join_symm h0) (join_trans he h1)
  cases k with
  | zero => omega
  | succ k => exact lam_not_join_var _ _ hj

/-- If a clean cut has a literal residual body B, it is itself an exact
remainder extractor. This prices the residual, not its source ancestor. -/
theorem clean_cut_body_two_nonlinear {R M B : Term}
    (hR : IsRemainder R) (hM : Closed M) (hB : FreeUnder 1 B)
    (hcut : ∀ S, BetaJoin
      (derivative R ([false, true] ++ blcCode M) S) (contract B S)) :
    2 ≤ SelfintLowerBound.nonlinear B := by
  apply SelfintZero.remainder_body_two_nonlinear B hB
  intro Q hQ N _
  exact join_trans (join_symm (hcut _)) (one_pending hR hM Q hQ N)

theorem clean_cut_body_not_chain {R M B : Term}
    (hR : IsRemainder R) (hM : Closed M) (hB : FreeUnder 1 B)
    (hcut : ∀ S, BetaJoin
      (derivative R ([false, true] ++ blcCode M) S) (contract B S)) :
    ¬ SelfintNonlinearChain.Chain B := by
  apply literal_remainder_body_not_chain B hB
  intro Q hQ N _
  exact join_trans (join_of_betas (.head (.beta _ _) (.refl _)))
    (join_trans (join_symm (hcut _)) (one_pending hR hM Q hQ N))

open QuoteOrigins

theorem marked_steps_erase {t u : Marked} (h : Marked.Steps t u) :
    Betas (Marked.erase t) (Marked.erase u) := by
  induction h with
  | refl => exact .refl _
  | step hs _ ih => exact .head (Marked.step_erase hs) ih

/-- At any uniform colored residual after APP + a closed left child,
the two required nonlinear binders have program origin. This applies
whether or not some irrelevant prefix data is still retained. It does
not assert that every reader reaches a prefix-free syntactic cut. -/
theorem marked_pending_has_code {R M : Term} (hR : IsRemainder R)
    (hM : Closed M) (b : Marked) (hb : FreeUnder 1 (Marked.erase b))
    (hs : Marked.Steps
      (.app (Marked.red R) (Marked.stream ([false, true] ++ blcCode M) (.var 0))) b) :
    2 ≤ Marked.redCount b ∧ ¬ SelfintNonlinearChain.Chain (Marked.erase b) := by
  have he : Betas (derivative R ([false, true] ++ blcCode M) (.var 0))
      (Marked.erase b) := by
    simpa only [derivative, Marked.erase, Marked.erase_red, Marked.erase_stream]
      using marked_steps_erase hs
  have hcut : ∀ S, BetaJoin
      (derivative R ([false, true] ++ blcCode M) S) (contract (Marked.erase b) S) := by
    intro S
    have hx := betas_subst he 0 S
    simpa only [derivative, contract, substDec, subst_streamOf,
      substDec_closed 0 S hR.1, if_true] using join_of_betas hx
  have hn := clean_cut_body_two_nonlinear hR hM hb hcut
  have hg := Marked.good_steps hs
    (show Marked.Good (.app (Marked.red R)
      (Marked.stream ([false, true] ++ blcCode M) (.var 0))) from
      ⟨Marked.red_good R, Marked.stream_good _ trivial⟩)
  exact ⟨Nat.le_trans hn (Marked.nonlinear_le_redCount (Marked.good_blueAffine hg)),
    clean_cut_body_not_chain hR hM hb hcut⟩

/-- The fixed rem70 syntax frame, leaving only its closed Q handler open. -/
def frame (q : Term) : Term := .lam
  (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))
    (.lam (.lam (.app (.var 0) (.app (.app (.var 1) q) (.var 0))))))

theorem frame_size (q : Term) :
    (blcCode (frame q)).length = (blcCode q).length + 34 := by
  simp [frame, blcCode, List.length_append, Nat.add_comm, Nat.add_left_comm]

theorem next_size : (blcCode SelfintRemainder.next).length = 36 := by decide

/-- Arithmetic part only. The semantic leaf-count premises for an opaque,
lambda-free handler body are proved in REPORT.md, not in this theorem. -/
theorem opaque_leaf_price (t u d : Nat) (ht : 1 ≤ t) (hu : 1 ≤ u)
    (hd : 4 ≤ d) (hbranch : 2 ≤ u ∨ 3 ≤ t) :
    36 ≤ 4 + 6 * t + 5 * u + 4 * d := by
  rcases hbranch with h | h <;> omega

/-- On an application with a zero-headed left child, tower45 returns
after removing only the first bit of that child. It has not reached the
left-child boundary, let alone preserved a right-child obligation. -/
theorem tower45_app_zero (r : Term) :
    Betas (.app SelfintTower45.reader (streamOf [false, true, false] r)) r := by
  refine betas_trans (betas_of_spineReds (SelfintTower45.unfold_reader _)) ?_
  refine betas_trans (SelfintTower45.zero _) ?_
  refine betas_trans (SelfintTower45.one _) ?_
  refine betas_trans
    (betas_appL SelfintTower45.context (betas_of_spineReds (skip_self 0 r))) ?_
  have h := spine_beta (shift 1 0 r) SelfintTower45.context
  have he : contract (shift 1 0 r) SelfintTower45.context = r := substDec_shift r _ 0
  rw [he] at h
  exact betas_of_spineReds h

/-- A complete extractor with exactly two nonlinear binders, even though
both nonlinear lambda subterms are closed in isolation. -/
def rem592 : Term := .app SelfintSharp.intL584 churchFalse

theorem rem592_contract : IsRemainder rem592 :=
  projection_remainder SelfintSharp.isSelfInterpreter_intL584

theorem rem592_size : (blcCode rem592).length = 592 := by
  rw [rem592, projection_size, SelfintSharp.intL584_length]

theorem rem592_two_nonlinear : SelfintLowerBound.nonlinear rem592 = 2 := by
  simp only [rem592, SelfintLowerBound.nonlinear,
    SelfintSharp.intL584_two_nonlinear]
  decide

theorem rem592_nonlinear_closed : SelfintSharp.NonlinearClosed rem592 := by
  exact ⟨SelfintSharp.intL584_nonlinear_closed, by decide⟩

end Blc.SelfintResidualControl
