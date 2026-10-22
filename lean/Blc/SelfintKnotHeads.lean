/-
Lemma B steps (ii) and (iii) for the opaque two-head knot.
In the opaque two-head model, h is the free index 0 and occurs only as the
head of a two-argument spine h H J. If t is beta-joinable with h t t, neither
head can be closed: every head must contain a variable bound outside the
spine. Proof: an invariant (SG) saying that every occurrence of h heads a
spine whose tracked argument is a reduct of the closed head is preserved by
beta reduction; the common reduct h t1 t2 then makes t1 a closed reduct of t,
which confluence refutes because every reduct of h t t keeps h free.
`docs/classical/self-interpreter/class-bound.md`.
-/
import Blc.SelfintKnot
import Blc.SelfintWireCost

namespace Blc.SelfintKnotHeads
open Blc Term

/-- Every occurrence of the free index `k` heads a two-argument spine. With
`side = false` the spine's first argument is a reduct of `X`; with
`side = true` its second argument is. -/
inductive SG (X : Term) (side : Bool) : Nat → Term → Prop where
  | var {k n : Nat} : n ≠ k → SG X side k (.var n)
  | lam {k : Nat} {b : Term} : SG X side (k + 1) b → SG X side k (.lam b)
  | app {k : Nat} {f a : Term} : SG X side k f → SG X side k a →
      SG X side k (.app f a)
  | spineL {k : Nat} {x a : Term} : side = false → Betas X x →
      SG X side k a → SG X side k (.app (.app (.var k) x) a)
  | spineR {k : Nat} {x a : Term} : side = true → SG X side k x →
      Betas X a → SG X side k (.app (.app (.var k) x) a)

theorem betas_freeUnder {t u : Term} (h : Betas t u) (k : Nat)
    (ht : FreeUnder k t) : FreeUnder k u := by
  induction h with
  | refl => exact ht
  | head hb _ ih => exact ih (SelfintWireCost.beta_freeUnder hb k ht)

theorem freeUnder_mono : ∀ (t : Term) (k k' : Nat), FreeUnder k t → k ≤ k' →
    FreeUnder k' t := by
  intro t
  induction t with
  | var n => intro k k' h hk; simp only [FreeUnder] at h ⊢; omega
  | lam b ih => intro k k' h hk; exact ih (k + 1) (k' + 1) h (by omega)
  | app f a ihf iha => intro k k' h hk; exact ⟨ihf k k' h.1 hk, iha k k' h.2 hk⟩

theorem closed_shift {x : Term} (hx : FreeUnder 0 x) (c : Nat) :
    shift 1 c x = x := shift_of_freeUnder 1 x c 0 hx (Nat.zero_le c)

theorem closed_substDec {x : Term} (hx : FreeUnder 0 x) (j : Nat) (s : Term) :
    substDec j s x = x :=
  substDec_of_freeUnder x j s (freeUnder_mono x 0 j hx (Nat.zero_le j))

variable {X : Term} {side : Bool}

theorem sg_shift (hX : FreeUnder 0 X) {k : Nat} {t : Term} (h : SG X side k t) :
    ∀ c, c ≤ k → SG X side (k + 1) (shift 1 c t) := by
  induction h with
  | @var k n hn =>
      intro c hc
      simp only [shift]
      split
      · exact .var (by omega)
      · exact .var (by omega)
  | lam _ ih => intro c hc; exact .lam (ih (c + 1) (by omega))
  | app _ _ ihf iha => intro c hc; exact .app (ihf c hc) (iha c hc)
  | @spineL k x a hs hx ha iha =>
      intro c hc
      have hxc : FreeUnder 0 x := betas_freeUnder hx 0 hX
      have hk : shift 1 c (Term.var k) = .var (k + 1) := by
        simp only [shift]; split <;> first | rfl | omega
      show SG X side (k + 1) (.app (.app (shift 1 c (.var k)) (shift 1 c x)) (shift 1 c a))
      rw [hk, closed_shift hxc]
      exact .spineL hs hx (iha c hc)
  | @spineR k x a hs hx ha ihx =>
      intro c hc
      have hac : FreeUnder 0 a := betas_freeUnder ha 0 hX
      have hk : shift 1 c (Term.var k) = .var (k + 1) := by
        simp only [shift]; split <;> first | rfl | omega
      show SG X side (k + 1) (.app (.app (shift 1 c (.var k)) (shift 1 c x)) (shift 1 c a))
      rw [hk, closed_shift hac]
      exact .spineR hs (ihx c hc) ha

