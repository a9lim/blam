/-
Boolean-selected functions can create beta redexes only after selection.
For arbitrary U,V, factoring their common leading lambda is valid at both
Church tags:

    b (lambda x.U) (lambda x.V)  ~  lambda x.b U V.

The right source saves exactly one bit and preserves every free-leaf count.
This contextual rewrite therefore cannot occur in a globally minimum rigid
NEXT. With one selected shared-argument contraction and otherwise Plain
projections, the existing one-let theorem gives a 99-bit lower bound.

The rewrite is only a Boolean-specialization equivalence, not an unrestricted
beta equality in b. Multiple arbitrary sharing contractions remain open.
-/
import Blc.SelfintWiden
import Blc.SelfintControl

namespace Blc.SelfintArchitecture6DelayedSharing
open Term SelfintLowerBound SelfintWireCost SelfintClass SelfintClassNext
  SelfintWiden SelfintWiden.OneLet SelfintControl

/-- Factor one common abstraction, in any context below the tag binder.
The tracked de Bruijn index increases through context lambdas. -/
inductive Factor : Nat → Term → Term → Prop
  | root (j : Nat) (u v : Term) :
      Factor j (.app (.app (.var j) (.lam u)) (.lam v))
        (.lam (.app (.app (.var (j+1)) u) v))
  | lam {j b b' : _} : Factor (j+1) b b' → Factor j (.lam b) (.lam b')
  | appL {j f f' : _} (a : Term) : Factor j f f' → Factor j (.app f a) (.app f' a)
  | appR {j a a' : _} (f : Term) : Factor j a a' → Factor j (.app f a) (.app f a')

theorem Factor.wire {j : Nat} {t u : Term} (h : Factor j t u) :
    wire t = wire u + 1 := by
  induction h with
  | root => simp only [wire_app, wire_lam, wire_var]; omega
  | lam h ih => simp only [wire_lam]; omega
  | appL a h ih => simp only [wire_app]; omega
  | appR f h ih => simp only [wire_app]; omega

theorem Factor.captures {j : Nat} {t u : Term} (h : Factor j t u) :
    ∀ d, freeLeaves d t = freeLeaves d u := by
  induction h with
  | root j a b =>
      intro d
      simp only [freeLeaves, Nat.add_le_add_iff_right]
  | lam h ih => intro d; exact ih (d+1)
  | appL a h ih => intro d; simp only [freeLeaves, ih]
  | appR f h ih => intro d; simp only [freeLeaves, ih]

theorem Factor.scope {j : Nat} {t u : Term} (h : Factor j t u) :
    ∀ n, FreeUnder n t → FreeUnder n u := by
  induction h with
  | root j a b =>
      rintro n ⟨⟨hj,ha⟩,hb⟩
      change j<n at hj
      exact ⟨⟨by change j+1<n+1; omega, ha⟩, hb⟩
  | lam h ih => intro n hn; exact ih (n+1) hn
  | appL a h ih => intro n hn; exact ⟨ih n hn.1, hn.2⟩
  | appR f h ih => intro n hn; exact ⟨hn.1, ih n hn.2⟩

private theorem join_lam {t u : Term} (h : BetaJoin t u) : BetaJoin (.lam t) (.lam u) := by
  obtain ⟨w,ht,hu⟩ := h
  exact ⟨.lam w, betas_lam ht, betas_lam hu⟩

/-- Both tag specializations agree, with arbitrary other syntax. -/
theorem Factor.semantic {j : Nat} {t u : Term} (h : Factor j t u) (first : Bool) :
    BetaJoin (substDec j (tagValue first) t) (substDec j (tagValue first) u) := by
  induction h with
  | root j a b =>
      simp only [substDec, if_true, tagValue_shift]
      cases first
      · exact ⟨_, select_beta false _ _, betas_lam (select_beta false _ _)⟩
      · exact ⟨_, select_beta true _ _, betas_lam (select_beta true _ _)⟩
  | lam h ih =>
      simpa only [substDec, tagValue_shift] using join_lam ih
  | appL a h ih => exact join_appL _ ih
  | appR f h ih => exact join_appR _ ih

theorem Factor.rigid {b b' : Term} (hf : Factor 0 b b')
    (h : RigidNext (.lam b)) : RigidNext (.lam b') := by
  refine ⟨hf.scope 3 h.scope, fun first => ?_⟩
  have hstart : BetaJoin (.app (.lam b') (tagValue first))
      (substDec 0 (tagValue first) b') := join_of_betas (.head (.beta _ _) (.refl _))
  have hend : BetaJoin (.app (.lam b) (tagValue first))
      (substDec 0 (tagValue first) b) := join_of_betas (.head (.beta _ _) (.refl _))
  exact join_trans (join_appL (.var 2)
    (join_trans hstart (join_trans (join_symm (hf.semantic first)) (join_symm hend))))
    (h.law first)

theorem Factor.price {b b' : Term} (hf : Factor 0 b b') (s : Nat) :
    sourcePrice s (.lam b) = sourcePrice s (.lam b') + 1 := by
  have hw := hf.wire
  have hc := hf.captures 1
  simp only [sourcePrice, wire_lam, freeLeaves, Nat.reduceAdd]
  rw [hc]
  omega

/-- In particular, the pattern is forbidden at any depth, with any trailing
arguments, in a global source-price minimum. No normality is assumed. -/
theorem minimum_no_common_lambda {s : Nat} {b b' : Term}
    (hm : MinimumRigidNext s (.lam b)) : ¬ Factor 0 b b' := by
  intro hf
  have hp := hm.price (.lam b') (hf.rigid hm.laws)
  have he := hf.price s
  omega

/-- One beta contraction exposed by a tag selecting between two functions.
The surrounding context and all three operands can contain arbitrary Plain
two-arm tests. Only the two final projections must later be normal. -/
inductive DelayedOnce : Nat → Term → Term → Term → Prop
  | root {j b b0 b1 c c0 c1 a a0 a1} :
      Plain (j+1) b b0 b1 → Plain (j+1) c c0 c1 → Plain j a a0 a1 →
      DelayedOnce j (.app (.app (.app (.var j) (.lam b)) (.lam c)) a)
        (contract b0 a0) (contract c1 a1)
  | lam {j b u v} : DelayedOnce (j+1) b u v →
      DelayedOnce j (.lam b) (.lam u) (.lam v)
  | appL {j f f0 f1 a a0 a1} : DelayedOnce j f f0 f1 → Plain j a a0 a1 →
      DelayedOnce j (.app f a) (.app f0 a0) (.app f1 a1)
  | appR {j f f0 f1 a a0 a1} : Plain j f f0 f1 → DelayedOnce j a a0 a1 →
      DelayedOnce j (.app f a) (.app f0 a0) (.app f1 a1)
  | selectL {j s s0 s1 t t0 t1} : DelayedOnce j s s0 s1 → Plain j t t0 t1 →
      DelayedOnce j (.app (.app (.var j) s) t) s0 t1
  | selectR {j s s0 s1 t t0 t1} : Plain j s s0 s1 → DelayedOnce j t t0 t1 →
      DelayedOnce j (.app (.app (.var j) s) t) s0 t1

theorem DelayedOnce.factor {j : Nat} {t u v : Term} (h : DelayedOnce j t u v) :
    ∃ t', Factor j t t' ∧ Once j t' u v := by
  induction h with
  | root hb hc ha =>
      exact ⟨_, .appL _ (.root _ _ _), .letNode (.select hb hc) ha⟩
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

/-- The delayed source is one bit larger than an already-priced one-let
source. This includes beta-normal sources with three-or-more-argument tags. -/
theorem delayed_next_at_least_99 {b u v : Term} (h : RigidNext (.lam b))
    (hd : DelayedOnce 0 b u v) (hu : NFt u) (hv : NFt v) :
    99 ≤ wire (.lam b) := by
  obtain ⟨b',hf,hp⟩ := hd.factor
  have hb := once_next_bits (hf.rigid h) hp hu hv
  have hw := hf.wire
  simp only [wire_lam] at hb ⊢
  omega

theorem delayed_next_frontier {b u v : Term} (h : RigidNext (.lam b))
    (hd : DelayedOnce 0 b u v) (hu : NFt u) (hv : NFt v) :
    FrontierPrice (.lam b) :=
  large_rigid_next_frontier h (by have := delayed_next_at_least_99 h hd hu hv; omega)

#print axioms minimum_no_common_lambda
#print axioms delayed_next_at_least_99
#print axioms delayed_next_frontier

end Blc.SelfintArchitecture6DelayedSharing
