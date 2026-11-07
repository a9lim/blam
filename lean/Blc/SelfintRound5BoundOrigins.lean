/-
Origin-labelled beta reduction for the acyclic-copy bound. Origin 0 denotes
quotation syntax; every interpreter lambda has a positive origin. Variable
tags record their binding origin, so a red binder's multiplicity is charged
to interpreter-origin variable occurrences rather than input length.
-/
import Blc.SelfintRound5BoundRank
import Blc.SelfintOrigins
import Blc.SelfintRound5BoundCapture

namespace Blc.SelfintRound5BoundOrigins
open Term SelfintLowerBound
namespace O

inductive Tree where
  | var (origin index : Nat)
  | lam (origin : Nat) (body : Tree)
  | app (fn arg : Tree)
deriving DecidableEq

def erase : Tree → Term
  | .var _ n => .var n
  | .lam _ b => .lam (erase b)
  | .app f a => .app (erase f) (erase a)

def shift (c : Nat) : Tree → Tree
  | .var o n => if c ≤ n then .var o (n + 1) else .var o n
  | .lam o b => .lam o (shift (c + 1) b)
  | .app f a => .app (shift c f) (shift c a)

def subst (j : Nat) (a : Tree) : Tree → Tree
  | .var o n => if n = j then a else if j < n then .var o (n - 1) else .var o n
  | .lam o b => .lam o (subst (j + 1) (shift 0 a) b)
  | .app f x => .app (subst j a f) (subst j a x)

def push (o : Nat) (env : Nat → Nat) : Nat → Nat
  | 0 => o
  | n + 1 => env n

def insert (j o : Nat) (env : Nat → Nat) (n : Nat) : Nat :=
  if n < j then env n else if n = j then o else env (n - 1)

def Matches (env : Nat → Nat) : Tree → Prop
  | .var o n => o = env n
  | .lam o b => Matches (push o env) b
  | .app f a => Matches env f ∧ Matches env a

theorem insert_zero (o : Nat) (env : Nat → Nat) : insert 0 o env = push o env := by
  funext n
  cases n <;> simp only [insert, push] <;> split <;> simp_all

theorem push_insert (j o p : Nat) (env : Nat → Nat) :
    push p (insert j o env) = insert (j + 1) o (push p env) := by
  funext n
  cases n with
  | zero => simp only [push, insert]; split <;> simp_all
  | succ n =>
      simp only [push, insert, Nat.add_lt_add_iff_right, Nat.add_left_inj]
      split
      · rfl
      · split
        · rfl
        · rename_i hlt hne
          have hn : 0 < n := by omega
          obtain ⟨m, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : n ≠ 0)
          rfl

theorem matches_shift {t : Tree} {env : Nat → Nat} (h : Matches env t)
    (j o : Nat) : Matches (insert j o env) (shift j t) := by
  induction t generalizing env j with
  | var p n =>
      simp only [shift]
      split
      · rename_i hn
        change p = insert j o env (n + 1)
        rw [h]
        simp only [insert, if_neg (by omega : ¬ n + 1 < j),
          if_neg (by omega : ¬ n + 1 = j), Nat.add_sub_cancel]
      · rename_i hn
        change p = insert j o env n
        rw [h]
        simp only [insert, if_pos (show n < j by omega)]
  | lam p b ih =>
      change Matches (push p (insert j o env)) (shift (j + 1) b)
      rw [push_insert]
      exact ih h (j + 1)
  | app f a ihf iha => exact ⟨ihf h.1 j, iha h.2 j⟩

theorem matches_subst {t a : Tree} {env : Nat → Nat} {j o : Nat}
    (ht : Matches (insert j o env) t) (ha : Matches env a) :
    Matches env (subst j a t) := by
  induction t generalizing a env j with
  | var p n =>
      simp only [subst]
      split
      · exact ha
      · rename_i hne
        split
        · rename_i hgt
          change p = env (n - 1)
          simpa only [Matches, insert, if_neg (by omega : ¬ n < j), if_neg hne] using ht
        · rename_i hgt
          change p = env n
          simpa only [Matches, insert, if_pos (by omega : n < j)] using ht
  | lam p b ih =>
      change Matches (push p env) (subst (j + 1) (shift 0 a) b)
      have hb : Matches (insert (j + 1) o (push p env)) b := by
        rw [← push_insert]
        exact ht
      exact ih hb (insert_zero p env ▸ matches_shift ha 0 p)
  | app f x ihf ihx => exact ⟨ihf ht.1 ha, ihx ht.2 ha⟩

