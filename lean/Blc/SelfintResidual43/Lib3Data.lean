import Blc.SelfintResidual43.TypeRows

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
namespace Lib3
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[2,3,4],[1],[0,1,2],[1,3,4]],[[3],[0],[],[1,3,4]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [1,3,4] (SelfintRecursiveTypes.cons [0,1,2,3,4] SelfintRecursiveTypes.empty)
def src : Term := (.app (.app (.app (.var 2) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 8)))))))))))))))))) (.lam (.var 0)))
def dst : Term := (.lam (.app (.var 0) (.var 0)))
def b0 : Term := .var 2
def b1 : Term := .var 1
def b2 : Term := .lam b1
def b3 : Term := .lam b2
def b4 : Term := .app b0 b3
def b5 : Term := .var 0
def b6 : Term := .app b5 b3
def b7 : Term := .lam b5
def b8 : Term := .lam b7
def b9 : Term := .app b5 b8
def b10 : Term := .var 8
def b11 : Term := .app b6 b10
def b12 : Term := .lam b11
def b13 : Term := .app b9 b12
def b14 : Term := .lam b13
def b15 : Term := .app b6 b14
def b16 : Term := .lam b15
def b17 : Term := .app b9 b16
def b18 : Term := .lam b17
def b19 : Term := .app b9 b18
def b20 : Term := .lam b19
def b21 : Term := .app b6 b20
def b22 : Term := .lam b21
def b23 : Term := .app b6 b22
def b24 : Term := .lam b23
def b25 : Term := .app b6 b24
def b26 : Term := .lam b25
def b27 : Term := .app b4 b26
def b28 : Term := .app b27 b7
def b29 : Term := .app b5 b5
def b30 : Term := .lam b29
open SelfintRecursiveTypes
theorem tv : validSlots tab = true := by decide
theorem casesN {P : Nat → Prop} (w0 : P 0) (w1 : P 1) (w2 : P 2) (w3 : P 3) (j : Nat) (hj : j < 4) : P j := by
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 from by omega) with rfl | rfl | rfl | rfl <;> assumption

end Lib3
end Blc.Floor43
