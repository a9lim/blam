/-
Unsolvability of the four P4 combinators T = Hk Hk (round 4, combs lane).
0-indexed de Bruijn (Blc.Term). `Solvable` is Blc.SelfintProbe.Solvable:
head reduction (including under leading lambdas) reaches a head normal form.
-/
import Blc.SelfintProbe

namespace Combs
open Blc Blc.Term Blc.SelfintProbe

/-! ## Generic spine and pumping lemmas -/

def ap (f : Term) (as : List Term) : Term := as.foldl Term.app f

@[simp] theorem ap_nil (f : Term) : ap f [] = f := rfl
theorem ap_cons (f a : Term) (as : List Term) : ap f (a :: as) = ap (.app f a) as := rfl
theorem ap_append (f : Term) (xs ys : List Term) : ap f (xs ++ ys) = ap (ap f xs) ys :=
  List.foldl_append

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

theorem hs_one {t u : Term} (h : headStep t = some u) : headSteps 1 t = some u := by
  simp [headSteps, h]

theorem hs_lam : ∀ {n : Nat} {b b' : Term}, headSteps n b = some b' →
    headSteps n (.lam b) = some (.lam b')
  | 0, b, b', h => by simp only [headSteps, Option.some.injEq] at h ⊢; rw [h]
  | n + 1, b, b', h => by
      simp only [headSteps, Option.bind_eq_some_iff] at h
      obtain ⟨w, hw, hr⟩ := h
      have := hs_lam hr
      simp [headSteps, headStep, hw, this]

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

theorem closed_app {f a : Term} (hf : Closed f) (ha : Closed a) : Closed (.app f a) :=
  ⟨hf, ha⟩

/-! ## H4 = λy. y (y (λz. y)) (λz. z y) -/

def H4 : Term := .lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1))))
  (.lam (.app (.var 0) (.var 1))))
theorem H4_closed : Closed H4 := by decide

/-- U 0 = λz. H4, U (n+1) = λz. z (U n). -/
def U : Nat → Term
  | 0 => .lam H4
  | n + 1 => .lam (.app (.var 0) (U n))
theorem U_closed : ∀ n, Closed (U n)
  | 0 => closed_freeUnder H4_closed 1
  | n + 1 => ⟨Nat.zero_lt_one, closed_freeUnder (U_closed n) 1⟩

theorem H4_rule {X : Term} (hX : Closed X) (rs : List Term) :
    headSteps 1 (ap H4 (X :: rs)) =
      some (ap X (.app X (.lam X) :: .lam (.app (.var 0) X) :: rs)) := by
  apply hs_one; rw [ap_cons]; unfold H4; rw [beta_ap]
  simp [contract, substDec, shift_closed _ _ hX, ap_cons]

theorem U_rule (n : Nat) (W : Term) (rs : List Term) :
    headSteps 1 (ap (U (n + 1)) (W :: rs)) = some (ap W (U n :: rs)) := by
  apply hs_one; rw [ap_cons, U, beta_ap]
  simp [contract, substDec, substDec_closed _ _ (U_closed n), ap_cons]

theorem K_rule {X : Term} (hX : Closed X) (W : Term) (rs : List Term) :
    headSteps 1 (ap (.lam X) (W :: rs)) = some (ap X rs) := by
  apply hs_one; rw [ap_cons, beta_ap]
  simp [contract, substDec_closed _ _ hX]

theorem pairA : ∀ n (rest : List Term),
    headSteps (2 * n) (ap (U n) (U n :: rest)) = some (ap (U 0) (U 0 :: rest))
  | 0, rest => rfl
  | n + 1, rest => by
      have h1 := U_rule n (U (n + 1)) rest
      have h2 := U_rule n (U n) rest
      have := hs_comp h1 (hs_comp h2 (pairA n rest))
      rwa [show 1 + (1 + 2 * n) = 2 * (n + 1) by omega] at this

theorem pairB (n : Nat) (rest : List Term) :
    headSteps (2 * n + 1) (ap (U (n + 1)) (U n :: rest)) = some (ap (U 0) (U 0 :: rest)) := by
  have := hs_comp (U_rule n (U n) rest) (pairA n rest)
  rwa [show 1 + 2 * n = 2 * n + 1 by omega] at this

