/- Kernel certificates for rootcert2 ids 474,492,493,506,507.
H = λx y. x (y (y x)). Generic spine lemmas copied from combs2/Rootlet3.lean.
The fixed Core prefix reproduces itself after 44 head beta steps, with
additional arguments. No engine or native_decide evidence is used. -/
import Blc.SelfintClass
import Blc.SelfintProbe

namespace Blc.Combs3
open Term SelfintClass SelfintProbe

set_option maxRecDepth 10000

/-! ## Generic spine and pumping lemmas (copied from combs/Combs.lean) -/

def ap (f : Term) (as : List Term) : Term := as.foldl Term.app f

theorem ap_cons (f a : Term) (as : List Term) : ap f (a :: as) = ap (.app f a) as := rfl

theorem step_ap {g g' : Term} (hg : ∀ b, g ≠ .lam b) (h : headStep g = some g') :
    ∀ as, headStep (ap g as) = some (ap g' as)
  | [] => h
  | a :: as => by
      have h1 : headStep (.app g a) = some (.app g' a) := by
        cases g with
        | var n => simp [headStep] at h
        | lam b => exact absurd rfl (hg b)
        | app f x =>
            show (headStep (Term.app f x)).map (Term.app · a) = _
            rw [h]; rfl
      exact step_ap (fun b => by simp) h1 as

theorem beta_ap (b a : Term) (as : List Term) :
    headStep (ap (.app (.lam b) a) as) = some (ap (contract b a) as) :=
  step_ap (fun _ => by simp) rfl as

theorem hs_comp : ∀ {m n : Nat} {t u v : Term},
    headSteps m t = some u → headSteps n u = some v → headSteps (m + n) t = some v
  | 0, n, t, u, v, h1, h2 => by
      simp only [headSteps, Option.some.injEq] at h1; subst h1; simpa using h2
  | m + 1, n, t, u, v, h1, h2 => by
      simp only [headSteps, Option.bind_eq_some_iff] at h1
      obtain ⟨w, hw, hr⟩ := h1
      have := hs_comp hr h2
      rw [show m + 1 + n = (m + n) + 1 by omega]
      simp [headSteps, hw, this]

/-- A family that always advances by at least one head step is unsolvable. -/
theorem unsolvable_of_advance (S : Term → Prop)
    (adv : ∀ t, S t → ∃ k u, headSteps (k + 1) t = some u ∧ S u) :
    ∀ t, S t → ¬ Solvable t := by
  have far : ∀ n t, S t → ∃ m u, n ≤ m ∧ headSteps m t = some u := by
    intro n
    induction n with
    | zero => intro t _; exact ⟨0, t, Nat.le_refl _, rfl⟩
    | succ n ih =>
        intro t ht
        obtain ⟨k, u, hu, hSu⟩ := adv t ht
        obtain ⟨m, v, hm, hv⟩ := ih u hSu
        exact ⟨k + 1 + m, v, by omega, hs_comp hu hv⟩
  intro t ht ⟨k, p, hk, hp⟩
  obtain ⟨m, u, hm, hu⟩ := far (k + 1) t ht
  obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le hm
  obtain ⟨q, hq, hj⟩ := headSteps_add (m := k) (n := 1 + j) (by simpa [Nat.add_assoc] using hu)
  rw [hk] at hq; cases hq
  rw [show 1 + j = j + 1 by omega] at hj
  simp [headSteps, show headStep p = none from hp] at hj

theorem solvable_step {t u : Term} (h : headStep t = some u) (hs : Solvable t) : Solvable u := by
  obtain ⟨k, p, hk, hp⟩ := hs
  cases k with
  | zero =>
      simp only [headSteps, Option.some.injEq] at hk; subst hk
      simp [HNF, h] at hp
  | succ j =>
      simp only [headSteps, h, Option.bind_some] at hk
      exact ⟨j, p, hk, hp⟩

theorem solvable_steps : ∀ {n : Nat} {t u : Term},
    headSteps n t = some u → Solvable t → Solvable u
  | 0, t, u, h, hs => by
      simp only [headSteps, Option.some.injEq] at h; subst h; exact hs
  | n + 1, t, u, h, hs => by
      simp only [headSteps, Option.bind_eq_some_iff] at h
      obtain ⟨w, hw, hr⟩ := h
      exact solvable_steps hr (solvable_step hw hs)

def H : Term := .lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))))