theorem substDec_var_succ (k j : Nat) (a : Term) (hj : j ≤ k) :
    substDec j a (.var (k + 1)) = .var k := by
  simp only [substDec]
  split
  · omega
  · split
    · rfl
    · omega

theorem sg_subst (hX : FreeUnder 0 X) {k' : Nat} {t : Term} (h : SG X side k' t) :
    ∀ k j a, k' = k + 1 → j ≤ k → SG X side k a →
      SG X side k (substDec j a t) := by
  induction h with
  | @var k' n hn =>
      intro k j a hk hj ha
      simp only [substDec]
      split
      · exact ha
      · split
        · exact .var (by omega)
        · exact .var (by omega)
  | lam _ ih =>
      intro k j a hk hj ha
      exact .lam (ih (k + 1) (j + 1) (shift 1 0 a) (by omega) (by omega)
        (sg_shift hX ha 0 (Nat.zero_le k)))
  | app _ _ ihf iha =>
      intro k j a hk hj ha
      exact .app (ihf k j a hk hj ha) (iha k j a hk hj ha)
  | @spineL k' x b hs hx hb ihb =>
      intro k j a hk hj ha
      subst hk
      have hxc : FreeUnder 0 x := betas_freeUnder hx 0 hX
      show SG X side k (.app (.app (substDec j a (.var (k + 1))) (substDec j a x))
        (substDec j a b))
      rw [substDec_var_succ k j a hj, closed_substDec hxc]
      exact .spineL hs hx (ihb k j a rfl hj ha)
  | @spineR k' x b hs hx hb ihx =>
      intro k j a hk hj ha
      subst hk
      have hbc : FreeUnder 0 b := betas_freeUnder hb 0 hX
      show SG X side k (.app (.app (substDec j a (.var (k + 1))) (substDec j a x))
        (substDec j a b))
      rw [substDec_var_succ k j a hj, closed_substDec hbc]
      exact .spineR hs (ihx k j a rfl hj ha) hb