theorem erase_shift (t : Tree) (c : Nat) :
    erase (shift c t) = Term.shift 1 c (erase t) := by
  induction t generalizing c with
  | var o n => simp only [shift, erase, Term.shift]; split <;> rfl
  | lam o b ih => simp only [shift, erase, Term.shift, ih]
  | app f a ihf iha => simp only [shift, erase, Term.shift, ihf, iha]

theorem erase_subst (t a : Tree) (j : Nat) :
    erase (subst j a t) = substDec j (erase a) (erase t) := by
  induction t generalizing a j with
  | var o n =>
      simp only [subst, erase, substDec]
      split
      · rfl
      · split <;> rfl
  | lam o b ih => simp only [subst, erase, substDec, ih, erase_shift]
  | app f x ihf ihx => simp only [subst, erase, substDec, ihf, ihx]

def charge (o : Nat) : Nat := if o = 0 then 0 else 1

def mass : Tree → Nat
  | .var o _ => charge o
  | .lam o b => mass b + charge o
  | .app f a => mass f + mass a

theorem mass_shift (t : Tree) (c : Nat) : mass (shift c t) = mass t := by
  induction t generalizing c with
  | var o n => simp only [shift]; split <;> rfl
  | lam o b ih => simp only [shift, mass, ih]
  | app f a ihf iha => simp only [shift, mass, ihf, iha]

theorem mass_subst_le (t a : Tree) (j : Nat) :
    mass (subst j a t) ≤ mass t + occ j (erase t) * mass a := by
  induction t generalizing a j with
  | var o n =>
      simp only [subst]
      split
      · rename_i he
        subst n
        simp only [mass, erase, occ, ↓reduceIte, Nat.one_mul]
        omega
      · rename_i he
        simp only [erase, occ, if_neg he, Nat.zero_mul, Nat.add_zero]
        split <;> exact Nat.le_refl _
  | lam o b ih =>
      have h := ih (shift 0 a) (j + 1)
      simp only [mass_shift] at h
      simp only [subst, mass, erase, occ]
      omega
  | app f x ihf ihx =>
      have hf := ihf a j
      have hx := ihx a j
      simp only [subst, mass, erase, occ, Nat.add_mul]
      omega

/-- Every occurrence of a variable bound by a source lambda carries source
mass. Quotation-origin variable occurrences cannot contribute to this k. -/
theorem occ_le_mass {t : Tree} {env : Nat → Nat} (ht : Matches env t)
    (j : Nat) (hj : env j ≠ 0) : occ j (erase t) ≤ mass t := by
  induction t generalizing env j with
  | var o n =>
      change (if n = j then 1 else 0) ≤ charge o
      split
      · rename_i he
        subst n
        have ho : o ≠ 0 := ht ▸ hj
        simp only [charge, if_neg ho, Nat.le_refl]
      · exact Nat.zero_le _
  | lam o b ih =>
      have h := ih ht (j + 1) hj
      exact Nat.le_trans h (Nat.le_add_right _ _)
  | app f a ihf iha => exact Nat.add_le_add (ihf ht.1 j hj) (iha ht.2 j hj)

theorem mass_le_nodes (t : Tree) : mass t ≤ nodes (erase t) := by
  induction t with
  | var o n => simp only [mass, erase, nodes, charge]; split <;> omega
  | lam o b ih => simp only [mass, erase, nodes, charge]; split <;> omega
  | app f a ihf iha => simp only [mass, erase, nodes]; omega

/-- Residual lambda count at one copying rank. Quotation lambdas are free. -/
def count (rank : Nat → Nat) (k : Nat) : Tree → Nat
  | .var _ _ => 0
  | .lam o b => count rank k b + if o ≠ 0 ∧ rank o = k then 1 else 0
  | .app f a => count rank k f + count rank k a

