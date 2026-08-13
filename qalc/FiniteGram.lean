import Std

/-!
# Exact finite column-Gram checker

Generated composed-carrier certificates use this small trusted checker.  It
recomputes every source norm and every pairwise inner product from the complete
list of target/coefficient rows.  Coefficients are exact elements of
`Z[omega]/sqrt(2)^k`; equality raises both values to a common denominator and
therefore needs no normalization oracle.
-/

namespace QalcFiniteGram

structure Dw where
  a : Int
  b : Int
  c : Int
  d : Int
  k : Nat
  deriving DecidableEq, Repr

def zero : Dw := ⟨0, 0, 0, 0, 0⟩
def one : Dw := ⟨1, 0, 0, 0, 0⟩

/-- Multiply the numerator by sqrt(2) while increasing the displayed
denominator power, preserving the represented scalar. -/
def liftOne (x : Dw) : Dw :=
  ⟨x.b - x.d, x.a + x.c, x.b + x.d, x.c - x.a, x.k + 1⟩

def raiseBy : Dw → Nat → Dw
  | x, 0 => x
  | x, n + 1 => raiseBy (liftOne x) n

def raiseTo (target : Nat) (x : Dw) : Dw :=
  raiseBy x (target - x.k)

def add (left right : Dw) : Dw :=
  let target := max left.k right.k
  let l := raiseTo target left
  let r := raiseTo target right
  ⟨l.a + r.a, l.b + r.b, l.c + r.c, l.d + r.d, target⟩

def mul (left right : Dw) : Dw :=
  ⟨left.a * right.a - left.b * right.d - left.c * right.c -
      left.d * right.b,
    left.a * right.b + left.b * right.a - left.c * right.d -
      left.d * right.c,
    left.a * right.c + left.b * right.b + left.c * right.a -
      left.d * right.d,
    left.a * right.d + left.b * right.c + left.c * right.b +
      left.d * right.a,
    left.k + right.k⟩

def conj (x : Dw) : Dw := ⟨x.a, -x.d, -x.c, -x.b, x.k⟩

def equivalent (left right : Dw) : Bool :=
  let target := max left.k right.k
  raiseTo target left == raiseTo target right

abbrev Column := List (Nat × Dw)

def dotEntry (entry : Nat × Dw) : Column → Dw
  | [] => zero
  | candidate :: rest =>
      let tail := dotEntry entry rest
      if entry.1 == candidate.1 then
        add (mul (conj entry.2) candidate.2) tail
      else tail

def dot : Column → Column → Dw
  | [], _ => zero
  | entry :: rest, right => add (dotEntry entry right) (dot rest right)

def orthogonalTo (left : Column) : List Column → Bool
  | [] => true
  | right :: rest =>
      equivalent (dot left right) zero && orthogonalTo left rest

def gramChecked : List Column → Bool
  | [] => true
  | column :: rest =>
      equivalent (dot column column) one &&
      orthogonalTo column rest && gramChecked rest

example : gramChecked [
    [(0, ⟨1, 0, 0, 0, 1⟩), (1, ⟨1, 0, 0, 0, 1⟩)],
    [(0, ⟨1, 0, 0, 0, 1⟩), (1, ⟨-1, 0, 0, 0, 1⟩)]] = true := by
  decide +kernel

end QalcFiniteGram
