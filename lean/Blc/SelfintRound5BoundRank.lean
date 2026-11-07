/-
A constructive bound for ranked source-code copying.

The resource calculation is independent of quotation length: a data step
does not increase charged source mass, while a source contraction has
quadratic mass growth and strictly decreases the lexicographic vector of
source-lambda counts, ordered by a fixed copying rank. No finite source
inventory is used. The bound is deliberately coarse.
-/
import Blc.SelfintLowerBound

namespace Blc.SelfintRound5BoundRank

def growth (s : Nat) : Nat := (s + 1) * (s + 1)

theorem growth_mono {s t : Nat} (h : s ≤ t) : growth s ≤ growth t :=
  Nat.mul_le_mul (by omega) (by omega)

theorem le_growth (s : Nat) : s ≤ growth s := by
  have h := Nat.mul_le_mul_left (s + 1) (show 1 ≤ s + 1 by omega)
  simp only [Nat.mul_one] at h
  exact Nat.le_trans (by omega) h

/-- Highest rank first. -/
def Vector : Nat → Type
  | 0 => Unit
  | r + 1 => Nat × Vector r

def Less : (r : Nat) → Vector r → Vector r → Prop
  | 0, _, _ => False
  | r + 1, a, b => a.1 < b.1 ∨ a.1 = b.1 ∧ Less r a.2 b.2

def Weak : (r : Nat) → Vector r → Vector r → Prop
  | 0, _, _ => True
  | r + 1, a, b => a.1 ≤ b.1 ∧ Weak r a.2 b.2

def Within : (r : Nat) → Nat → Vector r → Prop
  | 0, _, _ => True
  | r + 1, s, v => v.1 ≤ s ∧ Within r s v.2

structure State (r : Nat) where
  mass : Nat
  counts : Vector r

def State.low {r : Nat} (s : State (r + 1)) : State r := ⟨s.mass, s.counts.2⟩

def Good {r : Nat} (s : State r) : Prop := Within r s.mass s.counts

/-- Source steps decrease the rank vector and have controlled mass growth;
data steps decrease the vector componentwise and never increase mass. -/
def Move {r : Nat} (s t : State r) : Prop :=
  Good t ∧ ((Less r t.counts s.counts ∧ t.mass ≤ growth s.mass) ∨
    (Weak r t.counts s.counts ∧ t.mass ≤ s.mass))

inductive Run {r : Nat} : State r → State r → Prop
  | refl (s : State r) : Run s s
  | head {s t u : State r} : Move s t → Run t u → Run s u

theorem Run.trans {r : Nat} {s t u : State r} (h : Run s t) (g : Run t u) :
    Run s u := by
  induction h with
  | refl => exact g
  | head hm _ ih => exact .head hm (ih g)

theorem Move.growth {r : Nat} {s t : State r} (h : Move s t) :
    t.mass ≤ growth s.mass := by
  rcases h.2 with h | h
  · exact h.2
  · exact Nat.le_trans h.2 (le_growth _)

theorem Move.top_le {r : Nat} {s t : State (r + 1)} (h : Move s t) :
    t.counts.1 ≤ s.counts.1 := by
  rcases h.2 with h | h
  · rcases h.1 with h | h
    · exact Nat.le_of_lt h
    · exact Nat.le_of_eq h.1
  · exact h.1.1

theorem Move.low {r : Nat} {s t : State (r + 1)} (h : Move s t)
    (he : t.counts.1 = s.counts.1) : Move s.low t.low := by
  refine ⟨h.1.2, ?_⟩
  rcases h.2 with h | h
  · refine Or.inl ⟨?_, h.2⟩
    rcases h.1 with h | h
    · exact ((Nat.ne_of_lt h) he).elim
    · exact h.2
  · exact Or.inr ⟨h.1.2, h.2⟩