theorem count_shift (rank : Nat → Nat) (k : Nat) (t : Tree) (c : Nat) :
    count rank k (shift c t) = count rank k t := by
  induction t generalizing c with
  | var o n => simp only [shift]; split <;> rfl
  | lam o b ih => simp only [shift, count, ih]
  | app f a ihf iha => simp only [shift, count, ihf, iha]

theorem count_subst (rank : Nat → Nat) (k : Nat) (t a : Tree) (j : Nat) :
    count rank k (subst j a t) =
      count rank k t + occ j (erase t) * count rank k a := by
  induction t generalizing a j with
  | var o n =>
      simp only [subst, erase, occ]
      split
      · simp only [count, Nat.zero_add, Nat.one_mul]
      · split <;> simp only [count, Nat.zero_add, Nat.zero_mul]
  | lam o b ih =>
      simp only [subst, erase, occ, count, ih, count_shift]
      omega
  | app f x ihf ihx =>
      simp only [subst, erase, occ, count, ihf, ihx, Nat.add_mul]
      omega

theorem count_le_mass (rank : Nat → Nat) (k : Nat) (t : Tree) :
    count rank k t ≤ mass t := by
  induction t with
  | var o n => exact Nat.zero_le _
  | app f a ihf iha => exact Nat.add_le_add ihf iha
  | lam o b ih =>
      simp only [count, mass]
      split
      · rename_i h
        simp only [charge, if_neg h.1]
        omega
      · exact Nat.le_trans ih (Nat.le_add_right _ _)

def Ranged (rank : Nat → Nat) (r : Nat) : Tree → Prop
  | .var _ _ => True
  | .lam o b => Ranged rank r b ∧ (o ≠ 0 → 0 < rank o ∧ rank o ≤ r)
  | .app f a => Ranged rank r f ∧ Ranged rank r a

theorem ranged_shift {rank : Nat → Nat} {r : Nat} {t : Tree}
    (ht : Ranged rank r t) (c : Nat) : Ranged rank r (shift c t) := by
  induction t generalizing c with
  | var o n => simp only [shift]; split <;> trivial
  | lam o b ih => exact ⟨ih ht.1 (c + 1), ht.2⟩
  | app f a ihf iha => exact ⟨ihf ht.1 c, iha ht.2 c⟩

theorem ranged_subst {rank : Nat → Nat} {r : Nat} {t a : Tree}
    (ht : Ranged rank r t) (ha : Ranged rank r a) (j : Nat) :
    Ranged rank r (subst j a t) := by
  induction t generalizing a j with
  | var o n => simp only [subst]; split; exact ha; split <;> trivial
  | lam o b ih => exact ⟨ih ht.1 (ranged_shift ha 0) (j + 1), ht.2⟩
  | app f x ihf ihx => exact ⟨ihf ht.1 ha j, ihx ht.2 ha j⟩

/-- Every source lambda in a copied operand has strictly lower rank. -/
def Below (rank : Nat → Nat) (k : Nat) (t : Tree) : Prop :=
  ∀ j, k ≤ j → count rank j t = 0

/-- Beta steps respecting one fixed assignment of ranks to source origins.
Only actual nonlinear copying requires a strict rank decrease. -/
inductive Step (rank : Nat → Nat) : Tree → Tree → Prop
  | blue (b a : Tree) : occ 0 (erase b) ≤ 1 →
      Step rank (.app (.lam 0 b) a) (subst 0 a b)
  | red (o : Nat) (b a : Tree) : o ≠ 0 →
      (occ 0 (erase b) ≤ 1 ∨ Below rank (rank o) a) →
      Step rank (.app (.lam o b) a) (subst 0 a b)
  | appL {f g : Tree} (a : Tree) : Step rank f g → Step rank (.app f a) (.app g a)
  | appR (f : Tree) {a b : Tree} : Step rank a b → Step rank (.app f a) (.app f b)
  | lam (o : Nat) {b c : Tree} : Step rank b c → Step rank (.lam o b) (.lam o c)

inductive Steps (rank : Nat → Nat) : Tree → Tree → Prop
  | refl (t : Tree) : Steps rank t t
  | head {t u v : Tree} : Step rank t u → Steps rank u v → Steps rank t v

