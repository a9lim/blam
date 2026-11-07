/- Executable finite checks supporting the handwritten size-38 classification.
These certify actual reductions and positive structural/normal-form facts.
They are not a formal enumeration or the global numeric theorem. -/
import Size38Sources
namespace Blc.Round3Floor38.Size38Finite
open Term SelfintSharp SelfintLowerBound

def leading : Term → Nat
  | .lam b => leading b + 1
  | _ => 0
def tag : Term → Option (Nat × Nat × Nat)
  | .var n => some (0,n,0)
  | .lam b => (tag b).map fun (l,n,k) => (l+1,n,k)
  | .app f _ => match tag f with
    | some (0,n,k) => some (0,n,k+1)
    | _ => none
def chain : Term → Bool
  | .var _ => true
  | .lam b => chain b
  | .app f a => chain f && chain a && (decide (nonlinear f = 0) || decide (nonlinear a = 0))
inductive Kind where | three | chain | smaller | sourceHead | identityHead
def fact (k : Kind) (t : Term) : Bool := match k with
  | .three => decide (3 ≤ leading t)
  | .chain => chain t
  | .smaller => decide ((blcCode t).length < 38)
  | .sourceHead => match tag t with
      | some (l,n,k) => decide (l ≠ 2 ∨ (n = 1 ∧ k ≠ 2))
      | none => false
  | .identityHead => match tag t with
      | some q => decide (q ≠ (2,1,2))
      | none => false
def invocation (e : Term) : Term :=
  .lam (.lam (.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0))))
def check (e : Term) (ps : List (List Direction)) (k : Kind) (identity : Bool) : Bool :=
  match replay ps (if identity then invocation e else e) with
  | none => false
  | some t => fact k t
def payload (t : Term) (i : Nat) : Option Term := match t with
  | .lam (.lam (.app (.app (.var 1) p) r)) => if i=0 then some p else if i=1 then some r else none
  | _ => none
def checkPayload (e : Term) (ps : List (List Direction)) (i : Nat)
    (qs : List (List Direction)) : Bool :=
  match replay ps (invocation e) with
  | none => false
  | some t => match payload t i with
      | none => false
      | some p => match replay qs p with
          | none => false
          | some u => decide (NFt u ∧ u ≠ (if i=0 then churchFalse else .var 0))
def checkCycle (e : Term) (p q : Nat) : Bool :=
  match headSteps p (invocation e) with
  | none => false
  | some u => decide (0 < q ∧ headSteps q u = some u)

end Blc.Round3Floor38.Size38Finite