theorem H4_advance (n : Nat) (rs : List Term) :
    headSteps (2 * n + 6) (ap H4 (U (n + 1) :: rs)) = some (ap H4 (U (n + 2) :: rs)) := by
  have h1 : headSteps 1 (ap H4 (U (n + 1) :: rs)) =
      some (ap (U (n + 1)) (.app (U (n + 1)) (.lam (U (n + 1))) :: U (n + 2) :: rs)) :=
    H4_rule (U_closed (n + 1)) rs
  have h2 : headSteps 1 (ap (U (n + 1)) (.app (U (n + 1)) (.lam (U (n + 1))) :: U (n + 2) :: rs)) =
      some (ap (U (n + 1)) (.lam (U (n + 1)) :: U n :: U (n + 2) :: rs)) :=
    U_rule n (.app (U (n + 1)) (.lam (U (n + 1)))) (U (n + 2) :: rs)
  have h3 : headSteps 1 (ap (U (n + 1)) (.lam (U (n + 1)) :: U n :: U (n + 2) :: rs)) =
      some (ap (.lam (U (n + 1))) (U n :: U n :: U (n + 2) :: rs)) :=
    U_rule n (.lam (U (n + 1))) (U n :: U (n + 2) :: rs)
  have h4 := K_rule (U_closed (n + 1)) (U n) (U n :: U (n + 2) :: rs)
  have h5 := pairB n (U (n + 2) :: rs)
  have h6 := K_rule H4_closed (U 0) (U (n + 2) :: rs)
  have := hs_comp h1 (hs_comp h2 (hs_comp h3 (hs_comp h4 (hs_comp h5 h6))))
  rwa [show 1 + (1 + (1 + (1 + (2 * n + 1 + 1)))) = 2 * n + 6 by omega] at this

def R4 : List Term :=
  [.app (.app H4 (U 0)) (.lam (.app H4 (U 0))), .lam (.app (.var 0) (.app H4 (U 0))),
   .lam (.app (.var 0) H4)]

theorem H4_base : headSteps 4 (.app H4 H4) = some (ap H4 (U 1 :: R4)) := by decide

theorem H4H4_unsolvable : ¬ Solvable (.app H4 H4) :=
  unsolvable_of_advance
    (fun t => t = .app H4 H4 ∨ ∃ n rs, t = ap H4 (U (n + 1) :: rs))
    (by
      rintro t (rfl | ⟨n, rs, rfl⟩)
      · exact ⟨3, _, H4_base, Or.inr ⟨0, R4, rfl⟩⟩
      · exact ⟨2 * n + 5, _, H4_advance n rs, Or.inr ⟨n + 1, rs, rfl⟩⟩)
    _ (Or.inl rfl)

/-! ## H3 = λy. y (λz w. z (w z)) y -/

def B3 : Term := .lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))
def H3 : Term := .lam (.app (.app (.var 0) B3) (.var 0))
theorem B3_closed : Closed B3 := by decide

theorem B3_rule {Z : Term} (hZ : Closed Z) (W : Term) (rs : List Term) :
    headSteps 2 (ap B3 (Z :: W :: rs)) = some (ap Z (.app W Z :: rs)) := by
  have h1 : headStep (ap B3 (Z :: W :: rs)) =
      some (ap (.lam (.app Z (.app (.var 0) Z))) (W :: rs)) := by
    rw [ap_cons]; unfold B3; rw [beta_ap]
    simp [contract, substDec, shift_closed _ _ hZ]
  have h2 : headStep (ap (.lam (.app Z (.app (.var 0) Z))) (W :: rs)) =
      some (ap Z (.app W Z :: rs)) := by
    rw [ap_cons, beta_ap]
    simp [contract, substDec, substDec_closed _ _ hZ, ap_cons]
  simp [headSteps, h1, h2]

/-- P = B (B B) B. -/
def P3 : Term := .app (.app B3 (.app B3 B3)) B3
theorem P3_closed : Closed P3 := by decide