theorem Step.beta {rank : Nat → Nat} {t u : Tree} (h : Step rank t u) :
    Beta (erase t) (erase u) := by
  induction h with
  | blue b a _ | red _ b a _ _ =>
      simpa only [erase, erase_subst, contract] using Beta.beta (erase b) (erase a)
  | appL a _ ih => exact .appL _ ih
  | appR f _ ih => exact .appR _ ih
  | lam o _ ih => exact .lam ih

theorem Step.matches {rank : Nat → Nat} {t u : Tree} (h : Step rank t u)
    {env : Nat → Nat} (ht : Matches env t) : Matches env u := by
  induction h generalizing env with
  | blue b a _ | red _ b a _ _ =>
      exact matches_subst (by rw [insert_zero]; exact ht.1) ht.2
  | appL a _ ih => exact ⟨ih ht.1, ht.2⟩
  | appR f _ ih => exact ⟨ht.1, ih ht.2⟩
  | lam o _ ih => exact ih ht

theorem Step.ranged {rank : Nat → Nat} {r : Nat} {t u : Tree}
    (h : Step rank t u) (ht : Ranged rank r t) : Ranged rank r u := by
  induction h with
  | blue b a _ | red _ b a _ _ => exact ranged_subst ht.1.1 ht.2 0
  | appL a _ ih => exact ⟨ih ht.1, ht.2⟩
  | appR f _ ih => exact ⟨ht.1, ih ht.2⟩
  | lam o _ ih => exact ⟨ih ht.1, ht.2⟩

open SelfintRound5BoundRank

def vector (rank : Nat → Nat) (t : Tree) : (r : Nat) → Vector r
  | 0 => ()
  | r + 1 => (count rank (r + 1) t, vector rank t r)

def state (rank : Nat → Nat) (r : Nat) (t : Tree) : State r := ⟨mass t, vector rank t r⟩

theorem state_good (rank : Nat → Nat) (r : Nat) (t : Tree) : Good (state rank r t) := by
  induction r with
  | zero => trivial
  | succ r ih => exact ⟨count_le_mass rank (r + 1) t, ih⟩

theorem vector_weak {rank : Nat → Nat} {t u : Tree} (r : Nat)
    (h : ∀ j, count rank j u ≤ count rank j t) :
    Weak r (vector rank u r) (vector rank t r) := by
  induction r with
  | zero => trivial
  | succ r ih => exact ⟨h (r + 1), ih⟩

theorem vector_less {rank : Nat → Nat} {t u : Tree} (r k : Nat)
    (hk : 0 < k) (hkr : k ≤ r) (hdrop : count rank k u < count rank k t)
    (hle : ∀ j, k < j → count rank j u ≤ count rank j t) :
    Less r (vector rank u r) (vector rank t r) := by
  induction r with
  | zero => exact ((Nat.not_lt_of_ge hkr) hk).elim
  | succ r ih =>
      change count rank (r + 1) u < count rank (r + 1) t ∨
        count rank (r + 1) u = count rank (r + 1) t ∧
          Less r (vector rank u r) (vector rank t r)
      by_cases he : k = r + 1
      · rw [he] at hdrop
        exact Or.inl hdrop
      · have hkr' : k ≤ r := by clear ih; omega
        have htop := hle (r + 1) (by clear ih; omega)
        by_cases heq : count rank (r + 1) u = count rank (r + 1) t
        · exact Or.inr ⟨heq, ih hkr'⟩
        · exact Or.inl (Nat.lt_of_le_of_ne htop heq)

private theorem context_growth {a b : Nat} (h : b ≤ growth a) (c : Nat) :
    b + c ≤ growth (a + c) := by
  simp only [growth, Nat.add_mul, Nat.mul_add, Nat.one_mul, Nat.mul_one] at *
  omega

def Drop (rank : Nat → Nat) (r : Nat) (t u : Tree) : Prop :=
  ∃ k, 0 < k ∧ k ≤ r ∧ count rank k u < count rank k t ∧
    (∀ j, k < j → count rank j u ≤ count rank j t) ∧ mass u ≤ growth (mass t)

def Passive (rank : Nat → Nat) (t u : Tree) : Prop :=
  (∀ j, count rank j u ≤ count rank j t) ∧ mass u ≤ mass t

