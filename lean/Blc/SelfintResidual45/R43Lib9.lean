import Blc.SelfintResidual43.Extra
import Blc.SelfintResidual43.TypeRows

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
namespace Lib9
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[2,3,4],[1,2,3],[1,2,3],[2,3,4]],[[2],[2],[1,2,3],[1,3]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [1,2,3] (SelfintRecursiveTypes.cons [] SelfintRecursiveTypes.empty)
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
theorem v0 (ρ : Env) (h2 : ρ 2 = [3]) : Val tab ρ b0 [3] := by
  exact varVal h2 (by decide)
theorem v1 (ρ : Env) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b1 [2,3,4] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b2 [1,2] := by
  apply lamVal (bs := [[2,3,4],[2,3,4],[2,3,4],[2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v1 (cons (D tab 0) ρ) h0
  · exact v1 (cons (D tab 1) ρ) h0
  · exact v1 (cons (D tab 2) ρ) h0
  · exact v1 (cons (D tab 3) ρ) h0
theorem v3 (ρ : Env) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b1 [1,2,3] := by
  exact varVal h1 (by decide)
theorem v4 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b2 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) h0
  · exact v3 (cons (D tab 1) ρ) h0
  · exact v3 (cons (D tab 2) ρ) h0
  · exact v3 (cons (D tab 3) ρ) h0
theorem v5 (ρ : Env)  : Val tab ρ b3 [1,2,3] := by
  apply lamVal (bs := [[1,2],[1,2,3,4],[1,2,3,4],[1,2]]) tv _ (by decide)
  apply casesN
  · exact v2 (cons (D tab 0) ρ) rfl
  · exact v4 (cons (D tab 1) ρ) rfl
  · exact v4 (cons (D tab 2) ρ) rfl
  · exact v2 (cons (D tab 3) ρ) rfl
theorem v6 (ρ : Env) (h2 : ρ 2 = [3]) : Val tab ρ b4 [1,2,3] := by
  exact appVal tv (v0 ρ h2) (v5 ρ) (by decide)
theorem v7 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b5 [2,3,4] := by
  exact varVal h0 (by decide)
theorem v8 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b6 [1,2,3] := by
  exact appVal tv (v7 ρ h0) (v5 ρ) (by decide)
theorem v9 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b5 [1,2,3] := by
  exact varVal h0 (by decide)
theorem v10 (ρ : Env)  : Val tab ρ b7 [1,2,3] := by
  apply lamVal (bs := [[2,3,4],[1,2,3],[1,2,3],[2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v7 (cons (D tab 0) ρ) rfl
  · exact v9 (cons (D tab 1) ρ) rfl
  · exact v9 (cons (D tab 2) ρ) rfl
  · exact v7 (cons (D tab 3) ρ) rfl
theorem v11 (ρ : Env)  : Val tab ρ b8 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v10 (cons (D tab 0) ρ)
  · exact v10 (cons (D tab 1) ρ)
  · exact v10 (cons (D tab 2) ρ)
  · exact v10 (cons (D tab 3) ρ)
theorem v12 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b9 [1,2,3] := by
  exact appVal tv (v7 ρ h0) (v11 ρ) (by decide)
theorem v13 (ρ : Env) (h8 : ρ 8 = [1,2,3]) : Val tab ρ b10 [1,2,3] := by
  exact varVal h8 (by decide)
theorem v14 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h8 : ρ 8 = [1,2,3]) : Val tab ρ b11 [1,2,3] := by
  exact appVal tv (v8 ρ h0) (v13 ρ h8) (by decide)
theorem v15 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b6 [1,2,3] := by
  exact appVal tv (v9 ρ h0) (v5 ρ) (by decide)
theorem v16 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h8 : ρ 8 = [1,2,3]) : Val tab ρ b11 [1,2,3] := by
  exact appVal tv (v15 ρ h0) (v13 ρ h8) (by decide)
theorem v17 (ρ : Env) (h7 : ρ 7 = [1,2,3]) : Val tab ρ b12 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v14 (cons (D tab 0) ρ) rfl h7
  · exact v16 (cons (D tab 1) ρ) rfl h7
  · exact v16 (cons (D tab 2) ρ) rfl h7
  · exact v14 (cons (D tab 3) ρ) rfl h7
theorem v18 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h7 : ρ 7 = [1,2,3]) : Val tab ρ b13 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v17 ρ h7) (by decide)
theorem v19 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b9 [1,2,3] := by
  exact appVal tv (v9 ρ h0) (v11 ρ) (by decide)
theorem v20 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h7 : ρ 7 = [1,2,3]) : Val tab ρ b13 [1,2,3] := by
  exact appVal tv (v19 ρ h0) (v17 ρ h7) (by decide)
theorem v21 (ρ : Env) (h6 : ρ 6 = [1,2,3]) : Val tab ρ b14 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v18 (cons (D tab 0) ρ) rfl h6
  · exact v20 (cons (D tab 1) ρ) rfl h6
  · exact v20 (cons (D tab 2) ρ) rfl h6
  · exact v18 (cons (D tab 3) ρ) rfl h6
theorem v22 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h6 : ρ 6 = [1,2,3]) : Val tab ρ b15 [1,2,3] := by
  exact appVal tv (v8 ρ h0) (v21 ρ h6) (by decide)
theorem v23 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h6 : ρ 6 = [1,2,3]) : Val tab ρ b15 [1,2,3] := by
  exact appVal tv (v15 ρ h0) (v21 ρ h6) (by decide)
