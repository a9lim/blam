import Blc.SelfintResidual43.TypeRows
import Blc.SelfintResidual44.H44Base

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock
namespace Lib101
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[],[5],[3,4,5],[4],[1,2]],[[1,2,3,5],[0,1,4],[3,4,5],[4],[3,4,5]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [1,3,4] (SelfintRecursiveTypes.cons [1,2,3,5] SelfintRecursiveTypes.empty)
def src : Term := (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7))))))))))))))))
def dst : Term := (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 0))
def b0 : Term := .var 2
def b1 : Term := .var 1
def b2 : Term := .app b0 b1
def b3 : Term := .var 0
def b4 : Term := .lam b1
def b5 : Term := .lam b4
def b6 : Term := .app b3 b5
def b7 : Term := .lam b3
def b8 : Term := .lam b7
def b9 : Term := .app b3 b8
def b10 : Term := .var 7
def b11 : Term := .app b6 b10
def b12 : Term := .lam b11
def b13 : Term := .app b9 b12
def b14 : Term := .lam b13
def b15 : Term := .app b9 b14
def b16 : Term := .lam b15
def b17 : Term := .app b6 b16
def b18 : Term := .lam b17
def b19 : Term := .app b6 b18
def b20 : Term := .lam b19
def b21 : Term := .app b6 b20
def b22 : Term := .lam b21
def b23 : Term := .app b6 b22
def b24 : Term := .lam b23
def b25 : Term := .app b2 b24
def b26 : Term := .lam b5
def b27 : Term := .app b1 b26
def b28 : Term := .app b27 b3
open SelfintRecursiveTypes
theorem tv : validSlots tab = true := by decide
theorem casesN {P : Nat → Prop} (w0 : P 0) (w1 : P 1) (w2 : P 2) (w3 : P 3) (w4 : P 4) (j : Nat) (hj : j < 5) : P j := by
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 from by omega) with rfl | rfl | rfl | rfl | rfl <;> assumption

end Lib101
end Blc.H44