theorem H_rule (u v : Term) (rs : List Term) :
    headSteps 2 (ap H (u :: v :: rs)) = some (ap u (.app v (.app v u) :: rs)) := by
  have h1 : headStep (ap H (u :: v :: rs)) =
      some (ap (.lam (.app (shift 1 0 u) (.app (.var 0) (.app (.var 0) (shift 1 0 u))))) (v :: rs)) := by
    rw [ap_cons]; unfold H; rw [beta_ap]; simp [contract, substDec]
  have h2 : headStep (ap (.lam (.app (shift 1 0 u) (.app (.var 0) (.app (.var 0) (shift 1 0 u)))))
      (v :: rs)) = some (ap u (.app v (.app v u) :: rs)) := by
    rw [ap_cons, beta_ap]; simp [contract, substDec, substDec_shift, ap_cons]
  simp [headSteps, h1, h2]

def t0 : Term := .app H H
def t1 : Term := .app H t0
def t2 : Term := .app H t1
def t3 : Term := .app H t2
def t4 : Term := .app t3 t0
def t5 : Term := .app t3 t4
def t6 : Term := .app t5 H
def t7 : Term := .app t4 t2
def t8 : Term := .app t4 t7
def t9 : Term := .app t8 t1
def t10 : Term := .app t8 t9
def t11 : Term := .app t10 t0
def t12 : Term := .app t10 t11
def t13 : Term := .app t12 H
def t14 : Term := .app t12 t13
def t15 : Term := .app t6 t14
def t16 : Term := .app t6 t15
def t17 : Term := .app t0 t2
def t18 : Term := .app t0 t17
def t19 : Term := .app t18 t1
def t20 : Term := .app t18 t19
def t21 : Term := .app t20 t0
def t22 : Term := .app t20 t21
def t23 : Term := .app t22 H
def t24 : Term := .app t22 t23
def t25 : Term := .app t7 t24
def t26 : Term := .app t7 t25
def t27 : Term := .app t17 H
def t28 : Term := .app t17 t27
def t29 : Term := .app t19 t28
def t30 : Term := .app t19 t29
def t31 : Term := .app t2 H
def t32 : Term := .app t2 t31
def t33 : Term := .app t27 t32
def t34 : Term := .app t27 t33
def t35 : Term := .app t31 t1
def t36 : Term := .app t31 t35
def t37 : Term := .app t36 t0
def t38 : Term := .app t36 t37
def t39 : Term := .app t38 H
def t40 : Term := .app t38 t39
def t41 : Term := .app t34 t40
def t42 : Term := .app t34 t41
def t43 : Term := .app t5 t6
def t44 : Term := .app t35 t43
def t45 : Term := .app t35 t44
def t46 : Term := .app t0 H
def t47 : Term := .app t46 H
def t48 : Term := .app t47 t1
def t49 : Term := .app t48 t43
def t50 : Term := .app t48 t49
def t51 : Term := .app t47 t48
def t52 : Term := .app t51 t0
def t53 : Term := .app t51 t52
def t54 : Term := .app t53 H
def t55 : Term := .app t0 t46
def t56 : Term := .app (.var 1) t55
def t57 : Term := .app (.var 1) t56
def t58 : Term := .app t46 t47
def t59 : Term := .app t57 t58
def t60 : Term := .app t57 t59
def t61 : Term := .app t53 t54
def t62 : Term := .app t60 t61
def t63 : Term := .app t60 t62
def t64 : Term := .app (.var 1) t32
def t65 : Term := .app (.var 1) t64
def t66 : Term := .app t65 t40
def t67 : Term := .app t65 t66
def t68 : Term := .app (.var 0) t32
def t69 : Term := .app (.var 0) t68
def t70 : Term := .app t69 t40
def t71 : Term := .app t69 t70
def t72 : Term := .app (.var 1) t43
def t73 : Term := .app (.var 1) t72
def t74 : Term := .app (.var 0) t43
def t75 : Term := .app (.var 0) t74

