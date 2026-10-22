import LambdaSink

/- Complete literal head alternatives for the body of a first source let.
   This closes flat x-headed arguments but retains the real lambda/nonlinear
   and nested-redex cases, rather than assuming an s-spine normal form. -/
namespace Blc.Close46SourceBody
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open Close46Source Close46Local Close46Dispatch Round3Reader SelfintControl
open Close46FlatMinimum Close46FlatPrefix Close46Front Close46LetSink
open Close46RootFlat

set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

theorem reader_after_head_contract {n : Nat} {bs as : List Term} {a : Term}
    (hr : Reader (bodyReader (spine (.var n) bs) a as)) :
    Reader (.lam (spine (substDec 0 a (.var n)) ((bs.map (substDec 0 a))++as))) := by
  have hh := hr.beta (Beta.lam (Close46Source.spine_beta
    (Beta.beta (spine (.var n) bs) a) as))
  simpa only [contract,subst_spine,spine_append] using hh

/-- Neither outer rigid c nor j can head this body. The operand trees
    may contain arbitrary lambdas, redexes, and further uses of x. -/
theorem reader_head_index {n : Nat} {bs as : List Term} {a : Term}
    (hr : Reader (bodyReader (spine (.var n) bs) a as)) : n=0 ∨ n=1 := by
  by_cases hn : n=0
  · exact .inl hn
  · have hh := reader_after_head_contract hr
    simp only [substDec,hn,show n>0 by omega,↓reduceIte] at hh
    have he := reader_flat_prefix hh (by rfl : lamCount (.var (n-1))=0)
    have he' : n-1=0 := Term.var.inj he
    right; omega

/-- In an x-headed body a flat argument becomes the actual source head
    prefix after contraction. Reader semantics force that prefix to be s. -/
theorem x_head_flat_argument {bs as : List Term} {a : Term}
    (hr : Reader (bodyReader (spine (.var 0) bs) a as)) (ha : lamCount a=0) :
    a=.var 0 := by
  have hh := reader_after_head_contract hr
  simp only [substDec,if_true] at hh
  exact reader_flat_prefix hh ha

theorem minimum_x_head_not_flat {bs as : List Term} {a : Term}
    (hm : MinimumReader (bodyReader (spine (.var 0) bs) a as)) : 0<lamCount a := by
  by_cases ha : lamCount a=0
  · have he := x_head_flat_argument hm.laws.probes ha
    subst a
    exact (minimum_body_not_stream_argument hm).elim
  · omega

/-- A lambda-headed B needs a pending operand: otherwise the output has
    two leading lambdas, contradicting the zero law. -/
theorem lambda_body_needs_pending {b a : Term} {as : List Term}
    (hr : Reader (bodyReader (.lam b) a as)) : as ≠ [] := by
  intro he
  subst as
  have hh := hr.beta (Beta.lam (Beta.beta (.lam b) a))
  have hn := reader_body_not_lam (contract (.lam b) a) hh
  exact hn trivial

/-- This is a source-syntax alternative, not a head-normalized residual.
    No weight bound or other lane's semantic inventory is assumed. -/
theorem minimum_body_alternatives {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) :
    (∃ bs, b=spine (.var 1) bs) ∨
    (∃ bs, b=spine (.var 0) bs ∧ 0<lamCount a) ∨
    (∃ d, b=.lam d ∧ as≠[]) ∨
    (∃ d e bs, b=spine (.app (.lam d) e) bs) := by
  rcases head_shape b with hl | hrig | hred
  · cases b with
    | var n => exact False.elim hl
    | app f x => exact False.elim hl
    | lam d => exact .inr (.inr (.inl ⟨d,rfl,lambda_body_needs_pending hm.laws.probes⟩))
  · obtain ⟨n,bs,rfl⟩ := rigid_spine hrig
    rcases reader_head_index hm.laws.probes with rfl | rfl
    · exact .inr (.inl ⟨bs,rfl,minimum_x_head_not_flat hm⟩)
    · exact .inl ⟨bs,rfl⟩
  · exact .inr (.inr (.inr hred))

theorem root_reader_after_head_contract {n : Nat} {bs as : List Term} {a : Term}
    (hr : Reader (rootReader (spine (.var n) bs) a as)) :
    Reader (spine (substDec 0 a (.var n)) ((bs.map (substDec 0 a))++as)) := by
  have hh := hr.beta (Close46Source.spine_beta
    (Beta.beta (spine (.var n) bs) a) as)
  simpa only [contract,subst_spine,spine_append] using hh

/-- At the root there is no stream binder in scope. A rigid first-redex
    body therefore must be x-headed, not c- or j-headed. -/
theorem root_reader_head_index {n : Nat} {bs as : List Term} {a : Term}
    (hr : Reader (rootReader (spine (.var n) bs) a as)) : n=0 := by
  by_cases hn : n=0
  · exact hn
  · have hh := root_reader_after_head_contract hr
    simp only [substDec,hn,show n>0 by omega,↓reduceIte] at hh
    exact (reader_not_rigid hh (rigid_spine_of (.var (n-1)) _)).elim

theorem root_x_head_not_flat {bs as : List Term} {a : Term}
    (hr : Reader (rootReader (spine (.var 0) bs) a as)) : 0<lamCount a := by
  by_cases ha : lamCount a=0
  · have hh := root_reader_after_head_contract hr
    simp only [substDec,if_true] at hh
    exact (reader_not_rigid hh (rigid_spine_of (flat_rigid a ha) _)).elim
  · omega

/-- The root classification needs no minimality: rigid x-headed bodies
    already force a lambda-containing source definition. -/
theorem root_body_alternatives {b a : Term} {as : List Term}
    (hr : Reader (rootReader b a as)) :
    (∃ bs, b=spine (.var 0) bs ∧ 0<lamCount a) ∨
    (∃ d, b=.lam d) ∨
    (∃ d e bs, b=spine (.app (.lam d) e) bs) := by
  rcases head_shape b with hl | hrig | hred
  · cases b with
    | var n => exact False.elim hl
    | app f x => exact False.elim hl
    | lam d => exact .inr (.inl ⟨d,rfl⟩)
  · obtain ⟨n,bs,rfl⟩ := rigid_spine hrig
    have hn := root_reader_head_index hr
    subst n
    exact .inl ⟨bs,rfl,root_x_head_not_flat hr⟩
  · exact .inr (.inr hred)

#print axioms reader_head_index
#print axioms x_head_flat_argument
#print axioms minimum_body_alternatives
#print axioms root_body_alternatives
end Blc.Close46SourceBody