def Outcome (rank : Nat → Nat) (r : Nat) (t u : Tree) : Prop :=
  Drop rank r t u ∨ Passive rank t u

theorem blue_outcome (rank : Nat → Nat) (r : Nat) (b a : Tree)
    (hk : occ 0 (erase b) ≤ 1) : Outcome rank r (.app (.lam 0 b) a) (subst 0 a b) := by
  refine Or.inr ⟨?_, ?_⟩
  · intro j
    have hm := Nat.mul_le_mul_right (count rank j a) hk
    simp only [Nat.one_mul] at hm
    simp only [count_subst, count]
    rw [if_neg (by intro h; exact h.1 rfl)]
    omega
  · have hs := mass_subst_le b a 0
    have hm := Nat.mul_le_mul_right (mass a) hk
    simp only [Nat.one_mul] at hm
    simp only [mass, charge, ↓reduceIte]
    omega

theorem red_outcome (rank : Nat → Nat) (r o : Nat) (b a : Tree)
    (ho : o ≠ 0) (hc : occ 0 (erase b) ≤ 1 ∨ Below rank (rank o) a)
    {env : Nat → Nat} (hb : Matches (push o env) b)
    (hr : 0 < rank o ∧ rank o ≤ r) :
    Outcome rank r (.app (.lam o b) a) (subst 0 a b) := by
  have hmult : ∀ j, rank o ≤ j → occ 0 (erase b) * count rank j a ≤ count rank j a := by
    intro j hj
    rcases hc with h | h
    · simpa only [Nat.one_mul] using Nat.mul_le_mul_right (count rank j a) h
    · rw [h j hj, Nat.mul_zero]
      exact Nat.le_refl _
  refine Or.inl ⟨rank o, hr.1, hr.2, ?_, ?_, ?_⟩
  · have hm := hmult (rank o) (Nat.le_refl _)
    rw [count_subst]
    change count rank (rank o) b + occ 0 (erase b) * count rank (rank o) a <
      (count rank (rank o) b + (if o ≠ 0 ∧ rank o = rank o then 1 else 0)) +
        count rank (rank o) a
    rw [if_pos (And.intro ho rfl)]
    omega
  · intro j hj
    have hm := hmult j (by omega)
    simp only [count_subst, count]
    omega
  · have hs := mass_subst_le b a 0
    have hk := occ_le_mass hb 0 ho
    let s := mass (.app (.lam o b) a)
    have hbs : mass b ≤ s := by simp only [s, mass]; omega
    have has : mass a ≤ s := by simp only [s, mass]; omega
    have hks : occ 0 (erase b) ≤ s := Nat.le_trans hk hbs
    have hm := Nat.mul_le_mul hks has
    have hu : mass (subst 0 a b) ≤ s + s * s := by omega
    apply Nat.le_trans hu
    change s + s * s ≤ growth s
    simp only [growth, Nat.add_mul, Nat.mul_add, Nat.one_mul, Nat.mul_one]
    omega

theorem Outcome.appL {rank : Nat → Nat} {r : Nat} {f g : Tree}
    (h : Outcome rank r f g) (a : Tree) : Outcome rank r (.app f a) (.app g a) := by
  rcases h with ⟨k, hk, hkr, hd, hl, hm⟩ | ⟨hl, hm⟩
  · exact Or.inl ⟨k, hk, hkr, Nat.add_lt_add_right hd _,
      fun j hj => Nat.add_le_add_right (hl j hj) _, context_growth hm (mass a)⟩
  · exact Or.inr ⟨fun j => Nat.add_le_add_right (hl j) _, Nat.add_le_add_right hm _⟩

theorem Outcome.appR {rank : Nat → Nat} {r : Nat} {a b : Tree}
    (h : Outcome rank r a b) (f : Tree) : Outcome rank r (.app f a) (.app f b) := by
  rcases h with ⟨k, hk, hkr, hd, hl, hm⟩ | ⟨hl, hm⟩
  · refine Or.inl ⟨k, hk, hkr, Nat.add_lt_add_left hd _,
      fun j hj => Nat.add_le_add_left (hl j hj) _, ?_⟩
    simpa only [mass, Nat.add_comm] using context_growth hm (mass f)
  · exact Or.inr ⟨fun j => Nat.add_le_add_left (hl j) _, Nat.add_le_add_left hm _⟩

