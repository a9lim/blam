/-
Binary lambda calculus terms, de Bruijn indexed.

Convention: `var 0` is the innermost binder (0-indexed here; the BLC
wire format's `1^{i+1}0` encodes wire index i+1, our `var i`). The
Rust engine (src/cert.rs) is 1-indexed; the mapping is `var (n-1)`.

Substitution is the one-pass β-substitution used by the checker and
the reference reducer (tools/cert/loop32_trace.py): substitute and
decrement the free variables above the cut in a single walk.
-/

namespace Blc

inductive Term : Type where
  | var (n : Nat) : Term
  | lam (b : Term) : Term
  | app (f a : Term) : Term
deriving Repr, DecidableEq

namespace Term

/-- Shift free variables ≥ `c` up by `d`. -/
def shift (d : Nat) (c : Nat) : Term → Term
  | var n => if n ≥ c then var (n + d) else var n
  | lam b => lam (shift d (c + 1) b)
  | app f a => app (shift d c f) (shift d c a)

/-- One-pass β-substitution: replace `var j` by `s` (shifted under
binders) and decrement free variables above `j`. -/
def substDec (j : Nat) (s : Term) : Term → Term
  | var n =>
      if n = j then s
      else if n > j then var (n - 1)
      else var n
  | lam b => lam (substDec (j + 1) (shift 1 0 s) b)
  | app f a => app (substDec j s f) (substDec j s a)

/-- β-contract `(λ.b) a`. -/
def contract (b a : Term) : Term := substDec 0 a b

/-- Free-variable bound: `FreeUnder k t` means every free variable of
`t` is < k (so `FreeUnder 0 t` is closedness). -/
def FreeUnder (k : Nat) : Term → Prop
  | var n => n < k
  | lam b => FreeUnder (k + 1) b
  | app f a => FreeUnder k f ∧ FreeUnder k a

def decFreeUnder : (k : Nat) → (t : Term) → Decidable (FreeUnder k t)
  | k, .var n => inferInstanceAs (Decidable (n < k))
  | k, .lam b => decFreeUnder (k + 1) b
  | k, .app f a =>
      have _hf := decFreeUnder k f
      have _ha := decFreeUnder k a
      inferInstanceAs (Decidable (_ ∧ _))

instance (k : Nat) (t : Term) : Decidable (FreeUnder k t) :=
  decFreeUnder k t

/-- Closed terms. -/
def Closed (t : Term) : Prop := FreeUnder 0 t

instance (t : Term) : Decidable (Closed t) :=
  decFreeUnder 0 t

/-- Shifting a term whose free variables all lie below the cut is the
identity — in particular shifting a closed term. -/
theorem shift_of_freeUnder (d : Nat) :
    ∀ (t : Term) (c k : Nat), FreeUnder k t → k ≤ c → shift d c t = t := by
  intro t
  induction t with
  | var n =>
      intro c k h hk
      simp only [shift]
      have : ¬ n ≥ c := by
        intro hc
        exact absurd (Nat.lt_of_lt_of_le h hk) (Nat.not_lt.mpr hc)
      simp [this]
  | lam b ih =>
      intro c k h hk
      simp only [shift]
      rw [ih (c + 1) (k + 1) h (Nat.succ_le_succ hk)]
  | app f a ihf iha =>
      intro c k h hk
      simp only [shift]
      rw [ihf c k h.1 hk, iha c k h.2 hk]

theorem shift_closed (d c : Nat) {t : Term} (h : Closed t) :
    shift d c t = t :=
  shift_of_freeUnder d t c 0 h (Nat.zero_le c)

theorem freeUnder_mono : ∀ {t : Term} {j k : Nat}, j ≤ k →
    FreeUnder j t → FreeUnder k t := by
  intro t
  induction t with
  | var n => intro j k hjk h; exact Nat.lt_of_lt_of_le h hjk
  | lam b ih => intro j k hjk h; exact ih (Nat.succ_le_succ hjk) h
  | app f a ihf iha =>
      intro j k hjk h
      exact ⟨ihf hjk h.1, iha hjk h.2⟩

theorem closed_freeUnder {t : Term} (h : Closed t) (k : Nat) :
    FreeUnder k t :=
  freeUnder_mono (Nat.zero_le k) h

/-- Substitution misses a term whose free variables all lie below the
substitution index — in particular any closed term. -/
theorem substDec_of_freeUnder :
    ∀ (t : Term) (j : Nat) (s : Term), FreeUnder j t → substDec j s t = t := by
  intro t
  induction t with
  | var n =>
      intro j s h
      simp only [substDec]
      have hne : ¬ n = j := Nat.ne_of_lt h
      have hng : ¬ n > j := Nat.not_lt.mpr (Nat.le_of_lt h)
      simp [hne, hng]
  | lam b ih =>
      intro j s h
      simp only [substDec]
      rw [ih (j + 1) _ h]
  | app f a ihf iha =>
      intro j s h
      simp only [substDec]
      rw [ihf j s h.1, iha j s h.2]

theorem substDec_closed {t : Term} (j : Nat) (s : Term) (h : Closed t) :
    substDec j s t = t :=
  substDec_of_freeUnder t j s (closed_freeUnder h j)

end Term
end Blc
