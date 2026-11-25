import Blc.SelfintResidual43.Extra
import Blc.SelfintResidual43.TypeRows

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
namespace Lib6
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[1],[1,2],[1,2]],[[1,2],[2,3],[0]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [1,2] (SelfintRecursiveTypes.cons [1,2] SelfintRecursiveTypes.empty)
def src : Term := (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
def dst : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
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
def b10 : Term := .var 4
def b11 : Term := .app b6 b10
def b12 : Term := .lam b11
def b13 : Term := .app b9 b12
def b14 : Term := .lam b13
def b15 : Term := .app b6 b14
def b16 : Term := .lam b15
def b17 : Term := .app b6 b16
def b18 : Term := .lam b17
def b19 : Term := .app b2 b18
def b20 : Term := .app b1 b8
def b21 : Term := .app b20 b3
open SelfintRecursiveTypes
theorem tv : validSlots tab = true := by decide
theorem casesN {P : Nat → Prop} (w0 : P 0) (w1 : P 1) (w2 : P 2) (j : Nat) (hj : j < 3) : P j := by
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 from by omega) with rfl | rfl | rfl <;> assumption
theorem v0 (ρ : Env) (h2 : ρ 2 = [3]) : Val tab ρ b0 [3] := by
  exact varVal h2 (by decide)
theorem v1 (ρ : Env) (h1 : ρ 1 = [1,2]) : Val tab ρ b1 [1,2] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h1 : ρ 1 = [1,2]) (h2 : ρ 2 = [3]) : Val tab ρ b2 [0,1,2,3] := by
  exact appVal tv (v0 ρ h2) (v1 ρ h1) (by decide)
theorem v3 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b3 [1] := by
  exact varVal h0 (by decide)
theorem v4 (ρ : Env) (h1 : ρ 1 = [1]) : Val tab ρ b1 [1] := by
  exact varVal h1 (by decide)
theorem v5 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b4 [] := by
  apply lamVal (bs := [[1],[1],[1]]) tv _ (by decide)
  apply casesN
  · exact v4 (cons (D tab 0) ρ) h0
  · exact v4 (cons (D tab 1) ρ) h0
  · exact v4 (cons (D tab 2) ρ) h0
theorem v6 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b4 [1] := by
  apply lamVal (bs := [[1,2],[1,2],[1,2]]) tv _ (by decide)
  apply casesN
  · exact v1 (cons (D tab 0) ρ) h0
  · exact v1 (cons (D tab 1) ρ) h0
  · exact v1 (cons (D tab 2) ρ) h0
