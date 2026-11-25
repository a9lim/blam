import Blc.SelfintResidual45.Reg9676763630446Data

set_option Elab.async false
namespace Blc.Floor45.Reg9676763630446
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
theorem ok210 : RegProof.Span ck 210 220 := RegProof.block (n := 10) (by decide +kernel)
theorem ok220 : RegProof.Span ck 220 230 := RegProof.block (n := 10) (by decide +kernel)
theorem ok230 : RegProof.Span ck 230 240 := RegProof.block (n := 10) (by decide +kernel)
theorem okAll : RegProof.Span ck 0 240 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.merge ok0 (RegProof.merge ok10 ok20)) (RegProof.merge ok30 (RegProof.merge ok40 ok50))) (RegProof.merge (RegProof.merge ok60 (RegProof.merge ok70 ok80)) (RegProof.merge ok90 (RegProof.merge ok100 ok110)))) (RegProof.merge (RegProof.merge (RegProof.merge ok120 (RegProof.merge ok130 ok140)) (RegProof.merge ok150 (RegProof.merge ok160 ok170))) (RegProof.merge (RegProof.merge ok180 (RegProof.merge ok190 ok200)) (RegProof.merge ok210 (RegProof.merge ok220 ok230)))))
def e9676763630446 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
theorem wire_e9676763630446 : Closed e9676763630446 ∧ code e9676763630446 = 44861135719278 := by decide

theorem excluded : ¬ IsSelfInterpreter e9676763630446 := by
  intro he
  have h := rawCount he
  have hp : replay [] e9676763630446 = some (mdl.term 0) := by change _ = some (lit0); decide
  obtain ⟨k,hk⟩ := clocks_replay h hp
  exact RegProof.noClock mdl 240 getSt hints (by decide) okAll (by decide) k hk
#print axioms excluded
end Blc.Floor45.Reg9676763630446
