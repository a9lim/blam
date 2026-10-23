/-
Common-context factoring for arbitrary Boolean-controlled sharing.

This is a source-normal-form theorem, with no restriction on beta redexes,
helper functions, or number of lets in the duplicated context. Factoring
`b (C[u]) (C[v])` to `C[b u v]` saves `C.cost - holeDepth C` wire bits;
the tag index follows the context binders. Every nonempty context gives a
strict saving and ambient free-leaf counts never increase.

In particular, duplicated common let environments of arbitrary length are
excluded from a globally minimum literal rigid NEXT. Already-shared
functions, and substitutions that create different contexts in the two
projections, remain outside this normalization theorem. No global NEXT
price frontier is claimed here.
-/
import Blc.SelfintArchitecture6DelayedSharing

namespace Blc.SelfintArchitecture7SharingContexts
open Term SelfintLowerBound SelfintWireCost SelfintClass SelfintClassNext
  SelfintWiden SelfintControl

def choice (j : Nat) (u v : Term) : Term := .app (.app (.var j) u) v

/-- One source-improving Boolean factoring step, at any depth. The siblings
may contain arbitrary redexes, tag uses, or nonlinear helper functions. -/
inductive Step : Nat → Term → Term → Nat → Prop
  | commonLam (j : Nat) (u v : Term) :
      Step j (choice j (.lam u) (.lam v)) (.lam (choice (j+1) u v)) 1
  | commonRight (j : Nat) (f g a : Term) :
      Step j (choice j (.app f a) (.app g a)) (.app (choice j f g) a) (wire a+2)
  | commonLeft (j : Nat) (f a b : Term) :
      Step j (choice j (.app f a) (.app f b)) (.app f (choice j a b)) (wire f+2)
  | diagonal (j : Nat) (u : Term) : Step j (choice j u u) u (j+6+wire u)
  | lam {j t u g} : Step (j+1) t u g → Step j (.lam t) (.lam u) g
  | appL {j t u g} (a : Term) : Step j t u g → Step j (.app t a) (.app u a) g
  | appR {j t u g} (f : Term) : Step j t u g → Step j (.app f t) (.app f u) g

theorem Step.positive {j g : Nat} {t u : Term} (h : Step j t u g) : 0 < g := by
  induction h <;> omega

theorem Step.wire {j g : Nat} {t u : Term} (h : Step j t u g) :
    wire t = wire u + g := by
  induction h <;> simp only [choice, wire_app, wire_lam, wire_var] at * <;> omega

theorem Step.captures {j g : Nat} {t u : Term} (h : Step j t u g) :
    ∀ d, freeLeaves d u ≤ freeLeaves d t := by
  induction h with
  | commonLam j u v =>
      intro d
      simp only [choice, freeLeaves, Nat.add_le_add_iff_right]
      exact Nat.le_refl _
  | commonRight j f g a => intro d; simp only [choice, freeLeaves]; omega
  | commonLeft j f a b => intro d; simp only [choice, freeLeaves]; omega
  | diagonal j u => intro d; simp only [choice, freeLeaves]; omega
  | lam h ih => intro d; exact ih (d+1)
  | appL a h ih => intro d; have := ih d; simp only [freeLeaves]; omega
  | appR f h ih => intro d; have := ih d; simp only [freeLeaves]; omega

theorem Step.scope {j g : Nat} {t u : Term} (h : Step j t u g) :
    ∀ n, FreeUnder n t → FreeUnder n u := by
  induction h with
  | commonLam j u v =>
      rintro n ⟨⟨hj,hu⟩,hv⟩
      change j<n at hj
      exact ⟨⟨by change j+1<n+1; omega, hu⟩,hv⟩
  | commonRight j f g a =>
      rintro n ⟨⟨hj,hf,ha⟩,hg,_⟩
      exact ⟨⟨⟨hj,hf⟩,hg⟩,ha⟩
  | commonLeft j f a b =>
      rintro n ⟨⟨hj,hf,ha⟩,_,hb⟩
      exact ⟨hf,⟨hj,ha⟩,hb⟩
  | diagonal j u => rintro n ⟨⟨_,hu⟩,_⟩; exact hu
  | lam h ih => intro n hn; exact ih (n+1) hn
  | appL a h ih => intro n hn; exact ⟨ih n hn.1,hn.2⟩
  | appR f h ih => intro n hn; exact ⟨hn.1,ih n hn.2⟩

private theorem join_lam {t u : Term} (h : BetaJoin t u) :
    BetaJoin (.lam t) (.lam u) := by
  obtain ⟨w,ht,hu⟩ := h
  exact ⟨.lam w,betas_lam ht,betas_lam hu⟩

