import Blc.SelfintResidual45.Reg9692402104538Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692402104538
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok0 : RegProof.Span ck 0 10 := RegProof.block (n := 10) (by decide +kernel)
theorem ok10 : RegProof.Span ck 10 20 := RegProof.block (n := 10) (by decide +kernel)
theorem ok20 : RegProof.Span ck 20 30 := RegProof.block (n := 10) (by decide +kernel)
theorem ok30 : RegProof.Span ck 30 40 := RegProof.block (n := 10) (by decide +kernel)
theorem ok40 : RegProof.Span ck 40 50 := RegProof.block (n := 10) (by decide +kernel)
theorem ok50 : RegProof.Span ck 50 60 := RegProof.block (n := 10) (by decide +kernel)
theorem ok60 : RegProof.Span ck 60 70 := RegProof.block (n := 10) (by decide +kernel)
theorem ok70 : RegProof.Span ck 70 80 := RegProof.block (n := 10) (by decide +kernel)
theorem ok80 : RegProof.Span ck 80 90 := RegProof.block (n := 10) (by decide +kernel)
theorem ok90 : RegProof.Span ck 90 100 := RegProof.block (n := 10) (by decide +kernel)
theorem ok100 : RegProof.Span ck 100 110 := RegProof.block (n := 10) (by decide +kernel)
theorem ok110 : RegProof.Span ck 110 120 := RegProof.block (n := 10) (by decide +kernel)
theorem ok120 : RegProof.Span ck 120 130 := RegProof.block (n := 10) (by decide +kernel)
theorem ok130 : RegProof.Span ck 130 140 := RegProof.block (n := 10) (by decide +kernel)
theorem ok140 : RegProof.Span ck 140 150 := RegProof.block (n := 10) (by decide +kernel)
theorem ok150 : RegProof.Span ck 150 160 := RegProof.block (n := 10) (by decide +kernel)
theorem ok160 : RegProof.Span ck 160 170 := RegProof.block (n := 10) (by decide +kernel)
theorem ok170 : RegProof.Span ck 170 180 := RegProof.block (n := 10) (by decide +kernel)
theorem ok180 : RegProof.Span ck 180 190 := RegProof.block (n := 10) (by decide +kernel)
theorem ok190 : RegProof.Span ck 190 200 := RegProof.block (n := 10) (by decide +kernel)
theorem ok200 : RegProof.Span ck 200 210 := RegProof.block (n := 10) (by decide +kernel)
theorem ok210 : RegProof.Span ck 210 216 := RegProof.block (n := 6) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 216 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 ok10) (RegProof.merge ok20 (RegProof.merge ok30 ok40))) (RegProof.merge (RegProof.merge ok50 (RegProof.merge ok60 ok70)) (RegProof.merge ok80 (RegProof.merge ok90 ok100)))) (RegProof.merge (RegProof.merge (RegProof.merge ok110 ok120) (RegProof.merge ok130 (RegProof.merge ok140 ok150))) (RegProof.merge (RegProof.merge ok160 (RegProof.merge ok170 ok180)) (RegProof.merge ok190 (RegProof.merge ok200 ok210)))))
def e9692402104538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1))))) (.var 0))))
theorem wire_e9692402104538 : Closed e9692402104538 ∧ code e9692402104538 = 44876774193370 := by decide

theorem excluded : ¬ IsSelfInterpreter e9692402104538 := by
  intro he
  have h := rawCount he
  have hp : replay [[],[]] e9692402104538 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 216 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9692402104538