/-- The cycle: B P Y B R →h6 B P (Y P) B R, for every Y and R, under one binder. -/
theorem H3_cycle (Y : Term) (rs : List Term) :
    headSteps 6 (.lam (ap B3 (P3 :: Y :: B3 :: rs))) =
      some (.lam (ap B3 (P3 :: .app Y P3 :: B3 :: rs))) := by
  apply hs_lam
  have h1 : headSteps 2 (ap B3 (P3 :: Y :: B3 :: rs)) =
      some (ap B3 (.app B3 B3 :: B3 :: .app Y P3 :: B3 :: rs)) :=
    B3_rule P3_closed Y (B3 :: rs)
  have h2 : headSteps 2 (ap B3 (.app B3 B3 :: B3 :: .app Y P3 :: B3 :: rs)) =
      some (ap B3 (B3 :: .app B3 (.app B3 B3) :: .app Y P3 :: B3 :: rs)) :=
    B3_rule (closed_app B3_closed B3_closed) B3 (.app Y P3 :: B3 :: rs)
  have h3 : headSteps 2 (ap B3 (B3 :: .app B3 (.app B3 B3) :: .app Y P3 :: B3 :: rs)) =
      some (ap B3 (P3 :: .app Y P3 :: B3 :: rs)) :=
    B3_rule B3_closed (.app B3 (.app B3 B3)) (.app Y P3 :: B3 :: rs)
  exact hs_comp h1 (hs_comp h2 h3)

def Y3 : Term := ap B3 [B3, ap B3 [B3, B3, B3]]
def R3 : List Term :=
  [.app B3 (ap B3 [B3, ap B3 [B3, B3], .app B3 B3, B3]),
   ap B3 [ap B3 [B3, .app B3 B3, B3], ap B3 [ap B3 [B3, B3], .app B3 B3, B3]],
   .app (.var 0) (ap H3 [.app B3 B3, B3])]

theorem H3_base : headSteps 50 (.app H3 H3) = some (.lam (ap B3 (P3 :: Y3 :: B3 :: R3))) := by
  decide

theorem H3H3_unsolvable : ¬ Solvable (.app H3 H3) :=
  unsolvable_of_advance
    (fun t => t = .app H3 H3 ∨ ∃ Y rs, t = .lam (ap B3 (P3 :: Y :: B3 :: rs)))
    (by
      rintro t (rfl | ⟨Y, rs, rfl⟩)
      · exact ⟨49, _, H3_base, Or.inr ⟨Y3, R3, rfl⟩⟩
      · exact ⟨5, _, H3_cycle Y rs, Or.inr ⟨.app Y P3, rs, rfl⟩⟩)
    _ (Or.inl rfl)

/-! ## H1 = λy. y (λz w. w (z w)) y -/

def A1 : Term := .lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))
def H1 : Term := .lam (.app (.app (.var 0) A1) (.var 0))
theorem A1_closed : Closed A1 := by decide
theorem H1_closed : Closed H1 := by decide

theorem A1_rule {Z : Term} (hZ : Closed Z) (W : Term) (rs : List Term) :
    headSteps 2 (ap A1 (Z :: W :: rs)) = some (ap W (.app Z W :: rs)) := by
  have h1 : headStep (ap A1 (Z :: W :: rs)) =
      some (ap (.lam (.app (.var 0) (.app Z (.var 0)))) (W :: rs)) := by
    rw [ap_cons]; unfold A1; rw [beta_ap]
    simp [contract, substDec, shift_closed _ _ hZ]
  have h2 : headStep (ap (.lam (.app (.var 0) (.app Z (.var 0)))) (W :: rs)) =
      some (ap W (.app Z W :: rs)) := by
    rw [ap_cons, beta_ap]
    simp [contract, substDec, substDec_closed _ _ hZ, ap_cons]
  simp [headSteps, h1, h2]

theorem H1_rule (X : Term) (rs : List Term) :
    headSteps 1 (ap H1 (X :: rs)) = some (ap X (A1 :: X :: rs)) := by
  apply hs_one; rw [ap_cons]; unfold H1; rw [beta_ap]
  simp [contract, substDec, substDec_closed _ _ A1_closed, ap_cons]