theorem Outcome.lam {rank : Nat → Nat} {r : Nat} {b c : Tree}
    (h : Outcome rank r b c) (o : Nat) : Outcome rank r (.lam o b) (.lam o c) := by
  rcases h with ⟨k, hk, hkr, hd, hl, hm⟩ | ⟨hl, hm⟩
  · exact Or.inl ⟨k, hk, hkr, Nat.add_lt_add_right hd _,
      fun j hj => Nat.add_le_add_right (hl j hj) _, context_growth hm (charge o)⟩
  · exact Or.inr ⟨fun j => Nat.add_le_add_right (hl j) _, Nat.add_le_add_right hm _⟩

theorem Step.outcome {rank : Nat → Nat} {r : Nat} {t u : Tree}
    (h : Step rank t u) {env : Nat → Nat} (ht : Matches env t) (hr : Ranged rank r t) :
    Outcome rank r t u := by
  induction h generalizing env with
  | blue b a hk => exact blue_outcome rank r b a hk
  | red o b a ho hc => exact red_outcome rank r o b a ho hc ht.1 (hr.1.2 ho)
  | appL a _ ih => exact (ih ht.1 hr.1).appL a
  | appR f _ ih => exact (ih ht.2 hr.2).appR f
  | lam o _ ih => exact (ih ht hr.1).lam o

theorem Step.move {rank : Nat → Nat} {r : Nat} {t u : Tree}
    (h : Step rank t u) {env : Nat → Nat} (ht : Matches env t) (hr : Ranged rank r t) :
    Move (state rank r t) (state rank r u) := by
  refine ⟨state_good rank r u, ?_⟩
  rcases h.outcome ht hr with ⟨k, hk, hkr, hd, hl, hm⟩ | ⟨hl, hm⟩
  · exact Or.inl ⟨vector_less r k hk hkr hd hl, hm⟩
  · exact Or.inr ⟨vector_weak r hl, hm⟩

theorem Steps.run {rank : Nat → Nat} {r : Nat} {t u : Tree}
    (h : Steps rank t u) {env : Nat → Nat} (ht : Matches env t) (hr : Ranged rank r t) :
    Run (state rank r t) (state rank r u) := by
  induction h with
  | refl => exact .refl _
  | head hb _ ih => exact .head (hb.move ht hr) (ih (hb.matches ht) (hb.ranged hr))

/-- A fixed origin ranking bounds source mass on every compatible beta
trace, including all intermediate states. The input's blue size is absent. -/
theorem ranked_mass_bound {rank : Nat → Nat} {r : Nat} {t u : Tree}
    (h : Steps rank t u) {env : Nat → Nat} (ht : Matches env t) (hr : Ranged rank r t)
    (b : Nat) (hb : mass t ≤ b) : mass u ≤ bound r b :=
  run_bound r (state_good rank r t) (h.run ht hr) b hb

/-- Quotation tags every node, including its rigid tail, with origin zero. -/
def blue : Term → Tree
  | .var n => .var 0 n
  | .lam b => .lam 0 (blue b)
  | .app f a => .app (blue f) (blue a)

theorem erase_blue (t : Term) : erase (blue t) = t := by
  induction t with
  | var => rfl
  | lam b ih => exact congrArg Term.lam ih
  | app f a ihf iha => simp only [blue, erase, ihf, iha]

theorem mass_blue (t : Term) : mass (blue t) = 0 := by
  induction t with
  | var => rfl
  | lam b ih => exact ih
  | app f a ihf iha => simp only [blue, mass, ihf, iha, Nat.add_zero]

theorem push_zero : push 0 (fun _ => 0) = fun _ => 0 := by
  funext n
  cases n <;> rfl

theorem matches_blue (t : Term) : Matches (fun _ => 0) (blue t) := by
  induction t with
  | var => rfl
  | lam b ih => change Matches (push 0 (fun _ => 0)) (blue b); rw [push_zero]; exact ih
  | app f a ihf iha => exact ⟨ihf, iha⟩

theorem ranged_blue (rank : Nat → Nat) (r : Nat) (t : Term) : Ranged rank r (blue t) := by
  induction t with
  | var => trivial
  | lam b ih => exact ⟨ih, fun h => (h rfl).elim⟩
  | app f a ihf iha => exact ⟨ihf, iha⟩

