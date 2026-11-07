/-
One-sided beta redexes exposed by a Boolean choice.

    b (lambda x.U) V A
      ~ (lambda x. b U ((shift V) x)) A

Both Church-tag specializations agree by beta alone, because the eta
expansion is immediately applied to A. This transformation costs exactly
5 + freeLeaves(V) extra bits; every ambient capture count is unchanged.
It is therefore a price transfer, not a source-dominance argument.

In arbitrary Plain contexts, with one such contraction and normal final
projections, the existing one-let lower bound gives
wire(NEXT) + freeLeaves(V) >= 93. In particular, an opposite operand with
at most one local free occurrence cannot produce a NEXT shorter than 92.
-/
import Blc.SelfintArchitecture6DelayedSharing

namespace Blc.SelfintArchitecture6OneSided
open Term SelfintLowerBound SelfintWireCost SelfintClass SelfintClassNext
  SelfintWiden SelfintWiden.OneLet SelfintControl

private theorem free_shift_cut (t : Term) (c d : Nat) (h : c ≤ d) :
    freeLeaves (d+1) (shift 1 c t) = freeLeaves d t := by
  induction t generalizing c d with
  | var n =>
      by_cases hn : c ≤ n
      · simp only [shift, if_pos hn, freeLeaves, Nat.add_le_add_iff_right]
      · simp [shift, hn, freeLeaves, show ¬ d+1≤n by omega, show ¬ d≤n by omega]
  | lam b ih => exact ih (c+1) (d+1) (by omega)
  | app f a ihf iha => simp only [shift, freeLeaves, ihf c d h, iha c d h]

