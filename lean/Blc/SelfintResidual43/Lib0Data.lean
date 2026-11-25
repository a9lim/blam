import Blc.SelfintResidual43.TypeRows

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
namespace Lib0
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[1,2,3],[1,2,3,4],[1,2,4],[]],[[1,2,3],[1,2],[2],[0,2,3]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [1,2,3] (SelfintRecursiveTypes.cons [1,2,3] SelfintRecursiveTypes.empty)
def src : Term := (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 19))))))))))))))))))))))))))))))))))))))))
def dst : Term := (.app (.app (.var 1) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.var 0))
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
def b10 : Term := .var 19
def b11 : Term := .app b6 b10
def b12 : Term := .lam b11
def b13 : Term := .app b9 b12
def b14 : Term := .lam b13
def b15 : Term := .app b9 b14
def b16 : Term := .lam b15
def b17 : Term := .app b6 b16
def b18 : Term := .lam b17
def b19 : Term := .app b9 b18
def b20 : Term := .lam b19
def b21 : Term := .app b9 b20
def b22 : Term := .lam b21
def b23 : Term := .app b9 b22
def b24 : Term := .lam b23
def b25 : Term := .app b6 b24
def b26 : Term := .lam b25
def b27 : Term := .app b9 b26
def b28 : Term := .lam b27
def b29 : Term := .app b9 b28
def b30 : Term := .lam b29
def b31 : Term := .app b6 b30
def b32 : Term := .lam b31
def b33 : Term := .app b9 b32
def b34 : Term := .lam b33
def b35 : Term := .app b6 b34
def b36 : Term := .lam b35
def b37 : Term := .app b6 b36
def b38 : Term := .lam b37
def b39 : Term := .app b6 b38
def b40 : Term := .lam b39
def b41 : Term := .app b6 b40
def b42 : Term := .lam b41
def b43 : Term := .app b6 b42
def b44 : Term := .lam b43
def b45 : Term := .app b6 b44
def b46 : Term := .lam b45
def b47 : Term := .app b6 b46
def b48 : Term := .lam b47
def b49 : Term := .app b2 b48
def b50 : Term := .app b3 b0
def b51 : Term := .app b50 b1
def b52 : Term := .lam b51
def b53 : Term := .lam b52
def b54 : Term := .lam b53
def b55 : Term := .lam b54
def b56 : Term := .app b1 b55
def b57 : Term := .app b56 b3
open SelfintRecursiveTypes
theorem tv : validSlots tab = true := by decide
theorem casesN {P : Nat → Prop} (w0 : P 0) (w1 : P 1) (w2 : P 2) (w3 : P 3) (j : Nat) (hj : j < 4) : P j := by
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 from by omega) with rfl | rfl | rfl | rfl <;> assumption

end Lib0
end Blc.Floor43