def source (E : Tree) (bs : List Bool) : Tree :=
  .app (.app E (.var 0 0)) (blue (streamOf bs (.var 1)))

theorem erase_source (E : Tree) (bs : List Bool) :
    erase (source E bs) = .app (.app (erase E) (.var 0)) (streamOf bs (.var 1)) := by
  simp only [source, erase, erase_blue]

theorem mass_source (E : Tree) (bs : List Bool) : mass (source E bs) = mass E := by
  simp only [source, mass, mass_blue, charge, ↓reduceIte, Nat.add_zero]

theorem matches_source {E : Tree} (hE : Matches (fun _ => 0) E) (bs : List Bool) :
    Matches (fun _ => 0) (source E bs) := ⟨⟨hE, rfl⟩, matches_blue _⟩

theorem ranged_source {rank : Nat → Nat} {r : Nat} {E : Tree}
    (hE : Ranged rank r E) (bs : List Bool) : Ranged rank r (source E bs) :=
  ⟨⟨hE, trivial⟩, ranged_blue rank r _⟩

/-- The explicit finite bound depends on E and its rank count, not on the
number or values of quoted bits. -/
theorem quoted_mass_bound {rank : Nat → Nat} {r : Nat} {E u : Tree} {bs : List Bool}
    (hE : Matches (fun _ => 0) E) (hr : Ranged rank r E)
    (h : Steps rank (source E bs) u) : mass u ≤ bound r (nodes (erase E)) :=
  ranked_mass_bound h (matches_source hE bs) (ranged_source hr bs) _
    (by rw [mass_source]; exact mass_le_nodes E)

def colour : Tree → QuoteOrigins.Marked
  | .var _ n => .var n
  | .lam o b => .lam (if o = 0 then true else false) (colour b)
  | .app f a => .app (colour f) (colour a)

theorem erase_colour (t : Tree) : QuoteOrigins.Marked.erase (colour t) = erase t := by
  induction t with
  | var => rfl
  | lam o b ih => exact congrArg Term.lam ih
  | app f a ihf iha => simp only [colour, QuoteOrigins.Marked.erase, erase, ihf, iha]

theorem colour_shift (t : Tree) (c : Nat) :
    colour (shift c t) = QuoteOrigins.Marked.shift c (colour t) := by
  induction t generalizing c with
  | var o n => simp only [shift, colour, QuoteOrigins.Marked.shift]; split <;> rfl
  | lam o b ih => simp only [shift, colour, QuoteOrigins.Marked.shift, ih]
  | app f a ihf iha => simp only [shift, colour, QuoteOrigins.Marked.shift, ihf, iha]

theorem colour_subst (t a : Tree) (j : Nat) :
    colour (subst j a t) = QuoteOrigins.Marked.subst j (colour a) (colour t) := by
  induction t generalizing a j with
  | var o n =>
      simp only [subst, colour, QuoteOrigins.Marked.subst]
      split
      · rfl
      · split <;> rfl
  | lam o b ih => simp only [subst, colour, QuoteOrigins.Marked.subst, ih, colour_shift]
  | app f x ihf ihx => simp only [subst, colour, QuoteOrigins.Marked.subst, ihf, ihx]

theorem Step.colour {rank : Nat → Nat} {t u : Tree} (h : Step rank t u) :
    QuoteOrigins.Marked.Step (colour t) (colour u) := by
  induction h with
  | blue b a _ | red _ b a _ _ =>
      rw [colour_subst]
      exact .beta _ _ _
  | appL a _ ih => exact .appL _ ih
  | appR f _ ih => exact .appR _ ih
  | lam o _ ih => exact .lam _ ih

theorem Steps.colour {rank : Nat → Nat} {t u : Tree} (h : Steps rank t u) :
    QuoteOrigins.Marked.Steps (colour t) (colour u) := by
  induction h with
  | refl => exact .refl _
  | head hb _ ih => exact .step hb.colour ih

def AllRed : Tree → Prop
  | .var _ _ => True
  | .lam o b => o ≠ 0 ∧ AllRed b
  | .app f a => AllRed f ∧ AllRed a

