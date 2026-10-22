/- General NEXT-hole hoisting and its exact capture-weight balance.
   Source variables are c=0 and j=1. This file does not prove the reader floor. -/
import Blc.SelfintKnot

namespace Blc.Round3Reader
open Term
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def weight (d : Nat) : Term → Nat
  | .var n => if n = d+1 then 4*d else n+2
  | .lam b => 2 + weight (d+1) b
  | .app f a => 2 + weight d f + weight d a

def holes (d : Nat) : Term → Nat
  | .var n => if n = d+1 then 1 else 0
  | .lam b => holes (d+1) b
  | .app f a => holes d f + holes d a

def cs (d : Nat) : Term → Nat
  | .var n => if n = d then 1 else 0
  | .lam b => cs (d+1) b
  | .app f a => cs d f + cs d a

def depths (d : Nat) : Term → Nat
  | .var n => if n = d+1 then d else 0
  | .lam b => depths (d+1) b
  | .app f a => depths d f + depths d a

/-- Insert one outer binder: c shifts and the old free j becomes that binder. -/
def bindHole (d : Nat) : Term → Term
  | .var n => if n < d then .var n else if n = d then .var (d+1) else .var d
  | .lam b => .lam (bindHole (d+1) b)
  | .app f a => .app (bindHole d f) (bindHole d a)

def hoist (t : Term) : Term := .app (.lam (bindHole 0 t)) (.var 1)

theorem bindHole_contract (t : Term) (d : Nat) (hs : FreeUnder (d+2) t) :
    substDec d (.var (d+1)) (bindHole d t) = t := by
  induction t generalizing d with
  | var n =>
      change n < d+2 at hs
      by_cases hlt : n < d
      · simp [bindHole, hlt, substDec, show n ≠ d by omega, show ¬ n > d by omega]
      · by_cases he : n = d
        · subst n; simp [bindHole, substDec]
        · have hn : n = d+1 := by omega
          subst n; simp [bindHole, hlt, substDec]
  | lam b ih =>
      have hb : FreeUnder ((d+1)+2) b := by simpa [FreeUnder, Nat.add_assoc] using hs
      simp only [bindHole, substDec, shift]
      simp only [Nat.zero_le, if_true]
      exact congrArg Term.lam (ih (d+1) hb)
  | app f a ihf iha =>
      change FreeUnder (d+2) f ∧ FreeUnder (d+2) a at hs
      simp only [bindHole, substDec]
      rw [ihf d hs.1, iha d hs.2]

theorem hoist_beta (t : Term) (hs : FreeUnder 2 t) : Beta (hoist t) t := by
  have hh := Beta.beta (bindHole 0 t) (.var 1)
  simpa [hoist, contract, bindHole_contract t 0 hs] using hh

theorem bindHole_no_holes (t : Term) (d : Nat) (hs : FreeUnder (d+2) t) :
    holes (d+1) (bindHole d t) = 0 := by
  induction t generalizing d with
  | var n =>
      change n < d+2 at hs
      by_cases hlt : n < d
      · simp [bindHole, hlt, holes, show n ≠ d+1+1 by omega]
      · by_cases he : n = d
        · subst n; simp [bindHole, holes]
        · simp [bindHole, hlt, he, holes, show d ≠ d+1+1 by omega]
  | lam b ih =>
      have hb : FreeUnder ((d+1)+2) b := by simpa [FreeUnder, Nat.add_assoc] using hs
      exact ih (d+1) hb
  | app f a ihf iha =>
      change FreeUnder (d+2) f ∧ FreeUnder (d+2) a at hs
      simp [bindHole, holes, ihf d hs.1, iha d hs.2]

theorem hoist_one_hole (t : Term) (hs : FreeUnder 2 t) : holes 0 (hoist t) = 1 := by
  simp [hoist, holes, bindHole_no_holes t 0 hs]

theorem bindHole_weight (t : Term) (d : Nat) (hs : FreeUnder (d+2) t) :
    weight (d+1) (bindHole d t) + 3 * depths d t =
      weight d t + cs d t + 2 * holes d t := by
  induction t generalizing d with
  | var n =>
      change n < d+2 at hs
      by_cases hlt : n < d
      · simp [bindHole, hlt, weight, depths, cs, holes,
          show n ≠ d by omega, show n ≠ d+1 by omega, show n ≠ d+1+1 by omega]
      · by_cases he : n = d
        · subst n; simp [bindHole, hlt, weight, depths, cs, holes]
        · have hn : n = d+1 := by omega
          subst n; simp [bindHole, hlt, weight, depths, cs, holes, show d ≠ d+1+1 by omega] <;> omega
  | lam b ih =>
      have hb : FreeUnder ((d+1)+2) b := by simpa [FreeUnder, Nat.add_assoc] using hs
      have hi := ih (d+1) hb
      simp only [bindHole, weight, depths, cs, holes]
      omega
  | app f a ihf iha =>
      change FreeUnder (d+2) f ∧ FreeUnder (d+2) a at hs
      have hf := ihf d hs.1
      have ha := iha d hs.2
      simp only [bindHole, weight, depths, cs, holes]
      omega

theorem hoist_weight (t : Term) (hs : FreeUnder 2 t) (hj : holes 0 t = 1) :
    weight 0 (hoist t) + 3 * depths 0 t = weight 0 t + 6 + cs 0 t := by
  have hh := bindHole_weight t 0 hs
  rw [hj] at hh
  change weight 1 (bindHole 0 t) + 3 * depths 0 t = weight 0 t + cs 0 t + 2 at hh
  change 2 + (2 + weight 1 (bindHole 0 t)) + 0 + 3 * depths 0 t = _
  omega

end Blc.Round3Reader
