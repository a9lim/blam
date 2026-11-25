import Blc.Selfint37Evidence
import Blc.SelfintFloorApp

set_option Elab.async false
namespace Blc.Floor45
open Term SelfintSharp SelfintLowerBound
open Round3Floor38
def code (t : Term) : Nat :=
  (blcCode t).foldl (fun n b => 2*n + (if b then 1 else 0)) 1
def inv (e : Term) := Term.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0))
def trim : Term → Term
  | .lam t => trim t
  | t => t
def measures (d : Nat) : Term → Nat × Nat
  | .var i => if i<d then (2^i,1) else (0,0)
  | .lam t => let (m,w) := measures (d+1) t; (m/2,w)
  | .app f a =>
    let (m,w) := measures d f
    let (n,v) := measures d a
    let u := m ||| n
    (u, max (max w v) ((List.range d).countP (fun j => u.testBit j)))
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
inductive Kind where | three | smaller | chain | width | sourceHead | identityHead
def fact (k : Kind) (t : Term) : Bool := match k with
  | .three => decide (leading t ≥ 3)
  | .smaller => decide ((blcCode t).length < 45)
  | .chain => chain (trim t)
  | .width => decide ((measures 0 (trim t)).2 < 3)
  | .sourceHead => match tag t with
    | some (l,n,k) => decide (l ≠ 2 ∨ (n = 1 ∧ k ≠ 2))
    | none => false
  | .identityHead => match tag t with
    | some v => decide (v ≠ (0,1,2))
    | none => false
def check (e : Term) (ps : List (List Direction)) (k : Kind) : Bool :=
  let start := match k with | .identityHead => inv e | _ => e
  (replay ps start).any (fact k)
def checkPay (e : Term) (ps : List (List Direction)) (i : Nat) (qs : List (List Direction)) : Bool :=
  match replay ps (inv e) with
  | some (.app (.app (.var 1) p) r) =>
    (replay qs (if i=0 then p else r)).any (fun t => decide (NFt t ∧ t ≠ (if i=0 then churchFalse else .var 0)))
  | _ => false
theorem wSource {e t : Term} (hp : Betas e t) (ht : WGrammar38.B WGrammar38.empty t) : ¬ IsSelfInterpreter e := by
  intro he
  exact WGrammar38.no_normal_form (t := inv t) (Or.inl (Or.inl ht))
    (betas_preserve_hasNormalForm (betas_appL _ (betas_appL _ hp)) (identity_has_normal_form he))
theorem wIdentity {e t : Term} (hp : Betas (inv e) t) (ht : WGrammar38.B WGrammar38.empty t) : ¬ IsSelfInterpreter e := by
  intro he
  exact WGrammar38.no_normal_form ht (betas_preserve_hasNormalForm hp (identity_has_normal_form he))
#print axioms wSource
#print axioms wIdentity
end Blc.Floor45