/-- The tag-selecting abstraction is present on only the left or right.
q records the free-leaf count in the other operand at the occurrence. -/
inductive EtaStep : Nat → Term → Term → Nat → Prop
  | left (j : Nat) (u v a : Term) :
      EtaStep j (.app (.app (.app (.var j) (.lam u)) v) a)
        (.app (.lam (.app (.app (.var (j+1)) u)
          (.app (shift 1 0 v) (.var 0)))) a) (freeLeaves 0 v)
  | right (j : Nat) (u v a : Term) :
      EtaStep j (.app (.app (.app (.var j) v) (.lam u)) a)
        (.app (.lam (.app (.app (.var (j+1))
          (.app (shift 1 0 v) (.var 0))) u)) a) (freeLeaves 0 v)
  | lam {j b b' q} : EtaStep (j+1) b b' q → EtaStep j (.lam b) (.lam b') q
  | appL {j f f' q} (a : Term) : EtaStep j f f' q → EtaStep j (.app f a) (.app f' a) q
  | appR {j a a' q} (f : Term) : EtaStep j a a' q → EtaStep j (.app f a) (.app f a') q

theorem EtaStep.wire {j q : Nat} {t u : Term} (h : EtaStep j t u q) :
    wire u = wire t + 5 + q := by
  induction h with
  | left j b v a => simp only [wire_app, wire_lam, wire_var, wire_shift]; omega
  | right j b v a => simp only [wire_app, wire_lam, wire_var, wire_shift]; omega
  | lam h ih => simp only [wire_lam]; omega
  | appL a h ih => simp only [wire_app]; omega
  | appR f h ih => simp only [wire_app]; omega

theorem EtaStep.captures {j q : Nat} {t u : Term} (h : EtaStep j t u q) :
    ∀ d, freeLeaves d t = freeLeaves d u := by
  induction h with
  | left j b v a =>
      intro d
      simp only [freeLeaves, free_shift_cut v 0 d (Nat.zero_le d), Nat.add_le_add_iff_right]
      simp [show ¬ d+1≤0 by omega]
  | right j b v a =>
      intro d
      simp only [freeLeaves, free_shift_cut v 0 d (Nat.zero_le d), Nat.add_le_add_iff_right]
      simp [show ¬ d+1≤0 by omega]
  | lam h ih => intro d; exact ih (d+1)
  | appL a h ih => intro d; simp only [freeLeaves, ih]
  | appR f h ih => intro d; simp only [freeLeaves, ih]

theorem EtaStep.scope {j q : Nat} {t u : Term} (h : EtaStep j t u q) :
    ∀ n, FreeUnder n t → FreeUnder n u := by
  induction h with
  | left j b v a =>
      rintro n ⟨⟨⟨hj,hb⟩,hv⟩,ha⟩
      change j<n at hj
      exact ⟨⟨⟨by change j+1<n+1; omega, hb⟩,
        ⟨SelfintClassNext.shift_scope v 0 n hv, by change 0<n+1; omega⟩⟩, ha⟩
  | right j b v a =>
      rintro n ⟨⟨⟨hj,hv⟩,hb⟩,ha⟩
      change j<n at hj
      exact ⟨⟨⟨by change j+1<n+1; omega,
        ⟨SelfintClassNext.shift_scope v 0 n hv, by change 0<n+1; omega⟩⟩, hb⟩, ha⟩
  | lam h ih => intro n hn; exact ih (n+1) hn
  | appL a h ih => intro n hn; exact ⟨ih n hn.1, hn.2⟩
  | appR f h ih => intro n hn; exact ⟨hn.1, ih n hn.2⟩

private theorem applied_eta (v a : Term) :
    Betas (.app (.lam (.app (shift 1 0 v) (.var 0))) a) (.app v a) := by
  have hh := Betas.head (Beta.beta (.app (shift 1 0 v) (.var 0)) a) (.refl _)
  simpa only [contract, substDec, if_true, substDec_shift] using hh

private theorem left_join (first : Bool) (u v a : Term) :
    BetaJoin (.app (.app (.app (tagValue first) (.lam u)) v) a)
      (.app (.lam (.app (.app (tagValue first) u)
        (.app (shift 1 0 v) (.var 0)))) a) := by
  have hl := betas_appL a (select_beta first (.lam u) v)
  have hr := betas_appL a (betas_lam (select_beta first u (.app (shift 1 0 v) (.var 0))))
  cases first
  · exact ⟨_, hl, betas_trans hr (applied_eta v a)⟩
  · exact ⟨_, hl, hr⟩

private theorem right_join (first : Bool) (u v a : Term) :
    BetaJoin (.app (.app (.app (tagValue first) v) (.lam u)) a)
      (.app (.lam (.app (.app (tagValue first)
        (.app (shift 1 0 v) (.var 0))) u)) a) := by
  have hl := betas_appL a (select_beta first v (.lam u))
  have hr := betas_appL a (betas_lam (select_beta first (.app (shift 1 0 v) (.var 0)) u))
  cases first
  · exact ⟨_, hl, hr⟩
  · exact ⟨_, hl, betas_trans hr (applied_eta v a)⟩

private theorem subst_tag_shift (v : Term) (j : Nat) (first : Bool) :
    substDec (j+1) (tagValue first) (shift 1 0 v) =
      shift 1 0 (substDec j (tagValue first) v) := by
  simpa only [tagValue_shift] using
    (shift_substDec_lt v (tagValue first) j 0 (Nat.zero_le j)).symm

theorem EtaStep.semantic {j q : Nat} {t u : Term} (h : EtaStep j t u q)
    (first : Bool) :
    BetaJoin (substDec j (tagValue first) t) (substDec j (tagValue first) u) := by
  induction h with
  | left j b v a =>
      simpa only [substDec, if_true, tagValue_shift, subst_tag_shift,
        show (0 = j+1) = False by simp, if_false,
        show (0 > j+1) = False by simp] using
        left_join first (substDec (j+1) (tagValue first) b)
          (substDec j (tagValue first) v) (substDec j (tagValue first) a)
  | right j b v a =>
      simpa only [substDec, if_true, tagValue_shift, subst_tag_shift,
        show (0 = j+1) = False by simp, if_false,
        show (0 > j+1) = False by simp] using
        right_join first (substDec (j+1) (tagValue first) b)
          (substDec j (tagValue first) v) (substDec j (tagValue first) a)
  | lam h ih =>
      obtain ⟨w,ht,hu⟩ := ih
      exact ⟨.lam w, by simpa only [substDec, tagValue_shift] using betas_lam ht,
        by simpa only [substDec, tagValue_shift] using betas_lam hu⟩
  | appL a h ih => exact join_appL _ ih
  | appR f h ih => exact join_appR _ ih

theorem EtaStep.rigid {q : Nat} {b b' : Term} (hf : EtaStep 0 b b' q)
    (h : RigidNext (.lam b)) : RigidNext (.lam b') := by
  refine ⟨hf.scope 3 h.scope, fun first => ?_⟩
  have hstart : BetaJoin (.app (.lam b') (tagValue first))
      (substDec 0 (tagValue first) b') := join_of_betas (.head (.beta _ _) (.refl _))
  have hend : BetaJoin (.app (.lam b) (tagValue first))
      (substDec 0 (tagValue first) b) := join_of_betas (.head (.beta _ _) (.refl _))
  exact join_trans (join_appL (.var 2)
    (join_trans hstart (join_trans (join_symm (hf.semantic first)) (join_symm hend))))
    (h.law first)

theorem EtaStep.price {q : Nat} {b b' : Term} (hf : EtaStep 0 b b' q) (s : Nat) :
    sourcePrice s (.lam b') = sourcePrice s (.lam b) + 5 + q := by
  have hw := hf.wire
  have hc := hf.captures 1
  simp only [sourcePrice, wire_lam, freeLeaves, Nat.reduceAdd]
  rw [hc]
  omega

private theorem plain_shift {j : Nat} {t u v : Term} (h : Plain j t u v)
    (c : Nat) (hc : c ≤ j) :
    Plain (j+1) (shift 1 c t) (shift 1 c u) (shift 1 c v) := by
  induction h generalizing c with
  | var j n hn =>
      by_cases hh : c ≤ n
      · simpa only [shift, if_pos hh] using Plain.var (j+1) (n+1) (by omega)
      · simpa only [shift, if_neg hh] using Plain.var (j+1) n (by omega)
  | lam h ih => exact .lam (ih (c+1) (by omega))
  | app hf ha ihf iha => exact .app (ihf c hc) (iha c hc)
  | select hs ht ihs iht =>
      simpa only [shift, if_pos hc] using Plain.select (ihs c hc) (iht c hc)

/-- Exactly one one-sided tag-created contraction, inside arbitrary Plain
contexts; q is the local free-leaf count of its opposite operand. -/
inductive OneSided : Nat → Term → Term → Term → Nat → Prop
  | left {j b b0 b1 v v0 v1 a a0 a1} :
      Plain (j+1) b b0 b1 → Plain j v v0 v1 → Plain j a a0 a1 →
      OneSided j (.app (.app (.app (.var j) (.lam b)) v) a)
        (contract b0 a0) (.app v1 a1) (freeLeaves 0 v)
  | right {j b b0 b1 v v0 v1 a a0 a1} :
      Plain (j+1) b b0 b1 → Plain j v v0 v1 → Plain j a a0 a1 →
      OneSided j (.app (.app (.app (.var j) v) (.lam b)) a)
        (.app v0 a0) (contract b1 a1) (freeLeaves 0 v)
  | lam {j b u v q} : OneSided (j+1) b u v q → OneSided j (.lam b) (.lam u) (.lam v) q
  | appL {j f f0 f1 a a0 a1 q} : OneSided j f f0 f1 q → Plain j a a0 a1 →
      OneSided j (.app f a) (.app f0 a0) (.app f1 a1) q
  | appR {j f f0 f1 a a0 a1 q} : Plain j f f0 f1 → OneSided j a a0 a1 q →
      OneSided j (.app f a) (.app f0 a0) (.app f1 a1) q
  | selectL {j s s0 s1 t t0 t1 q} : OneSided j s s0 s1 q → Plain j t t0 t1 →
      OneSided j (.app (.app (.var j) s) t) s0 t1 q
  | selectR {j s s0 s1 t t0 t1 q} : Plain j s s0 s1 → OneSided j t t0 t1 q →
      OneSided j (.app (.app (.var j) s) t) s0 t1 q

theorem OneSided.factor {j q : Nat} {t u v : Term} (h : OneSided j t u v q) :
    ∃ t', EtaStep j t t' q ∧ Once j t' u v := by
  induction h with
  | @left j b b0 b1 v v0 v1 a a0 a1 hb hv ha =>
      refine ⟨_, .left _ _ _ _, ?_⟩
      have hh := Once.letNode
        (Plain.select hb (Plain.app (plain_shift hv 0 (Nat.zero_le j))
          (Plain.var (j+1) 0 (by omega)))) ha
      simpa only [contract, substDec, if_true, substDec_shift] using hh
  | @right j b b0 b1 v v0 v1 a a0 a1 hb hv ha =>
      refine ⟨_, .right _ _ _ _, ?_⟩
      have hh := Once.letNode
        (Plain.select (Plain.app (plain_shift hv 0 (Nat.zero_le j))
          (Plain.var (j+1) 0 (by omega))) hb) ha
      simpa only [contract, substDec, if_true, substDec_shift] using hh
  | lam h ih =>
      obtain ⟨b',hf,hb⟩ := ih
      exact ⟨_, .lam hf, .lam hb⟩
  | appL hf ha ih =>
      obtain ⟨f',hfactor,honce⟩ := ih
      exact ⟨_, .appL _ hfactor, .appL honce ha⟩
  | appR hf ha ih =>
      obtain ⟨a',hfactor,honce⟩ := ih
      exact ⟨_, .appR _ hfactor, .appR hf honce⟩
  | selectL hs ht ih =>
      obtain ⟨s',hfactor,honce⟩ := ih
      exact ⟨_, .appL _ (.appR _ hfactor), .selectL honce ht⟩
  | selectR hs ht ih =>
      obtain ⟨t',hfactor,honce⟩ := ih
      exact ⟨_, .appR _ hfactor, .selectR hs honce⟩

theorem one_sided_price_transfer {q : Nat} {b u v : Term} (h : RigidNext (.lam b))
    (hd : OneSided 0 b u v q) (hu : NFt u) (hv : NFt v) :
    93 ≤ wire (.lam b) + q := by
  obtain ⟨b',hf,hp⟩ := hd.factor
  have hb := once_next_bits (hf.rigid h) hp hu hv
  have hw := hf.wire
  simp only [wire_lam] at hb ⊢
  omega

theorem one_sided_small_operand_at_least_92 {q : Nat} {b u v : Term}
    (h : RigidNext (.lam b)) (hd : OneSided 0 b u v q) (hu : NFt u) (hv : NFt v)
    (hq : q ≤ 1) : 92 ≤ wire (.lam b) := by
  have hh := one_sided_price_transfer h hd hu hv
  omega

theorem one_sided_sub92_requires_two_free {q : Nat} {b u v : Term}
    (h : RigidNext (.lam b)) (hd : OneSided 0 b u v q) (hu : NFt u) (hv : NFt v)
    (hw : wire (.lam b) < 92) : 2 ≤ q := by
  have hh := one_sided_price_transfer h hd hu hv
  omega

#print axioms EtaStep.price
#print axioms one_sided_price_transfer
#print axioms one_sided_sub92_requires_two_free

end Blc.SelfintArchitecture6OneSided