/-- N 0 = H1, N (k+1) = A1 (N k). -/
def N : Nat → Term
  | 0 => H1
  | k + 1 => .app A1 (N k)
theorem N_closed : ∀ k, Closed (N k)
  | 0 => H1_closed
  | k + 1 => closed_app A1_closed (N_closed k)

theorem N_rule (j : Nat) (X : Term) (rs : List Term) :
    headSteps 2 (ap (N (j + 1)) (X :: rs)) = some (ap X (.app (N j) X :: rs)) :=
  A1_rule (N_closed j) X rs

def Pl (a b : Nat) : List Term :=
  (List.range a).map (fun j => .app (N b) (.app (N j) (N (b + 1))))
def Ql (c b : Nat) : List Term :=
  (List.range c).map (fun j => .app (N b) (ap (N j) [A1, N (b + 1)]))

theorem H1_G (b : Nat) : ∀ a (rs : List Term),
    headSteps (4 * a) (ap (N a) (N (b + 1) :: rs)) = some (ap H1 (N (b + 1) :: (Pl a b ++ rs)))
  | 0, rs => by simp [Pl]; rfl
  | a + 1, rs => by
      have h1 := N_rule a (N (b + 1)) rs
      have h2 : headSteps 2 (ap (N (b + 1)) (.app (N a) (N (b + 1)) :: rs)) =
          some (ap (N a) (N (b + 1) :: .app (N b) (.app (N a) (N (b + 1))) :: rs)) :=
        N_rule b (.app (N a) (N (b + 1))) rs
      have h3 := H1_G b a (.app (N b) (.app (N a) (N (b + 1))) :: rs)
      have := hs_comp h1 (hs_comp h2 h3)
      rw [show 2 + (2 + 4 * a) = 4 * (a + 1) by omega] at this
      simpa [Pl, List.range_succ] using this

theorem H1_C (b : Nat) : ∀ c (rs : List Term),
    headSteps (6 * c) (ap (N c) (A1 :: N (b + 1) :: rs)) =
      some (ap H1 (A1 :: N (b + 1) :: (Ql c b ++ rs)))
  | 0, rs => by simp [Ql]; rfl
  | c + 1, rs => by
      have h1 := N_rule c A1 (N (b + 1) :: rs)
      have h2 := A1_rule (closed_app (N_closed c) A1_closed) (N (b + 1)) rs
      have h3 : headSteps 2 (ap (N (b + 1)) (.app (.app (N c) A1) (N (b + 1)) :: rs)) =
          some (ap (N c) (A1 :: N (b + 1) :: .app (N b) (ap (N c) [A1, N (b + 1)]) :: rs)) :=
        N_rule b (.app (.app (N c) A1) (N (b + 1))) rs
      have h4 := H1_C b c (.app (N b) (ap (N c) [A1, N (b + 1)]) :: rs)
      have := hs_comp h1 (hs_comp h2 (hs_comp h3 h4))
      rw [show 2 + (2 + (2 + 6 * c)) = 6 * (c + 1) by omega] at this
      simpa [Ql, List.range_succ] using this

