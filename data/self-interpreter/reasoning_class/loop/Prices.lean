import Blc.SelfintSourceCost

/- Exact source prices for the follow-up's explicit configurations.
   These are syntax identities, not the semantic family lower bounds. -/
namespace Blc.LoopPrices
open Term SelfintWireCost SelfintWidenHoist

theorem no_hole_price (t : Term) (d : Nat) (h : FreeUnder (d+1) t) :
    weight d t = wire t := by
  induction t generalizing d with
  | var n => simp [weight, wire_var, Nat.ne_of_lt h]
  | lam b ih => simp [weight, wire_lam, ih (d+1) h, Nat.add_comm]
  | app f x ihf ihx =>
      simp [weight, wire_app, ihf d h.1, ihx d h.2, Nat.add_comm, Nat.add_assoc]

-- A frame [b,s,c,j], B frame [s,c,j].
def split (A B : Term) : Term := .lam
  (.app (.app (.var 0) (.lam (.app (.app (.var 0) A) (.var 2)))) B)

theorem split_price (A B : Term) :
    weight 0 (split A B) = 20 + weight 2 A + weight 1 B := by
  simp [split, weight]
  omega

-- A frame [b,s,a,c], B frame [s,a,c]; any multiplicity of a is allowed.
def hoisted (A B : Term) : Term := .app (.lam (.lam
  (.app (.app (.var 0) (.lam (.app (.app (.var 0) A) (.var 3)))) B))) (.var 1)

theorem hoisted_price (A B : Term) (hA : FreeUnder 4 A) (hB : FreeUnder 3 B) :
    weight 0 (hoisted A B) = 25 + wire A + wire B := by
  simp [hoisted, weight, no_hole_price A 3 hA, no_hole_price B 2 hB]
  omega

-- λs.(λx.s (λb t.b (x t) (c t x))) X; X frame [s,c,j].
def sharedX (X : Term) : Term := .lam (.app (.lam
  (.app (.var 1) (.lam (.lam
    (.app (.app (.var 1) (.app (.var 2) (.var 0)))
      (.app (.app (.var 4) (.var 0)) (.var 2))))))) X)

theorem sharedX_price (X : Term) :
    weight 0 (sharedX X) = 46 + weight 1 X := by
  simp [sharedX, weight]
  omega

-- λs.(λu.(λx.s (λb t.b (x s) x)) X) j; X frame [u,s,c].
def nestedX (X : Term) : Term := .lam (.app (.lam (.app (.lam
  (.app (.var 2) (.lam (.lam
    (.app (.app (.var 1) (.app (.var 2) (.var 4))) (.var 2)))))) X)) (.var 2))

theorem nestedX_price (X : Term) (hX : FreeUnder 3 X) :
    weight 0 (nestedX X) = 47 + wire X := by
  simp [nestedX, weight, no_hole_price X 2 hX]
  omega

#print axioms split_price
#print axioms hoisted_price
#print axioms sharedX_price
#print axioms nestedX_price
end Blc.LoopPrices