theorem v7 (ρ : Env)  : Val tab ρ b5 [] := by
  apply lamVal (bs := [[],[1],[1]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) rfl
  · exact v6 (cons (D tab 1) ρ) rfl
  · exact v6 (cons (D tab 2) ρ) rfl
theorem v8 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b6 [] := by
  exact appVal tv (v3 ρ h0) (v7 ρ) (by decide)
theorem v9 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b3 [1,2] := by
  exact varVal h0 (by decide)
theorem v10 (ρ : Env)  : Val tab ρ b7 [] := by
  apply lamVal (bs := [[1],[1,2],[1,2]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) rfl
  · exact v9 (cons (D tab 1) ρ) rfl
  · exact v9 (cons (D tab 2) ρ) rfl
theorem v11 (ρ : Env)  : Val tab ρ b8 [] := by
  apply lamVal (bs := [[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v10 (cons (D tab 0) ρ)
  · exact v10 (cons (D tab 1) ρ)
  · exact v10 (cons (D tab 2) ρ)
theorem v12 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b9 [] := by
  exact appVal tv (v3 ρ h0) (v11 ρ) (by decide)
theorem v13 (ρ : Env) (h4 : ρ 4 = [1,2]) : Val tab ρ b10 [1,2] := by
  exact varVal h4 (by decide)
theorem v14 (ρ : Env) (h0 : ρ 0 = [1]) (h4 : ρ 4 = [1,2]) : Val tab ρ b11 [] := by
  exact appVal tv (v8 ρ h0) (v13 ρ h4) (by decide)
theorem v15 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b6 [] := by
  exact appVal tv (v9 ρ h0) (v7 ρ) (by decide)
theorem v16 (ρ : Env) (h0 : ρ 0 = [1,2]) (h4 : ρ 4 = [1,2]) : Val tab ρ b11 [] := by
  exact appVal tv (v15 ρ h0) (v13 ρ h4) (by decide)
theorem v17 (ρ : Env) (h3 : ρ 3 = [1,2]) : Val tab ρ b12 [] := by
  apply lamVal (bs := [[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v14 (cons (D tab 0) ρ) rfl h3
  · exact v16 (cons (D tab 1) ρ) rfl h3
  · exact v16 (cons (D tab 2) ρ) rfl h3
theorem v18 (ρ : Env) (h0 : ρ 0 = [1]) (h3 : ρ 3 = [1,2]) : Val tab ρ b13 [] := by
  exact appVal tv (v12 ρ h0) (v17 ρ h3) (by decide)
theorem v19 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b9 [] := by
  exact appVal tv (v9 ρ h0) (v11 ρ) (by decide)
theorem v20 (ρ : Env) (h0 : ρ 0 = [1,2]) (h3 : ρ 3 = [1,2]) : Val tab ρ b13 [] := by
  exact appVal tv (v19 ρ h0) (v17 ρ h3) (by decide)
theorem v21 (ρ : Env) (h2 : ρ 2 = [1,2]) : Val tab ρ b14 [] := by
  apply lamVal (bs := [[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v18 (cons (D tab 0) ρ) rfl h2
  · exact v20 (cons (D tab 1) ρ) rfl h2
  · exact v20 (cons (D tab 2) ρ) rfl h2
theorem v22 (ρ : Env) (h0 : ρ 0 = [1]) (h2 : ρ 2 = [1,2]) : Val tab ρ b15 [] := by
  exact appVal tv (v8 ρ h0) (v21 ρ h2) (by decide)
theorem v23 (ρ : Env) (h0 : ρ 0 = [1,2]) (h2 : ρ 2 = [1,2]) : Val tab ρ b15 [] := by
  exact appVal tv (v15 ρ h0) (v21 ρ h2) (by decide)
theorem v24 (ρ : Env) (h1 : ρ 1 = [1,2]) : Val tab ρ b16 [] := by
  apply lamVal (bs := [[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v22 (cons (D tab 0) ρ) rfl h1
  · exact v23 (cons (D tab 1) ρ) rfl h1
  · exact v23 (cons (D tab 2) ρ) rfl h1
theorem v25 (ρ : Env) (h0 : ρ 0 = [1]) (h1 : ρ 1 = [1,2]) : Val tab ρ b17 [] := by
  exact appVal tv (v8 ρ h0) (v24 ρ h1) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [1,2]) (h1 : ρ 1 = [1,2]) : Val tab ρ b17 [] := by
  exact appVal tv (v15 ρ h0) (v24 ρ h1) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b18 [] := by
  apply lamVal (bs := [[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v25 (cons (D tab 0) ρ) rfl h0
  · exact v26 (cons (D tab 1) ρ) rfl h0
  · exact v26 (cons (D tab 2) ρ) rfl h0
theorem v28 (ρ : Env) (h0 : ρ 0 = [1,2]) (h1 : ρ 1 = [1,2]) (h2 : ρ 2 = [3]) : Val tab ρ b19 [0,1,2,3] := by
  exact appVal tv (v2 ρ h1 h2) (v27 ρ h0) (by decide)
theorem v29 (ρ : Env) (h1 : ρ 1 = [1,2]) : Val tab ρ b20 [] := by
  exact appVal tv (v1 ρ h1) (v11 ρ) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [1,2]) (h1 : ρ 1 = [1,2]) : Val tab ρ b21 [] := by
  exact appVal tv (v29 ρ h1) (v9 ρ h0) (by decide)
theorem excluded {e : Term} (ty : has tab env e 3 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [3] env) src 0 = true := (v28 (ins 2 [3] env) rfl rfl rfl) 0 (by decide)
  have hh := substHas tab src e 2 env [3] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 0 hs
  have eq : substDec 2 e src = call e (.var 1) (.lam (.var 0)) (.var 0) [] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := call e (.var 1) (.lam (.var 0)) (.var 0) []) (v := dst) (ps := []) (qs := []) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 0 = false := (v30 env rfl rfl) 0 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 0 hh))
#print axioms excluded
end Lib6
end Blc.Floor43