theorem H1_advance (k : Nat) (rs : List Term) :
    headSteps (10 * (k + 1) + 16) (ap H1 (A1 :: N (k + 1) :: rs)) =
      some (ap H1 (A1 :: N (k + 2) :: (Ql (k + 2) (k + 1) ++ (Pl (k + 1) (k + 1) ++
        .app (N k) (ap A1 [A1, N (k + 1)]) :: rs)))) := by
  have h1 := H1_rule A1 (N (k + 1) :: rs)
  have h2 := A1_rule A1_closed A1 (N (k + 1) :: rs)
  have h3 := A1_rule (closed_app A1_closed A1_closed) (N (k + 1)) rs
  have h4 : headSteps 2 (ap (N (k + 1)) (ap A1 [A1, N (k + 1)] :: rs)) =
      some (ap A1 (A1 :: N (k + 1) :: .app (N k) (ap A1 [A1, N (k + 1)]) :: rs)) :=
    N_rule k (ap A1 [A1, N (k + 1)]) rs
  have h5 : headSteps 2 (ap A1 (A1 :: N (k + 1) :: .app (N k) (ap A1 [A1, N (k + 1)]) :: rs)) =
      some (ap (N (k + 1)) (N (k + 2) :: .app (N k) (ap A1 [A1, N (k + 1)]) :: rs)) :=
    A1_rule A1_closed (N (k + 1)) _
  have h6 := H1_G (k + 1) (k + 1) (.app (N k) (ap A1 [A1, N (k + 1)]) :: rs)
  have h7 := H1_rule (N (k + 2)) (Pl (k + 1) (k + 1) ++ .app (N k) (ap A1 [A1, N (k + 1)]) :: rs)
  have h8 := H1_C (k + 1) (k + 2) (Pl (k + 1) (k + 1) ++ .app (N k) (ap A1 [A1, N (k + 1)]) :: rs)
  have := hs_comp h1 (hs_comp h2 (hs_comp h3 (hs_comp h4 (hs_comp h5 (hs_comp h6
    (hs_comp h7 h8))))))
  rwa [show 1 + (2 + (2 + (2 + (2 + (4 * (k + 1) + (1 + 6 * (k + 2))))))) = 10 * (k + 1) + 16
    by omega] at this

def R1 : List Term := [.app H1 (ap H1 [A1, N 1]), A1, ap A1 [A1, H1]]

theorem H1_base : headSteps 16 (.app H1 H1) = some (ap H1 (A1 :: N 1 :: R1)) := by decide

theorem H1H1_unsolvable : ¬ Solvable (.app H1 H1) :=
  unsolvable_of_advance
    (fun t => t = .app H1 H1 ∨ ∃ k rs, t = ap H1 (A1 :: N (k + 1) :: rs))
    (by
      rintro t (rfl | ⟨k, rs, rfl⟩)
      · exact ⟨15, _, H1_base, Or.inr ⟨0, R1, rfl⟩⟩
      · exact ⟨10 * (k + 1) + 15, _, H1_advance k rs, Or.inr ⟨k + 1, _, rfl⟩⟩)
    _ (Or.inl rfl)

/-! ## H2 = λy. y I (λz. z (y z)) -/

def I2 : Term := .lam (.var 0)
def H2 : Term := .lam (.app (.app (.var 0) I2) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))
theorem I2_closed : Closed I2 := by decide
theorem H2_closed : Closed H2 := by decide

/-- D X = λz. z (X z), for closed X. -/
def D (X : Term) : Term := .lam (.app (.var 0) (.app X (.var 0)))
theorem D_closed {X : Term} (hX : Closed X) : Closed (D X) :=
  ⟨Nat.zero_lt_one, closed_freeUnder hX 1, Nat.zero_lt_one⟩

theorem H2_rule {X : Term} (hX : Closed X) (rs : List Term) :
    headSteps 1 (ap H2 (X :: rs)) = some (ap X (I2 :: D X :: rs)) := by
  apply hs_one; rw [ap_cons]; unfold H2; rw [beta_ap]
  simp [contract, substDec, substDec_closed _ _ I2_closed, shift_closed _ _ hX, ap_cons, D]

theorem I2_rule (X : Term) (rs : List Term) :
    headSteps 1 (ap I2 (X :: rs)) = some (ap X rs) := by
  apply hs_one; rw [ap_cons]; unfold I2; rw [beta_ap]
  simp [contract, substDec]

theorem D_rule {X : Term} (hX : Closed X) (W : Term) (rs : List Term) :
    headSteps 1 (ap (D X) (W :: rs)) = some (ap W (.app X W :: rs)) := by
  apply hs_one; rw [ap_cons]; unfold D; rw [beta_ap]
  simp [contract, substDec, substDec_closed _ _ hX, ap_cons]

/-- M 0 = H2, M (j+1) = I (D (M j)). -/
def M : Nat → Term
  | 0 => H2
  | j + 1 => .app I2 (D (M j))
theorem M_closed : ∀ j, Closed (M j)
  | 0 => H2_closed
  | j + 1 => closed_app I2_closed (D_closed (M_closed j))