theorem Step.semantic {j g : Nat} {t u : Term} (h : Step j t u g) (first : Bool) :
    BetaJoin (substDec j (tagValue first) t) (substDec j (tagValue first) u) := by
  induction h with
  | commonLam j u v =>
      exact SelfintArchitecture6DelayedSharing.Factor.semantic (.root j u v) first
  | commonRight j f g a =>
      simp only [choice,substDec,if_true]
      refine ⟨_,select_beta first _ _,?_⟩
      cases first <;> exact betas_appL _ (select_beta _ _ _)
  | commonLeft j f a b =>
      simp only [choice,substDec,if_true]
      refine ⟨_,select_beta first _ _,?_⟩
      cases first <;> exact betas_appR _ (select_beta _ _ _)
  | diagonal j u =>
      simp only [choice,substDec,if_true]
      refine ⟨_,?_,.refl _⟩
      cases first <;> exact select_beta _ _ _
  | lam h ih => simpa only [substDec,tagValue_shift] using join_lam ih
  | appL a h ih => exact join_appL _ ih
  | appR f h ih => exact join_appR _ ih

/-- Finite factoring traces. The gain is exact, not a per-step estimate. -/
inductive Steps (j : Nat) : Term → Term → Nat → Prop
  | refl (t : Term) : Steps j t t 0
  | head {t u v g h} : Step j t u g → Steps j u v h → Steps j t v (g+h)

theorem Steps.wire {j g : Nat} {t u : Term} (h : Steps j t u g) :
    wire t = wire u + g := by
  induction h with
  | refl => omega
  | head hs ht ih => have := hs.wire; omega

theorem Steps.captures {j g : Nat} {t u : Term} (h : Steps j t u g) :
    ∀ d, freeLeaves d u ≤ freeLeaves d t := by
  induction h with
  | refl => intro d; exact Nat.le_refl _
  | head hs ht ih => intro d; exact Nat.le_trans (ih d) (hs.captures d)

theorem Steps.scope {j g : Nat} {t u : Term} (h : Steps j t u g) :
    ∀ n, FreeUnder n t → FreeUnder n u := by
  induction h with
  | refl => intro n hn; exact hn
  | head hs ht ih => intro n hn; exact ih n (hs.scope n hn)

theorem Steps.semantic {j g : Nat} {t u : Term} (h : Steps j t u g) (first : Bool) :
    BetaJoin (substDec j (tagValue first) t) (substDec j (tagValue first) u) := by
  induction h with
  | refl => exact ⟨_,.refl _,.refl _⟩
  | head hs ht ih => exact join_trans (hs.semantic first) ih

theorem Steps.lam {j g : Nat} {t u : Term} (h : Steps (j+1) t u g) :
    Steps j (.lam t) (.lam u) g := by
  induction h with
  | refl => exact .refl _
  | head hs ht ih => exact .head (.lam hs) ih

theorem Steps.appL {j g : Nat} {t u : Term} (h : Steps j t u g) (a : Term) :
    Steps j (.app t a) (.app u a) g := by
  induction h with
  | refl => exact .refl _
  | head hs ht ih => exact .head (.appL a hs) ih

theorem Steps.appR {j g : Nat} {t u : Term} (h : Steps j t u g) (f : Term) :
    Steps j (.app f t) (.app f u) g := by
  induction h with
  | refl => exact .refl _
  | head hs ht ih => exact .head (.appR f hs) ih