theorem v24 (ρ : Env) (h5 : ρ 5 = [1,2,3]) : Val tab ρ b16 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v22 (cons (D tab 0) ρ) rfl h5
  · exact v23 (cons (D tab 1) ρ) rfl h5
  · exact v23 (cons (D tab 2) ρ) rfl h5
  · exact v22 (cons (D tab 3) ρ) rfl h5
theorem v25 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h5 : ρ 5 = [1,2,3]) : Val tab ρ b17 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v24 ρ h5) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h5 : ρ 5 = [1,2,3]) : Val tab ρ b17 [1,2,3] := by
  exact appVal tv (v19 ρ h0) (v24 ρ h5) (by decide)
theorem v27 (ρ : Env) (h4 : ρ 4 = [1,2,3]) : Val tab ρ b18 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v25 (cons (D tab 0) ρ) rfl h4
  · exact v26 (cons (D tab 1) ρ) rfl h4
  · exact v26 (cons (D tab 2) ρ) rfl h4
  · exact v25 (cons (D tab 3) ρ) rfl h4
theorem v28 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h4 : ρ 4 = [1,2,3]) : Val tab ρ b19 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v27 ρ h4) (by decide)
theorem v29 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h4 : ρ 4 = [1,2,3]) : Val tab ρ b19 [1,2,3] := by
  exact appVal tv (v19 ρ h0) (v27 ρ h4) (by decide)
theorem v30 (ρ : Env) (h3 : ρ 3 = [1,2,3]) : Val tab ρ b20 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v28 (cons (D tab 0) ρ) rfl h3
  · exact v29 (cons (D tab 1) ρ) rfl h3
  · exact v29 (cons (D tab 2) ρ) rfl h3
  · exact v28 (cons (D tab 3) ρ) rfl h3
theorem v31 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h3 : ρ 3 = [1,2,3]) : Val tab ρ b21 [1,2,3] := by
  exact appVal tv (v8 ρ h0) (v30 ρ h3) (by decide)
theorem v32 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h3 : ρ 3 = [1,2,3]) : Val tab ρ b21 [1,2,3] := by
  exact appVal tv (v15 ρ h0) (v30 ρ h3) (by decide)
theorem v33 (ρ : Env) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b22 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v31 (cons (D tab 0) ρ) rfl h2
  · exact v32 (cons (D tab 1) ρ) rfl h2
  · exact v32 (cons (D tab 2) ρ) rfl h2
  · exact v31 (cons (D tab 3) ρ) rfl h2
theorem v34 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b23 [1,2,3] := by
  exact appVal tv (v8 ρ h0) (v33 ρ h2) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b23 [1,2,3] := by
  exact appVal tv (v15 ρ h0) (v33 ρ h2) (by decide)
theorem v36 (ρ : Env) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b24 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v34 (cons (D tab 0) ρ) rfl h1
  · exact v35 (cons (D tab 1) ρ) rfl h1
  · exact v35 (cons (D tab 2) ρ) rfl h1
  · exact v34 (cons (D tab 3) ρ) rfl h1
theorem v37 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b25 [1,2,3] := by
  exact appVal tv (v8 ρ h0) (v36 ρ h1) (by decide)
theorem v38 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b25 [1,2,3] := by
  exact appVal tv (v15 ρ h0) (v36 ρ h1) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b26 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v37 (cons (D tab 0) ρ) rfl h0
  · exact v38 (cons (D tab 1) ρ) rfl h0
  · exact v38 (cons (D tab 2) ρ) rfl h0
  · exact v37 (cons (D tab 3) ρ) rfl h0
theorem v40 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h2 : ρ 2 = [3]) : Val tab ρ b27 [1,2,3] := by
  exact appVal tv (v6 ρ h2) (v39 ρ h0) (by decide)
theorem v41 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h2 : ρ 2 = [3]) : Val tab ρ b28 [1,2,3] := by
  exact appVal tv (v40 ρ h0 h2) (v10 ρ) (by decide)
theorem v42 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b29 [1,3] := by
  exact appVal tv (v7 ρ h0) (v7 ρ h0) (by decide)
theorem v43 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b29 [1,2,3] := by
  exact appVal tv (v9 ρ h0) (v9 ρ h0) (by decide)
theorem v44 (ρ : Env)  : Val tab ρ b30 [2,3,4] := by
  apply lamVal (bs := [[1,3],[1,2,3],[1,2,3],[1,3]]) tv _ (by decide)
  apply casesN
  · exact v42 (cons (D tab 0) ρ) rfl
  · exact v43 (cons (D tab 1) ρ) rfl
  · exact v43 (cons (D tab 2) ρ) rfl
  · exact v42 (cons (D tab 3) ρ) rfl
theorem excluded {e : Term} (ty : has tab env e 3 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [3] env) src 1 = true := (v41 (ins 2 [3] env) rfl rfl) 1 (by decide)
  have hh := substHas tab src e 2 env [3] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 1 hs
  have eq : substDec 2 e src = call e (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))) (.var 0) [(.lam (.var 0))] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.lam (.lam (.var 1)))) (m := (.lam (.app (.var 0) (.var 0)))) (r := (.var 0)) (args := [(.lam (.var 0))]) (u := call e (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))) (.var 0) [(.lam (.var 0))]) (v := dst) (ps := []) (qs := [[.left,.left],[.left],[]]) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 1 = false := (v44 env) 1 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 1 hh))
#print axioms excluded
end Lib9
end Blc.Floor43