theorem M_rule (j : Nat) (X : Term) (rs : List Term) :
    headSteps 2 (ap (M (j + 1)) (X :: rs)) = some (ap X (.app (M j) X :: rs)) :=
  hs_comp (I2_rule (D (M j)) (X :: rs)) (D_rule (M_closed j) X rs)

def Pl2 (a b : Nat) : List Term :=
  (List.range a).map (fun j => .app (M b) (.app (M j) (M (b + 1))))

theorem H2_G (b : Nat) : ∀ a (rs : List Term),
    headSteps (4 * a) (ap (M a) (M (b + 1) :: rs)) = some (ap H2 (M (b + 1) :: (Pl2 a b ++ rs)))
  | 0, rs => by simp [Pl2]; rfl
  | a + 1, rs => by
      have h1 := M_rule a (M (b + 1)) rs
      have h2 : headSteps 2 (ap (M (b + 1)) (.app (M a) (M (b + 1)) :: rs)) =
          some (ap (M a) (M (b + 1) :: .app (M b) (.app (M a) (M (b + 1))) :: rs)) :=
        M_rule b (.app (M a) (M (b + 1))) rs
      have h3 := H2_G b a (.app (M b) (.app (M a) (M (b + 1))) :: rs)
      have := hs_comp h1 (hs_comp h2 h3)
      rw [show 2 + (2 + 4 * a) = 4 * (a + 1) by omega] at this
      simpa [Pl2, List.range_succ] using this

theorem H2_C (L : Term) : ∀ c (rs : List Term),
    headSteps (3 * c) (ap (M c) (I2 :: L :: rs)) = some (ap H2 (I2 :: L :: rs))
  | 0, rs => rfl
  | c + 1, rs => by
      have h1 := M_rule c I2 (L :: rs)
      have h2 : headSteps 1 (ap I2 (.app (M c) I2 :: L :: rs)) = some (ap (M c) (I2 :: L :: rs)) :=
        I2_rule (.app (M c) I2) (L :: rs)
      have := hs_comp h1 (hs_comp h2 (H2_C L c rs))
      rwa [show 2 + (1 + 3 * c) = 3 * (c + 1) by omega] at this

theorem H2_advance (k : Nat) (rs : List Term) :
    headSteps (7 * k + 11) (ap H2 (I2 :: D (M k) :: rs)) =
      some (ap H2 (I2 :: D (M (k + 1)) ::
        (Pl2 k k ++ .app (M k) (.app (M k) (M (k + 1))) :: rs))) := by
  have h1 := H2_rule I2_closed (D (M k) :: rs)
  have h2 := I2_rule I2 (D I2 :: D (M k) :: rs)
  have h3 := I2_rule (D I2) (D (M k) :: rs)
  have h4 : headSteps 1 (ap (D I2) (D (M k) :: rs)) = some (ap (D (M k)) (M (k + 1) :: rs)) :=
    D_rule I2_closed (D (M k)) rs
  have h5 := D_rule (M_closed k) (M (k + 1)) rs
  have h6 : headSteps 2 (ap (M (k + 1)) (.app (M k) (M (k + 1)) :: rs)) =
      some (ap (M k) (M (k + 1) :: .app (M k) (.app (M k) (M (k + 1))) :: rs)) :=
    M_rule k (.app (M k) (M (k + 1))) rs
  have h7 := H2_G k k (.app (M k) (.app (M k) (M (k + 1))) :: rs)
  have h8 := H2_rule (M_closed (k + 1)) (Pl2 k k ++ .app (M k) (.app (M k) (M (k + 1))) :: rs)
  have h9 := H2_C (D (M (k + 1))) (k + 1) (Pl2 k k ++ .app (M k) (.app (M k) (M (k + 1))) :: rs)
  have := hs_comp h1 (hs_comp h2 (hs_comp h3 (hs_comp h4 (hs_comp h5 (hs_comp h6
    (hs_comp h7 (hs_comp h8 h9)))))))
  rwa [show 1 + (1 + (1 + (1 + (1 + (2 + (4 * k + (1 + 3 * (k + 1)))))))) = 7 * k + 11
    by omega] at this