/-- Split at the first decrease of the highest count. Its entire prefix is
a run at the lower rank, with the same charged mass at every endpoint. -/
theorem Run.first_drop {r : Nat} {s t : State (r + 1)} (h : Run s t) :
    (Run s.low t.low ∧ t.counts.1 = s.counts.1) ∨
      ∃ p q : State (r + 1), Run s.low p.low ∧ p.counts.1 = s.counts.1 ∧
        Move p q ∧ q.counts.1 < s.counts.1 ∧ Run q t := by
  induction h with
  | refl => exact Or.inl ⟨.refl _, rfl⟩
  | @head s v t hm hs ih =>
      have hv := hm.top_le
      by_cases he : v.counts.1 = s.counts.1
      · rcases ih with ⟨hl, ht⟩ | ⟨p, q, hp, hpeq, hq, hlt, ht⟩
        · exact Or.inl ⟨.head (hm.low he) hl, ht.trans he⟩
        · exact Or.inr ⟨p, q, .head (hm.low he) hp, hpeq.trans he,
            hq, by omega, ht⟩
      · exact Or.inr ⟨s, v, .refl _, rfl, hm, by omega, hs⟩

/-- At most h decreases of the highest count, with a complete lower-rank
phase between them. All parameters are ordinary natural numbers. -/
def phase (lower : Nat → Nat) : Nat → Nat → Nat
  | 0, s => lower s
  | h + 1, s => max (lower s) (phase lower h (growth (lower s)))

def bound : Nat → Nat → Nat
  | 0, s => s
  | r + 1, s => phase (bound r) s s

private theorem phase_bound {r : Nat}
    (lower : Nat → Nat)
    (ih : ∀ {s t : State r}, Good s → Run s t →
      ∀ b, s.mass ≤ b → t.mass ≤ lower b) :
    ∀ h, ∀ {s t : State (r + 1)}, Good s → Run s t →
      s.counts.1 ≤ h → ∀ b, s.mass ≤ b → t.mass ≤ phase lower h b := by
  intro h
  induction h with
  | zero =>
      intro s t hg hr hh b hb
      rcases hr.first_drop with ⟨hl, _⟩ | ⟨p, q, _, _, _, hlt, _⟩
      · exact ih (s := s.low) (t := t.low) hg.2 hl b hb
      · omega
  | succ h iph =>
      intro s t hg hr hh b hb
      rcases hr.first_drop with ⟨hl, _⟩ | ⟨p, q, hp, _, hq, hlt, ht⟩
      · have hlow := ih (s := s.low) (t := t.low) hg.2 hl b hb
        exact Nat.le_trans hlow (Nat.le_max_left _ _)
      · have hpbound : p.mass ≤ lower b := ih (s := s.low) (t := p.low) hg.2 hp b hb
        have hqbound : q.mass ≤ growth (lower b) :=
          Nat.le_trans hq.growth (growth_mono hpbound)
        have hrest := iph hq.1 ht (by omega) (growth (lower b)) hqbound
        exact Nat.le_trans hrest (Nat.le_max_right _ _)

/-- Every endpoint of every controlled ranked trace has this explicit finite
bound, regardless of the number of intervening affine data steps. -/
theorem run_bound (r : Nat) {s t : State r} (hg : Good s) (hr : Run s t)
    (b : Nat) (hb : s.mass ≤ b) : t.mass ≤ bound r b := by
  induction r generalizing b with
  | zero =>
      have hst : t.mass ≤ s.mass := by
        clear hg hb
        induction hr with
        | refl => exact Nat.le_refl _
        | head hm _ ih =>
            rcases hm.2 with h | h
            · exact h.1.elim
            · exact Nat.le_trans ih h.2
      exact Nat.le_trans hst hb
  | succ r ih =>
      exact phase_bound (bound r) (fun hg hr b hb => ih hg hr b hb)
        b hg hr (Nat.le_trans hg.1 hb) b hb

#print axioms run_bound
end Blc.SelfintRound5BoundRank
