/-
Branch-local Boolean specialization through arbitrary helper contexts.

The operation deletes a full test of a known Boolean; it never replaces
every occurrence of a helper by a literal K/F. Knowledge can pass through
a let whose argument is beta-equal to a Boolean in the current branch.
The helper may retain arbitrary bare uses, and the body may contain any
number of further dependent lets and source redexes.

Every deletion has an exact positive wire saving and never increases any
ambient free-leaf count. A guarded deletion therefore excludes its source
from a minimum literal rigid NEXT, at every nonnegative capture tax.
This does not close general sharing: discovering a known argument, or a
profitable transformation outside the stated rules, remains separate.
-/
import Blc.SelfintArchitecture7SharingContexts

namespace Blc.SelfintArchitecture7BranchAliases
open Term SelfintLowerBound SelfintWireCost SelfintClass SelfintClassNext
  SelfintWiden SelfintControl
open SelfintArchitecture7SharingContexts (choice holeDepth)

set_option maxRecDepth 8192

private theorem join_subst {t u : Term} (h : BetaJoin t u) (j : Nat) (s : Term) :
    BetaJoin (substDec j s t) (substDec j s u) := by
  obtain ⟨w,ht,hu⟩ := h
  exact ⟨substDec j s w,betas_subst ht j s,betas_subst hu j s⟩

private theorem join_lam {t u : Term} (h : BetaJoin t u) :
    BetaJoin (.lam t) (.lam u) := by
  obtain ⟨w,ht,hu⟩ := h
  exact ⟨.lam w,betas_lam ht,betas_lam hu⟩

private theorem tag_subst (first : Bool) (j : Nat) (s : Term) :
    substDec j s (tagValue first) = tagValue first := by
  cases first <;> simp [tagValue,substDec_churchTrue,substDec_churchFalse]

private theorem tags_commute (t : Term) (first second : Bool) (j : Nat) :
    substDec j (tagValue first) (substDec 0 (tagValue second) t) =
      substDec 0 (tagValue second) (substDec (j+1) (tagValue first) t) := by
  simpa only [tag_subst,tagValue_shift] using
    substDec_substDec t (tagValue second) (tagValue first) 0 j (Nat.zero_le j)

/-- A source-reducing step valid when variable j is the indicated Boolean.
`letKnown` changes the body under a proved Boolean argument without
substituting that argument into any other use of its bound helper. -/
inductive Under : Nat → Bool → Term → Term → Nat → Prop
  | select (j : Nat) (first : Bool) (u v : Term) :
      Under j first (choice j u v) (if first then u else v)
        (j+6+wire (if first then v else u))
  | lam {j first t u g} : Under (j+1) first t u g →
      Under j first (.lam t) (.lam u) g
  | appL {j first t u g} (a : Term) : Under j first t u g →
      Under j first (.app t a) (.app u a) g
  | appR {j first t u g} (f : Term) : Under j first t u g →
      Under j first (.app f t) (.app f u) g
  | letKnown {j first second t u g} (a : Term)
      (known : BetaJoin (substDec j (tagValue first) a) (tagValue second))
      (body : Under 0 second t u g) :
      Under j first (.app (.lam t) a) (.app (.lam u) a) g

theorem Under.positive {j first t u g} (h : Under j first t u g) : 0 < g := by
  induction h <;> omega

theorem Under.wire {j first t u g} (h : Under j first t u g) :
    wire t = wire u+g := by
  induction h with
  | select j first u v =>
      cases first <;> simp only [choice,wire_app,wire_var,Bool.false_eq_true,
        if_false,if_true] <;> omega
  | lam h ih => simp only [wire_lam]; omega
  | appL a h ih => simp only [wire_app]; omega
  | appR f h ih => simp only [wire_app]; omega
  | letKnown a known body ih => simp only [wire_app,wire_lam]; omega