theorem colour_red {t : Tree} (h : AllRed t) :
    colour t = QuoteOrigins.Marked.red (erase t) := by
  induction t with
  | var => rfl
  | lam o b ih => simp only [colour, erase, QuoteOrigins.Marked.red, if_neg h.1, ih h.2]
  | app f a ihf iha => simp only [colour, erase, QuoteOrigins.Marked.red, ihf h.1, iha h.2]

theorem colour_blue {t : QuoteOrigins.Marked} (h : QuoteOrigins.Marked.BlueOnly t) :
    colour (blue (QuoteOrigins.Marked.erase t)) = t := by
  induction t with
  | var => rfl
  | lam q b ih =>
      rcases h with ⟨rfl, hb⟩
      exact congrArg (QuoteOrigins.Marked.lam true) (ih hb)
  | app f a ihf iha =>
      simp only [QuoteOrigins.Marked.erase, blue, colour, ihf h.1, iha h.2]

theorem colour_source {E : Tree} (hE : AllRed E) (bs : List Bool) :
    colour (source E bs) = QuoteOrigins.Marked.source (erase E) bs := by
  have hstream := colour_blue
    ((QuoteOrigins.Marked.stream_ready bs (r := .var 1) ⟨trivial, trivial, trivial⟩).2.2)
  rw [QuoteOrigins.Marked.erase_stream] at hstream
  change colour (blue (streamOf bs (.var 1))) =
    QuoteOrigins.Marked.stream bs (.var 1) at hstream
  simp only [source, colour, colour_red hE, hstream, QuoteOrigins.Marked.source]

open SelfintRound5BoundCapture

theorem captures_le_mass {t : Tree} (d : Nat)
    (h : QuoteOrigins.Marked.Detached d (colour t)) : captures d (erase t) ≤ mass t := by
  induction t generalizing d with
  | var o n => exact Nat.zero_le _
  | app f a ihf iha => exact Nat.add_le_add (ihf d h.1) (iha d h.2)
  | lam o b ih =>
      have hb := ih (d + 1) h.1
      have hf : captureFlag d (erase b) ≤ charge o := by
        by_cases ho : o = 0
        · have hq : Quiet d (erase b) := by
            have hh := h.2 (by simp only [ho, ↓reduceIte])
            simpa only [Quiet, erase_colour] using hh
          simp only [captureFlag, if_pos hq, charge, if_pos ho, Nat.le_refl]
        · simp only [charge, if_neg ho, captureFlag]
          split <;> omega
      exact Nat.add_le_add hb hf

/-- In actual BLC quotations all live capture-bearing output lambdas are
charged source residuals, so the same finite bound controls capture count. -/
theorem quoted_capture_bound {rank : Nat → Nat} {r : Nat} {E u : Tree} {bs : List Bool}
    (hE : Matches (fun _ => 0) E) (hred : AllRed E) (hr : Ranged rank r E)
    (h : Steps rank (source E bs) u) : captures 0 (erase u) ≤ bound r (nodes (erase E)) := by
  have hc := h.colour
  rw [colour_source hred bs] at hc
  have hd := QuoteOrigins.Marked.detached_steps hc 0
    (QuoteOrigins.Marked.source_detached (erase E) bs)
  exact Nat.le_trans (captures_le_mass 0 hd) (quoted_mass_bound hE hr h)

/-- A sufficiently capture-rich normal program cannot be decoded by a
trace whose source-copy edges all decrease one bounded origin ranking. -/
theorem no_ranked_capture_output {rank : Nat → Nat} {r : Nat} {E : Tree}
    (hE : Matches (fun _ => 0) E) (hred : AllRed E) (hr : Ranged rank r E) :
    let n := bound r (nodes (erase E)) + 1
    ∀ u, erase u = captureOutput n →
      ¬ Steps rank (source E (blcCode (captureProgram n))) u := by
  dsimp only
  intro u hu hs
  have h := quoted_capture_bound hE hred hr hs
  rw [hu, captures_captureOutput] at h
  omega

#print axioms ranked_mass_bound
#print axioms quoted_capture_bound
#print axioms no_ranked_capture_output

end O
end Blc.SelfintRound5BoundOrigins