def Core : Term := ap H [t2, t4, t6]
def Extra : List Term := [t45, t37, t39, t42, t30, t21, t23, t26, t9, t11, t13, t16]
theorem advance (rs : List Term) :
    headSteps 44 (ap Core rs) = some (ap Core (Extra ++ rs)) := by
  have h0 := H_rule t2 t4 (t6 :: rs)
  have h1 := H_rule t1 t8 (t6 :: rs)
  have h2 := H_rule t0 t10 (t6 :: rs)
  have h3 := H_rule H t12 (t6 :: rs)
  have h4 := H_rule t14 t6 (rs)
  have h5 := H_rule t2 t0 (t7 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h6 := H_rule t1 t18 (t7 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h7 := H_rule t0 t20 (t7 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h8 := H_rule H t22 (t7 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h9 := H_rule t24 t7 (t9 :: t11 :: t13 :: t16 :: rs)
  have h10 := H_rule H t17 (t19 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h11 := H_rule t28 t19 (t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h12 := H_rule H t2 (t27 :: t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h13 := H_rule t32 t27 (t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h14 := H_rule t1 t31 (t34 :: t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h15 := H_rule t0 t36 (t34 :: t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h16 := H_rule H t38 (t34 :: t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h17 := H_rule t40 t34 (t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h18 := H_rule t1 H (t35 :: t37 :: t39 :: t42 :: t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h19 := H_rule t0 t3 (t35 :: t37 :: t39 :: t42 :: t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h20 := H_rule H t5 (t35 :: t37 :: t39 :: t42 :: t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  have h21 := H_rule t43 t35 (t37 :: t39 :: t42 :: t30 :: t21 :: t23 :: t26 :: t9 :: t11 :: t13 :: t16 :: rs)
  exact hs_comp h0 (hs_comp h1 (hs_comp h2 (hs_comp h3 (hs_comp h4 (hs_comp h5 (hs_comp h6 (hs_comp h7 (hs_comp h8 (hs_comp h9 (hs_comp h10 (hs_comp h11 (hs_comp h12 (hs_comp h13 (hs_comp h14 (hs_comp h15 (hs_comp h16 (hs_comp h17 (hs_comp h18 (hs_comp h19 (hs_comp h20 (h21)))))))))))))))))))))

def Fam (t : Term) : Prop := ∃ rs, t = ap Core rs

theorem core_unsolvable (rs : List Term) : ¬ Solvable (ap Core rs) := by
  refine unsolvable_of_advance Fam ?_ _ ⟨rs, rfl⟩
  rintro t ⟨rs, rfl⟩
  exact ⟨43, _, advance rs, Extra ++ rs, rfl⟩

def L474 : Term := .lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))
def L492 : Term := .lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))
def L506 : Term := .lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))

def r474 : Term := .app (.app (.app L474 H) (.var 1)) (.var 0)
theorem r474_base : headSteps 29 r474 = some (ap Core (t50 :: t52 :: t54 :: t63 :: (.var 0) :: [])) := by decide
theorem r474_unsolvable : ¬ Solvable r474 :=
  fun h => core_unsolvable _ (solvable_steps r474_base h)
theorem zero474_unsolvable : ¬ Solvable (.app r474 Z) :=
  unsolvable_app r474_unsolvable Z
theorem zero474_not_join : ¬ BetaJoin (.app r474 Z) zeroOut := by
  intro h
  exact zero474_unsolvable ((solvable_join h).mpr ⟨0, _, rfl, rfl⟩)
theorem reject474 : ¬ Reader r474 := fun h => zero474_not_join h.zero

def r492 : Term := .app (.app (.app L492 H) (.var 1)) (.var 0)
theorem r492_base : headSteps 23 r492 = some (ap Core (t45 :: t37 :: t39 :: t67 :: (.var 0) :: [])) := by decide
theorem r492_unsolvable : ¬ Solvable r492 :=
  fun h => core_unsolvable _ (solvable_steps r492_base h)
theorem zero492_unsolvable : ¬ Solvable (.app r492 Z) :=
  unsolvable_app r492_unsolvable Z
theorem zero492_not_join : ¬ BetaJoin (.app r492 Z) zeroOut := by
  intro h
  exact zero492_unsolvable ((solvable_join h).mpr ⟨0, _, rfl, rfl⟩)
theorem reject492 : ¬ Reader r492 := fun h => zero492_not_join h.zero

def r493 : Term := .app (.app (.app L492 H) (.var 0)) (.var 1)
theorem r493_base : headSteps 23 r493 = some (ap Core (t45 :: t37 :: t39 :: t71 :: (.var 1) :: [])) := by decide
theorem r493_unsolvable : ¬ Solvable r493 :=
  fun h => core_unsolvable _ (solvable_steps r493_base h)
theorem zero493_unsolvable : ¬ Solvable (.app r493 Z) :=
  unsolvable_app r493_unsolvable Z
theorem zero493_not_join : ¬ BetaJoin (.app r493 Z) zeroOut := by
  intro h
  exact zero493_unsolvable ((solvable_join h).mpr ⟨0, _, rfl, rfl⟩)
theorem reject493 : ¬ Reader r493 := fun h => zero493_not_join h.zero

def r506 : Term := .app (.app (.app L506 H) (.var 1)) (.var 0)
theorem r506_base : headSteps 11 r506 = some (ap Core (t73 :: (.var 0) :: [])) := by decide
theorem r506_unsolvable : ¬ Solvable r506 :=
  fun h => core_unsolvable _ (solvable_steps r506_base h)
theorem zero506_unsolvable : ¬ Solvable (.app r506 Z) :=
  unsolvable_app r506_unsolvable Z
theorem zero506_not_join : ¬ BetaJoin (.app r506 Z) zeroOut := by
  intro h
  exact zero506_unsolvable ((solvable_join h).mpr ⟨0, _, rfl, rfl⟩)
theorem reject506 : ¬ Reader r506 := fun h => zero506_not_join h.zero

def r507 : Term := .app (.app (.app L506 H) (.var 0)) (.var 1)
theorem r507_base : headSteps 11 r507 = some (ap Core (t75 :: (.var 1) :: [])) := by decide
theorem r507_unsolvable : ¬ Solvable r507 :=
  fun h => core_unsolvable _ (solvable_steps r507_base h)
theorem zero507_unsolvable : ¬ Solvable (.app r507 Z) :=
  unsolvable_app r507_unsolvable Z
theorem zero507_not_join : ¬ BetaJoin (.app r507 Z) zeroOut := by
  intro h
  exact zero507_unsolvable ((solvable_join h).mpr ⟨0, _, rfl, rfl⟩)
theorem reject507 : ¬ Reader r507 := fun h => zero507_not_join h.zero

end Blc.Combs3
#print axioms Blc.Combs3.r474_unsolvable
#print axioms Blc.Combs3.zero474_not_join
#print axioms Blc.Combs3.reject474
#print axioms Blc.Combs3.r492_unsolvable
#print axioms Blc.Combs3.zero492_not_join
#print axioms Blc.Combs3.reject492
#print axioms Blc.Combs3.r493_unsolvable
#print axioms Blc.Combs3.zero493_not_join
#print axioms Blc.Combs3.reject493
#print axioms Blc.Combs3.r506_unsolvable
#print axioms Blc.Combs3.zero506_not_join
#print axioms Blc.Combs3.reject506
#print axioms Blc.Combs3.r507_unsolvable
#print axioms Blc.Combs3.zero507_not_join
#print axioms Blc.Combs3.reject507