theorem Steps.rigid {g : Nat} {b b' : Term} (hf : Steps 0 b b' g)
    (h : RigidNext (.lam b)) : RigidNext (.lam b') := by
  refine ⟨hf.scope 3 h.scope,fun first => ?_⟩
  have hstart : BetaJoin (.app (.lam b') (tagValue first))
      (substDec 0 (tagValue first) b') := join_of_betas (.head (.beta _ _) (.refl _))
  have hend : BetaJoin (.app (.lam b) (tagValue first))
      (substDec 0 (tagValue first) b) := join_of_betas (.head (.beta _ _) (.refl _))
  exact join_trans (join_appL (.var 2)
    (join_trans hstart (join_trans (join_symm (hf.semantic first)) (join_symm hend))))
    (h.law first)

theorem Steps.price {g : Nat} {b b' : Term} (hf : Steps 0 b b' g) (s : Nat) :
    sourcePrice s (.lam b') + g ≤ sourcePrice s (.lam b) := by
  have hw := hf.wire
  have hc := Nat.mul_le_mul_left s (hf.captures 1)
  simp only [sourcePrice,wire_lam,freeLeaves,Nat.reduceAdd]
  omega

theorem minimum_no_steps {s g : Nat} {b b' : Term}
    (hm : MinimumRigidNext s (.lam b)) (hg : 0 < g) : ¬ Steps 0 b b' g := by
  intro hf
  have hp := hm.price (.lam b') (hf.rigid hm.laws)
  have he := hf.price s
  omega

theorem minimum_no_step {s g : Nat} {b b' : Term}
    (hm : MinimumRigidNext s (.lam b)) : ¬ Step 0 b b' g := by
  intro hf
  exact minimum_no_steps hm hf.positive (by simpa using Steps.head hf (.refl _))

def holeDepth : Context → Nat
  | .hole => 0
  | .lam C => holeDepth C+1
  | .appL C _ => holeDepth C
  | .appR _ C => holeDepth C

def gain : Context → Nat
  | .hole => 0
  | .lam C => gain C+1
  | .appL C a => gain C+wire a+2
  | .appR f C => gain C+wire f+2

theorem gain_depth (C : Context) : gain C+holeDepth C = C.cost := by
  induction C <;> simp only [gain,holeDepth,Context.cost] at * <;> omega

theorem gain_positive {C : Context} (hc : C ≠ .hole) : 0 < gain C := by
  cases C <;> simp only [gain] at * <;> first | exact (hc rfl).elim | omega

/-- A whole arbitrary common context factors in one finite trace. The
context can include beta-redexes and arbitrarily many nested shared lets. -/
theorem factor_context (C : Context) (j : Nat) (u v : Term) :
    Steps j (choice j (C.fill u) (C.fill v))
      (C.fill (choice (j+holeDepth C) u v)) (gain C) := by
  induction C generalizing j with
  | hole => exact .refl _
  | lam C ih =>
      have hh := Steps.head (.commonLam j (C.fill u) (C.fill v)) ((ih (j+1)).lam)
      simpa only [Context.fill,holeDepth,gain,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using hh
  | appL C a ih =>
      have hh := Steps.head (.commonRight j (C.fill u) (C.fill v) a) ((ih j).appL a)
      simpa only [Context.fill,holeDepth,gain,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using hh
  | appR f C ih =>
      have hh := Steps.head (.commonLeft j f (C.fill u) (C.fill v)) ((ih j).appR f)
      simpa only [Context.fill,holeDepth,gain,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using hh

/-- Leaves in the fixed part of the context, counted at the actual local
cutoff. References to earlier helper binders are kept distinct from ambient
captures by advancing the cutoff through lambdas. -/
def fixedLeaves (d : Nat) : Context → Nat
  | .hole => 0
  | .lam C => fixedLeaves (d+1) C
  | .appL C a => fixedLeaves d C+freeLeaves d a
  | .appR f C => freeLeaves d f+fixedLeaves d C

theorem free_fill (C : Context) (t : Term) (d : Nat) :
    freeLeaves d (C.fill t) = freeLeaves (d+holeDepth C) t+fixedLeaves d C := by
  induction C generalizing d with
  | hole => simp [Context.fill,holeDepth,fixedLeaves]
  | lam C ih =>
      simpa only [Context.fill,holeDepth,fixedLeaves,freeLeaves,
        Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using ih (d+1)
  | appL C a ih => simp only [Context.fill,holeDepth,fixedLeaves,freeLeaves,ih]; omega
  | appR f C ih => simp only [Context.fill,holeDepth,fixedLeaves,freeLeaves,ih]; omega

/-- The whole-context transformation saves exactly one copy of every
fixed-side capture. This is stronger than capture monotonicity. -/
theorem factor_context_captures (C : Context) (j d : Nat) (u v : Term) :
    freeLeaves d (choice j (C.fill u) (C.fill v)) =
      freeLeaves d (C.fill (choice (j+holeDepth C) u v))+fixedLeaves d C := by
  rw [free_fill]
  simp only [choice,freeLeaves,free_fill,Nat.add_le_add_iff_right]
  omega

theorem factor_context_price (C : Context) (u v : Term) (s : Nat) :
    sourcePrice s (.lam (choice 0 (C.fill u) (C.fill v))) =
      sourcePrice s (.lam (C.fill (choice (holeDepth C) u v)))+
        gain C+s*fixedLeaves 1 C := by
  have hw := (factor_context C 0 u v).wire
  have hc := factor_context_captures C 0 1 u v
  simp only [Nat.zero_add] at hw hc
  simp only [sourcePrice,wire_lam,freeLeaves,Nat.reduceAdd,hw,hc,Nat.mul_add]
  omega

theorem Steps.fill (C : Context) {j g : Nat} {t u : Term}
    (h : Steps (j+holeDepth C) t u g) : Steps j (C.fill t) (C.fill u) g := by
  induction C generalizing j with
  | hole => exact h
  | lam C ih =>
      apply Steps.lam
      apply ih
      simpa only [holeDepth,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using h
  | appL C a ih => exact (ih h).appL a
  | appR f C ih => exact (ih h).appR f

/-- The exact price law inside another context. Only leaves free outside
that outer context pay the capture tax; internal helper captures do not. -/
theorem factor_context_price_at (D C : Context) (u v : Term) (s : Nat) :
    sourcePrice s (.lam (D.fill (choice (holeDepth D) (C.fill u) (C.fill v)))) =
      sourcePrice s (.lam (D.fill (C.fill
        (choice (holeDepth D+holeDepth C) u v))))+
          gain C+s*fixedLeaves (1+holeDepth D) C := by
  have hw := (factor_context C (holeDepth D) u v).wire
  have hc := factor_context_captures C (holeDepth D) (1+holeDepth D) u v
  simp only [wire_fill] at hw
  simp only [free_fill] at hc
  simp only [sourcePrice,wire_lam,wire_fill,freeLeaves,Nat.reduceAdd,free_fill,
    Nat.mul_add]
  have he := congrArg (fun n => s*n) hc
  simp only [Nat.mul_add] at he
  omega

/-- Factoring a common binder environment is strictly profitable at every
capture tax, including the two frontier taxes zero and three. -/
theorem minimum_no_common_context {s : Nat} (C : Context) (u v : Term)
    (hc : C ≠ .hole)
    (hm : MinimumRigidNext s (.lam (choice 0 (C.fill u) (C.fill v)))) : False :=
  minimum_no_steps hm (gain_positive hc) (factor_context C 0 u v)

theorem minimum_no_common_context_at {s : Nat} (D C : Context) (u v : Term)
    (hc : C ≠ .hole)
    (hm : MinimumRigidNext s
      (.lam (D.fill (choice (holeDepth D) (C.fill u) (C.fill v))))) : False := by
  have hh := factor_context C (0+holeDepth D) u v
  have hf := hh.fill (j:=0) D
  simp only [Nat.zero_add] at hf
  exact minimum_no_steps hm (gain_positive hc) hf

/-- A nest of lets. Each argument lives in its actual local frame, so later
arguments may depend on all earlier bound helpers. -/
def letContext : List Term → Context
  | [] => .hole
  | a::as => .appL (.lam (letContext as)) a

def letGain : List Term → Nat
  | [] => 0
  | a::as => wire a+3+letGain as

theorem letContext_depth (as : List Term) : holeDepth (letContext as) = as.length := by
  induction as <;> simp [letContext,holeDepth, *]

theorem letContext_gain (as : List Term) : gain (letContext as) = letGain as := by
  induction as <;> simp only [letContext,gain,letGain] at * <;> omega

theorem letGain_at_least (as : List Term) : 5*as.length ≤ letGain as := by
  induction as with
  | nil => simp [letGain]
  | cons a as ih =>
      have ha := OneLet.wire_two a
      simp only [List.length_cons,letGain]
      omega

/-- Arbitrarily many dependent let bindings fuse across a Boolean choice;
each fused binding saves its entire argument plus three wire bits. -/
theorem factor_let_environment (as : List Term) (j : Nat) (u v : Term) :
    Steps j (choice j ((letContext as).fill u) ((letContext as).fill v))
      ((letContext as).fill (choice (j+as.length) u v)) (letGain as) := by
  simpa only [letContext_depth,letContext_gain] using factor_context (letContext as) j u v

def Normal (j : Nat) (t : Term) : Prop := ∀ u g, ¬ Step j t u g

/-- Factoring terminates by exact source size, for every term. This is an
existence theorem; it performs no bounded source enumeration. -/
theorem normal_form (j : Nat) (t : Term) :
    ∃ u g, Steps j t u g ∧ Normal j u := by
  generalize he : wire t = n
  induction n using Nat.strongRecOn generalizing t with
  | ind n ih =>
      by_cases hn : Normal j t
      · exact ⟨t,0,.refl _,hn⟩
      · have hx : ∃ u g, Step j t u g := by
          apply Classical.byContradiction
          intro hx
          exact hn (fun u g hs => hx ⟨u,g,hs⟩)
        obtain ⟨v,g,hs⟩ := hx
        have hw := hs.wire
        have hg := hs.positive
        obtain ⟨u,k,ht,hu⟩ := ih (wire v) (by omega) v rfl
        exact ⟨u,g+k,.head hs ht,hu⟩

theorem rigid_normal_form {b : Term} (h : RigidNext (.lam b)) :
    ∃ b' g, Steps 0 b b' g ∧ RigidNext (.lam b') ∧ Normal 0 b' ∧
      ∀ s, sourcePrice s (.lam b')+g ≤ sourcePrice s (.lam b) := by
  obtain ⟨b',g,hf,hn⟩ := normal_form 0 b
  exact ⟨b',g,hf,hf.rigid h,hn,hf.price⟩

#print axioms factor_let_environment
#print axioms minimum_no_common_context
#print axioms factor_context_price
#print axioms rigid_normal_form

end Blc.SelfintArchitecture7SharingContexts