theorem Under.captures {j first t u g} (h : Under j first t u g) :
    ∀ d, freeLeaves d u ≤ freeLeaves d t := by
  induction h with
  | select j first u v =>
      intro d
      cases first <;> simp only [choice,freeLeaves,Bool.false_eq_true,
        if_false,if_true] <;> omega
  | lam h ih => intro d; exact ih (d+1)
  | appL a h ih => intro d; have := ih d; simp only [freeLeaves]; omega
  | appR f h ih => intro d; have := ih d; simp only [freeLeaves]; omega
  | letKnown a known body ih =>
      intro d; have := ih (d+1); simp only [freeLeaves]; omega

theorem Under.scope {j first t u g} (h : Under j first t u g) :
    ∀ n, FreeUnder n t → FreeUnder n u := by
  induction h with
  | select j first u v =>
      intro n hn
      cases first <;> simp only [Bool.false_eq_true,if_false,if_true]
      · exact hn.2
      · exact hn.1.2
  | lam h ih => intro n hn; exact ih (n+1) hn
  | appL a h ih => intro n hn; exact ⟨ih n hn.1,hn.2⟩
  | appR f h ih => intro n hn; exact ⟨hn.1,ih n hn.2⟩
  | letKnown a known body ih => intro n hn; exact ⟨ih (n+1) hn.1,hn.2⟩

theorem Under.semantic {j first t u g} (h : Under j first t u g) :
    BetaJoin (substDec j (tagValue first) t) (substDec j (tagValue first) u) := by
  induction h with
  | select j first u v =>
      simp only [choice,substDec,if_true]
      cases first <;> exact join_of_betas (select_beta _ _ _)
  | lam h ih => simpa only [substDec,tagValue_shift] using join_lam ih
  | appL a h ih => exact join_appL _ ih
  | appR f h ih => exact join_appR _ ih
  | @letKnown j first second t u g a known body ih =>
      simp only [substDec,tagValue_shift]
      have ht : BetaJoin
          (.app (.lam (substDec (j+1) (tagValue first) t))
            (substDec j (tagValue first) a))
          (substDec 0 (tagValue second) (substDec (j+1) (tagValue first) t)) :=
        join_trans (join_appR _ known)
          (join_of_betas (.head (.beta _ _) (.refl _)))
      have hu : BetaJoin
          (.app (.lam (substDec (j+1) (tagValue first) u))
            (substDec j (tagValue first) a))
          (substDec 0 (tagValue second) (substDec (j+1) (tagValue first) u)) :=
        join_trans (join_appR _ known)
          (join_of_betas (.head (.beta _ _) (.refl _)))
      have hh := join_subst ih j (tagValue first)
      simp only [tags_commute] at hh
      exact join_trans ht (join_trans hh (join_symm hu))

/-- The common case: a helper is an alias of the currently known tag. -/
theorem Under.alias {first t u g} (h : Under 0 first t u g) (j : Nat) :
    Under j first (.app (.lam t) (.var j)) (.app (.lam u) (.var j)) g := by
  apply Under.letKnown (.var j) ?_ h
  simpa only [substDec,if_true] using join_refl (tagValue first)

