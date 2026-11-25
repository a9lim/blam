import Blc.SelfintResidual43.TypeRows
import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks
import Blc.SelfintResidual44.H44Literals

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace T4846363331350
def tab : SelfintRecursiveTypes.Table := ⟨[[1,5],[1,5],[2,3,4],[5,6],[5,6],[2,3,4]],[[0,2,4,5],[1,5],[2,3,4],[5,6],[0],[2,5,6]]⟩
def src : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))))))
def b0 : Term := .var 0
def b1 : Term := .app b0 b0
def b2 : Term := .lam b1
def b3 : Term := .var 1
def b4 : Term := .var 2
def b5 : Term := .lam b0
def b6 : Term := .app b0 b5
def b7 : Term := .app b6 b3
def b8 : Term := .app b4 b7
def b9 : Term := .lam b8
def b10 : Term := .app b3 b9
def b11 : Term := .lam b10
def b12 : Term := .app b0 b11
def b13 : Term := .lam b12
def b14 : Term := .app b2 b13
open SelfintRecursiveTypes
theorem tv : validSlots tab = true := by decide
theorem casesN {P : Nat → Prop} (w0 : P 0) (w1 : P 1) (w2 : P 2) (w3 : P 3) (w4 : P 4) (w5 : P 5) (j : Nat) (hj : j < 6) : P j := by
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 ∨ j = 5 from by omega) with rfl | rfl | rfl | rfl | rfl | rfl <;> assumption

end T4846363331350
end Blc.H44