theorem H2_base : headSteps 1 (.app H2 H2) = some (ap H2 (I2 :: D (M 0) :: [])) := by decide

theorem H2H2_unsolvable : ¬ Solvable (.app H2 H2) :=
  unsolvable_of_advance
    (fun t => t = .app H2 H2 ∨ ∃ k rs, t = ap H2 (I2 :: D (M k) :: rs))
    (by
      rintro t (rfl | ⟨k, rs, rfl⟩)
      · exact ⟨0, _, H2_base, Or.inr ⟨0, [], rfl⟩⟩
      · exact ⟨7 * k + 10, _, H2_advance k rs, Or.inr ⟨k + 1, _, rfl⟩⟩)
    _ (Or.inl rfl)

/-! ## Consequences: T C and λs. T C have no head normal form, for every C. -/

theorem lam_solvable {b : Term} (h : Solvable (.lam b)) : Solvable b := by
  obtain ⟨k, p, hk, hp⟩ := h
  induction k generalizing b p with
  | zero =>
      simp only [headSteps, Option.some.injEq] at hk; subst hk
      refine ⟨0, b, rfl, ?_⟩
      simp only [HNF, headStep, Option.map_eq_none_iff] at hp; exact hp
  | succ k ih =>
      simp only [headSteps, headStep, Option.bind_eq_some_iff, Option.map_eq_some_iff] at hk
      obtain ⟨_, ⟨b', hb', rfl⟩, hr⟩ := hk
      obtain ⟨j, q, hj, hq⟩ := ih p hr hp
      exact ⟨j + 1, q, by simp [headSteps, hb', hj], hq⟩

theorem cutoff_unsolvable {T : Term} (hT : ¬ Solvable T) (C : Term) :
    ¬ Solvable (.lam (.app T C)) :=
  fun h => unsolvable_app hT C (lam_solvable h)

theorem P4_open_cutoffs (C : Term) :
    ¬ Solvable (.lam (.app (.app H1 H1) C)) ∧ ¬ Solvable (.lam (.app (.app H2 H2) C)) ∧
    ¬ Solvable (.lam (.app (.app H3 H3) C)) ∧ ¬ Solvable (.lam (.app (.app H4 H4) C)) :=
  ⟨cutoff_unsolvable H1H1_unsolvable C, cutoff_unsolvable H2H2_unsolvable C,
   cutoff_unsolvable H3H3_unsolvable C, cutoff_unsolvable H4H4_unsolvable C⟩

theorem solvable_step {t u : Term} (h : headStep t = some u) (hs : Solvable t) : Solvable u := by
  obtain ⟨k, p, hk, hp⟩ := hs
  cases k with
  | zero =>
      simp only [headSteps, Option.some.injEq] at hk; subst hk
      simp [HNF, h] at hp
  | succ j =>
      simp only [headSteps, h, Option.bind_some] at hk
      exact ⟨j, p, hk, hp⟩

/-- λx. x x -/
def W2 : Term := .lam (.app (.var 0) (.var 0))

/-- The four open P4 cut-offs #103, #116, #207, #233 (p4cert.txt), literally:
`λs. (λx. x x) Hk C`, unsolvable for every filling C (C may mention s). -/
theorem P4_open_cutoffs_exact (C : Term) :
    ¬ Solvable (.lam (.app (.app W2 H1) C)) ∧ ¬ Solvable (.lam (.app (.app W2 H2) C)) ∧
    ¬ Solvable (.lam (.app (.app W2 H3) C)) ∧ ¬ Solvable (.lam (.app (.app W2 H4) C)) :=
  ⟨cutoff_unsolvable (fun h => H1H1_unsolvable (solvable_step rfl h)) C,
   cutoff_unsolvable (fun h => H2H2_unsolvable (solvable_step rfl h)) C,
   cutoff_unsolvable (fun h => H3H3_unsolvable (solvable_step rfl h)) C,
   cutoff_unsolvable (fun h => H4H4_unsolvable (solvable_step rfl h)) C⟩

end Combs

#print axioms Combs.P4_open_cutoffs
#print axioms Combs.P4_open_cutoffs_exact
