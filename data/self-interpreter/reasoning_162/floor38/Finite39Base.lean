/- Fixed finite predicates for size 39. The size threshold is 39, and
identity probes use free rigid C,R rather than enclosing lambdas. -/
import Finite38Base
import WGrammar38
import Blc.SelfintFloorApp
namespace Blc.Round3Floor38.Size39Finite
open Term SelfintSharp SelfintLowerBound
open Size38Finite (leading tag chain)

inductive Kind where | three | chain | smaller | sourceHead | identityHead
def fact (k : Kind) (t : Term) : Bool := match k with
  | .three => decide (3 ≤ leading t)
  | .chain => chain t
  | .smaller => decide ((blcCode t).length < 39)
  | .sourceHead => match tag t with
      | some (l,n,k) => decide (l ≠ 2 ∨ (n = 1 ∧ k ≠ 2))
      | none => false
  | .identityHead => match tag t with
      | some q => decide (q ≠ (0,1,2))
      | none => false
def invocation (e : Term) : Term :=
  .app (.app e (.var 1)) (SelfintControl.quoteI (.var 0))
def check (e : Term) (ps : List (List Direction)) (k : Kind) (identity : Bool) : Bool :=
  match replay ps (if identity then invocation e else e) with
  | none => false
  | some t => fact k t
def payload (t : Term) (i : Nat) : Option Term := match t with
  | .app (.app (.var 1) p) r => if i=0 then some p else if i=1 then some r else none
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

theorem not_selfint_w_reduct {e t : Term} (hp : Betas e t)
    (ht : WGrammar38.B WGrammar38.empty t) : ¬ IsSelfInterpreter e := by
  intro he
  exact WGrammar38.no_normal_form (t := invocation t) (Or.inl (Or.inl ht))
    (betas_preserve_hasNormalForm
      (betas_appL _ (betas_appL _ hp)) (identity_has_normal_form he))
theorem not_selfint_w_identity {e t : Term} (hp : Betas (invocation e) t)
    (ht : WGrammar38.B WGrammar38.empty t) : ¬ IsSelfInterpreter e := by
  intro he
  exact WGrammar38.no_normal_form ht
    (betas_preserve_hasNormalForm hp (identity_has_normal_form he))
theorem not_selfint_cycle {e u : Term} {p q : Nat}
    (hp : headSteps p (invocation e) = some u)
    (hq : headSteps q u = some u) (hpos : 0 < q) : ¬ IsSelfInterpreter e := by
  intro he
  exact headDiverges_not_hasNormalForm (SelfintFloor.cycle_diverges hp hq hpos)
    (identity_has_normal_form he)

end Blc.Round3Floor38.Size39Finite