/-- One beta step preserves SG; the second clause handles a partial spine
`h x` in function position (its argument stays SG). -/
theorem sg_beta (hX : FreeUnder 0 X) : ∀ (t : Term) (k : Nat) (u : Term), Beta t u →
    (SG X side k t → SG X side k u) ∧
    (∀ x, t = .app (.var k) x → SG X side k x →
      ∃ x', u = .app (.var k) x' ∧ SG X side k x' ∧ Beta x x') := by
  intro t
  induction t with
  | var n => intro k u h; cases h
  | lam b ih =>
      intro k u h
      cases h with
      | lam hb =>
          refine ⟨?_, ?_⟩
          · intro hs
            cases hs with
            | lam hb' => exact .lam ((ih (k + 1) _ hb).1 hb')
          · intro x heq; cases heq
  | app f a ihf iha =>
      intro k u h
      refine ⟨?_, ?_⟩
      · intro hs
        cases h with
        | beta b a' =>
            cases hs with
            | app hf ha =>
                cases hf with
                | lam hb => exact sg_subst hX hb k 0 a rfl (Nat.zero_le k) ha
        | appL _ hf =>
            cases hs with
            | app hfs has => exact .app ((ihf k _ hf).1 hfs) has
            | spineL hside hx has =>
                cases hf with
                | appL _ hv => cases hv
                | appR _ hx' => exact .spineL hside (betas_trans hx (.head hx' (.refl _))) has
            | spineR hside hxs hb =>
                obtain ⟨x', hu, hxs', _⟩ := (ihf k _ hf).2 _ rfl hxs
                subst hu
                exact .spineR hside hxs' hb
        | appR _ ha' =>
            cases hs with
            | app hfs has => exact .app hfs ((iha k _ ha').1 has)
            | spineL hside hx has => exact .spineL hside hx ((iha k _ ha').1 has)
            | spineR hside hxs hb =>
                exact .spineR hside hxs (betas_trans hb (.head ha' (.refl _)))
      · intro x heq hxs
        injection heq with hf hax
        subst hf; subst hax
        cases h with
        | appL _ hv => cases hv
        | appR _ ha' => exact ⟨_, rfl, (iha k _ ha').1 hxs, ha'⟩

theorem sg_betas (hX : FreeUnder 0 X) {t u : Term} (h : Betas t u) {k : Nat}
    (ht : SG X side k t) : SG X side k u := by
  induction h with
  | refl => exact ht
  | head hb _ ih => exact ih ((sg_beta hX _ k _ hb).1 ht)

theorem spine_betas {s u : Term} (h : Betas s u) :
    ∀ {n a b}, s = .app (.app (.var n) a) b →
      ∃ a' b', u = .app (.app (.var n) a') b' ∧ Betas a a' ∧ Betas b b' := by
  induction h with
  | refl s => intro n a b hs; exact ⟨a, b, hs, .refl a, .refl b⟩
  | head hb _ ih =>
      intro n a b heq
      subst heq
      cases hb with
      | appL _ hf =>
          cases hf with
          | appL _ hv => cases hv
          | appR _ ha =>
              obtain ⟨a', b', hu, haa, hbb⟩ := ih rfl
              exact ⟨a', b', hu, .head ha haa, hbb⟩
      | appR _ hb' =>
          obtain ⟨a', b', hu, haa, hbb⟩ := ih rfl
          exact ⟨a', b', hu, haa, .head hb' hbb⟩

/-- Every reduct of a term beta-joinable with h t t keeps h free: a closed
reduct t1 of t has a common reduct with h t1 t2, which would be both closed
and h-headed. -/
theorem no_closed_reduct {t t1 t2 : Term}
    (ht1 : Betas t t1) (htu : Betas t (.app (.app (.var 0) t1) t2))
    (hc : FreeUnder 0 t1) : False := by
  obtain ⟨z, h1z, huz⟩ := betas_confluent ht1 htu
  have hz : FreeUnder 0 z := betas_freeUnder h1z 0 hc
  obtain ⟨a', b', rfl, _, _⟩ := spine_betas huz rfl
  simp [FreeUnder] at hz

/-- Lemma B (ii), first head: if the only h-spine's first argument is a closed
term H (tracked through all reducts), t cannot be a fixed point of h - -. -/
theorem no_closed_first_head {t H : Term} (hH : FreeUnder 0 H)
    (hsg : SG H false 0 t) (hfix : BetaJoin t (.app (.app (.var 0) t) t)) : False := by
  obtain ⟨u, htu, hhu⟩ := hfix
  obtain ⟨t1, t2, rfl, h1, _⟩ := spine_betas hhu rfl
  have hsu := sg_betas hH htu hsg
  cases hsu with
  | app hf _ =>
      cases hf with
      | app hv _ => cases hv with | var hn => exact hn rfl
  | spineL _ hx _ => exact no_closed_reduct h1 htu (betas_freeUnder hx 0 hH)
  | spineR hs _ _ => cases hs

theorem no_closed_second_head {t J : Term} (hJ : FreeUnder 0 J)
    (hsg : SG J true 0 t) (hfix : BetaJoin t (.app (.app (.var 0) t) t)) : False := by
  obtain ⟨u, htu, hhu⟩ := hfix
  obtain ⟨t1, t2, rfl, _, h2⟩ := spine_betas hhu rfl
  have hsu := sg_betas hJ htu hsg
  cases hsu with
  | app hf _ =>
      cases hf with
      | app hv _ => cases hv with | var hn => exact hn rfl
  | spineL hs _ _ => cases hs
  | spineR _ _ hb =>
      obtain ⟨z, h1z, huz⟩ := betas_confluent h2 htu
      have hz : FreeUnder 0 z := betas_freeUnder h1z 0 (betas_freeUnder hb 0 hJ)
      obtain ⟨a', b', rfl, _, _⟩ := spine_betas huz rfl
      simp [FreeUnder] at hz

open SelfintLowerBound SelfintKnot in
/-- A binary fixed point t =beta h t t has no normal form. -/
theorem binary_fixedpoint_no_nf {t : Term}
    (h : BetaJoin t (.app (.app (.var 0) t) t)) : ¬ HasNormalForm t := by
  rintro ⟨n, htn, hnf⟩
  obtain ⟨u, htu, hhu⟩ := h
  have hun := betas_preserve_nf htu htn hnf
  have hhn : Betas (.app (.app (.var 0) t) t) n := betas_trans hhu hun
  have hh : Betas (.app (.app (.var 0) t) t) (.app (.app (.var 0) n) n) :=
    betas_app (betas_app (.refl _) htn) htn
  have hhnf : NormalForm (.app (.app (.var 0) n) n) := by
    intro w hw
    cases hw with
    | appL a hbad =>
        cases hbad with
        | appL _ hv => cases hv
        | appR _ hb => exact hnf _ hb
    | appR f hbad => exact hnf _ hbad
  have heq := normalForm_unique hhn hh hnf hhnf
  have hnodes := congrArg nodes heq
  simp only [nodes] at hnodes
  omega

open SelfintLowerBound SelfintKnot in
/-- Lemma B (i)+(iii), kernel part: a binary fixed point with h occurring
once has at least two nonlinear binders and ghost cost at least ten per
nonlinear binder. With the head theorems above (each head carries a leaf
bound outside the spine, taxed a resp. b) this gives ghost' >= 30 + a + b
whenever three or more binders are nonlinear. -/
theorem binary_fixedpoint_count {t : Term}
    (h : BetaJoin t (.app (.app (.var 0) t) t)) (hone : freeLeaves 0 t = 1) :
    2 ≤ nonlinear t ∧ 10 * nonlinear t ≤ ghostCost 0 t := by
  refine ⟨?_, ?_⟩
  · by_cases hsmall : nonlinear t ≤ 1
    · obtain ⟨n, htn, hnf⟩ := one_nonlinear_normalizes t hsmall
      exact (binary_fixedpoint_no_nf h ⟨n, htn, fun _ hb => nft_no_beta hnf hb⟩).elim
    · omega
  · have := nonlinear_ghost_bound t
    omega

open SelfintLowerBound SelfintKnot in
theorem three_nonlinear_thirty {t : Term}
    (h : BetaJoin t (.app (.app (.var 0) t) t)) (hone : freeLeaves 0 t = 1)
    (h3 : 3 ≤ nonlinear t) : 30 ≤ ghostCost 0 t := by
  have := (binary_fixedpoint_count h hone).2
  omega

/-- Non-vacuity of the hypothesis: the spine `h I J` under a binder, with the
first port the closed I and the second the bound variable, satisfies SG. -/
example : SG (.lam (.var 0)) false 0
    (.lam (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) :=
  .lam (.spineL rfl (.refl _) (.var (by decide)))

example : SG (.lam (.var 0)) true 0
    (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) :=
  .lam (.spineR rfl (.var (by decide)) (.refl _))

end Blc.SelfintKnotHeads

#print axioms Blc.SelfintKnotHeads.no_closed_first_head
#print axioms Blc.SelfintKnotHeads.no_closed_second_head
#print axioms Blc.SelfintKnotHeads.binary_fixedpoint_count
#print axioms Blc.SelfintKnotHeads.three_nonlinear_thirty