/-- Ordinary contexts preserve knowledge of an outer tag. This includes
unrelated lets, whose arguments and bare helper uses remain untouched. -/
theorem Under.fill (C : Context) {j first t u g}
    (h : Under (j+holeDepth C) first t u g) :
    Under j first (C.fill t) (C.fill u) g := by
  induction C generalizing j with
  | hole => exact h
  | lam C ih =>
      apply Under.lam
      apply ih
      simpa only [holeDepth,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using h
  | appL C a ih => exact .appL a (ih h)
  | appR f C ih => exact .appR f (ih h)

/-- An unbounded chain x₁=b, x₂=x₁, ...; the final body lives under all
of those binders and may use any of them in addition to the selected test. -/
def aliasChain : Nat → Nat → Term → Term
  | 0, _, t => t
  | n+1, j, t => .app (.lam (aliasChain n 0 t)) (.var j)

theorem Under.alias_chain {first t u g} (h : Under 0 first t u g) (n j : Nat) :
    Under j first (aliasChain (n+1) j t) (aliasChain (n+1) j u) g := by
  induction n generalizing j with
  | zero => exact h.alias j
  | succ n ih => exact (ih 0).alias j

/-- A complete source step: a known-branch transformation is guarded by
its actual Boolean choice, so both Boolean projections are preserved. -/
inductive Step : Nat → Term → Term → Nat → Prop
  | first {j u u' g} (v : Term) : Under j true u u' g →
      Step j (choice j u v) (choice j u' v) g
  | second {j v v' g} (u : Term) : Under j false v v' g →
      Step j (choice j u v) (choice j u v') g
  | lam {j t u g} : Step (j+1) t u g → Step j (.lam t) (.lam u) g
  | appL {j t u g} (a : Term) : Step j t u g → Step j (.app t a) (.app u a) g
  | appR {j t u g} (f : Term) : Step j t u g → Step j (.app f t) (.app f u) g

theorem Step.positive {j t u g} (h : Step j t u g) : 0 < g := by
  induction h with
  | first v h => exact h.positive
  | second u h => exact h.positive
  | lam h ih => exact ih
  | appL a h ih => exact ih
  | appR f h ih => exact ih

theorem Step.wire {j t u g} (h : Step j t u g) : wire t = wire u+g := by
  induction h with
  | first v h => have := h.wire; simp only [choice,wire_app]; omega
  | second u h => have := h.wire; simp only [choice,wire_app]; omega
  | lam h ih => simp only [wire_lam]; omega
  | appL a h ih => simp only [wire_app]; omega
  | appR f h ih => simp only [wire_app]; omega

theorem Step.captures {j t u g} (h : Step j t u g) :
    ∀ d, freeLeaves d u ≤ freeLeaves d t := by
  induction h with
  | first v h => intro d; have := h.captures d; simp only [choice,freeLeaves]; omega
  | second u h => intro d; have := h.captures d; simp only [choice,freeLeaves]; omega
  | lam h ih => intro d; exact ih (d+1)
  | appL a h ih => intro d; have := ih d; simp only [freeLeaves]; omega
  | appR f h ih => intro d; have := ih d; simp only [freeLeaves]; omega

theorem Step.scope {j t u g} (h : Step j t u g) :
    ∀ n, FreeUnder n t → FreeUnder n u := by
  induction h with
  | first v h => intro n hn; exact ⟨⟨hn.1.1,h.scope n hn.1.2⟩,hn.2⟩
  | second u h => intro n hn; exact ⟨hn.1,h.scope n hn.2⟩
  | lam h ih => intro n hn; exact ih (n+1) hn
  | appL a h ih => intro n hn; exact ⟨ih n hn.1,hn.2⟩
  | appR f h ih => intro n hn; exact ⟨hn.1,ih n hn.2⟩

theorem Step.semantic {j t u g} (h : Step j t u g) (first : Bool) :
    BetaJoin (substDec j (tagValue first) t) (substDec j (tagValue first) u) := by
  induction h with
  | @first j u u' g v h =>
      simp only [choice,substDec,if_true]
      cases first with
      | false =>
          exact join_trans (join_of_betas (select_beta false _ _))
            (join_symm (join_of_betas (select_beta false _ _)))
      | true =>
          exact join_trans (join_of_betas (select_beta true _ _))
            (join_trans h.semantic (join_symm (join_of_betas (select_beta true _ _))))
  | @second j v v' g u h =>
      simp only [choice,substDec,if_true]
      cases first with
      | false =>
          exact join_trans (join_of_betas (select_beta false _ _))
            (join_trans h.semantic (join_symm (join_of_betas (select_beta false _ _))))
      | true =>
          exact join_trans (join_of_betas (select_beta true _ _))
            (join_symm (join_of_betas (select_beta true _ _)))
  | lam h ih => simpa only [substDec,tagValue_shift] using join_lam ih
  | appL a h ih => exact join_appL _ ih
  | appR f h ih => exact join_appR _ ih

theorem Step.rigid {b b' : Term} {g : Nat} (hs : Step 0 b b' g)
    (h : RigidNext (.lam b)) : RigidNext (.lam b') := by
  refine ⟨hs.scope 3 h.scope,fun first => ?_⟩
  have ht : BetaJoin (.app (.lam b) (tagValue first))
      (substDec 0 (tagValue first) b) := join_of_betas (.head (.beta _ _) (.refl _))
  have hu : BetaJoin (.app (.lam b') (tagValue first))
      (substDec 0 (tagValue first) b') := join_of_betas (.head (.beta _ _) (.refl _))
  exact join_trans (join_appL (.var 2)
    (join_trans hu (join_trans (join_symm (hs.semantic first)) (join_symm ht))))
    (h.law first)

theorem Step.price {b b' : Term} {g : Nat} (hs : Step 0 b b' g) (s : Nat) :
    sourcePrice s (.lam b')+g ≤ sourcePrice s (.lam b) := by
  have hw := hs.wire
  have hc := Nat.mul_le_mul_left s (hs.captures 1)
  simp only [sourcePrice,wire_lam,freeLeaves,Nat.reduceAdd]
  omega

theorem minimum_no_step {s g : Nat} {b b' : Term}
    (hm : MinimumRigidNext s (.lam b)) : ¬ Step 0 b b' g := by
  intro hs
  have hm' := hm.price (.lam b') (hs.rigid hm.laws)
  have hp := hs.price s
  have hg := hs.positive
  omega

/-- Arbitrarily many aliases do not hide a redundant true-branch test.
The retained branch u is unrestricted and may use any helper bare. -/
theorem minimum_no_true_alias_chain (n s : Nat) (u v other : Term)
    (hm : MinimumRigidNext s
      (.lam (choice 0 (aliasChain (n+1) 0 (choice 0 u v)) other))) : False := by
  have hu := (Under.select 0 true u v).alias_chain n 0
  simp only [if_true] at hu
  exact minimum_no_step hm (.first other hu)

/-- The corresponding false-branch result, with no cap on alias depth. -/
theorem minimum_no_false_alias_chain (n s : Nat) (u v other : Term)
    (hm : MinimumRigidNext s
      (.lam (choice 0 other (aliasChain (n+1) 0 (choice 0 u v))))) : False := by
  have hu := (Under.select 0 false u v).alias_chain n 0
  simp only [Bool.false_eq_true,if_false] at hu
  exact minimum_no_step hm (.second other hu)

/-- A fixed instance preserves bare uses of both helpers. In named form,
the rewritten arm is `let x=b; let y=x; (y x b) y`, becoming
`let x=b; let y=x; x y` inside b's true branch. Only the test is deleted. -/
theorem two_aliases_bare_uses :
    Step 0
      (choice 0 (aliasChain 2 0
        (.app (choice 0 (.var 1) (.var 2)) (.var 0))) (.var 1))
      (choice 0 (aliasChain 2 0 (.app (.var 1) (.var 0))) (.var 1)) 10 := by
  have ht := (Under.appL (.var 0) (Under.select 0 true (.var 1) (.var 2))).alias_chain 1 0
  exact .first (.var 1) ht

theorem two_aliases_bare_uses_preserved :
    occ 0 (.app (.var 1) (.var 0)) = 1 ∧
      occ 1 (.app (.var 1) (.var 0)) = 1 := by decide

#print axioms Under.semantic
#print axioms Under.alias_chain
#print axioms minimum_no_step
#print axioms minimum_no_true_alias_chain
#print axioms two_aliases_bare_uses

end Blc.SelfintArchitecture7BranchAliases
