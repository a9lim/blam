import Blc.SelfintResidual43.Extra
import Blc.SelfintResidual43.TypeRows

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
namespace Lib2
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[2,4],[2,3,4],[2,3,4],[1,2]],[[0],[2],[3,4],[2]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [2,3,4] (SelfintRecursiveTypes.cons [] SelfintRecursiveTypes.empty)
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
theorem v1 (ρ : Env) (h1 : ρ 1 = [2,4]) : Val tab ρ b1 [2,4] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h0 : ρ 0 = [2,4]) : Val tab ρ b2 [2,4] := by
  apply lamVal (bs := [[2,4],[2,4],[2,4],[2,4]]) tv _ (by decide)
  apply casesN
  · exact v1 (cons (D tab 0) ρ) h0
  · exact v1 (cons (D tab 1) ρ) h0
  · exact v1 (cons (D tab 2) ρ) h0
  · exact v1 (cons (D tab 3) ρ) h0
theorem v3 (ρ : Env) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b1 [2,3,4] := by
  exact varVal h1 (by decide)
theorem v4 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b2 [2,3,4] := by
  apply lamVal (bs := [[2,3,4],[2,3,4],[2,3,4],[2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) h0
  · exact v3 (cons (D tab 1) ρ) h0
  · exact v3 (cons (D tab 2) ρ) h0
  · exact v3 (cons (D tab 3) ρ) h0
theorem v5 (ρ : Env) (h1 : ρ 1 = [1,2]) : Val tab ρ b1 [1,2] := by
  exact varVal h1 (by decide)
theorem v6 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b2 [2,4] := by
  apply lamVal (bs := [[1,2],[1,2],[1,2],[1,2]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) h0
  · exact v5 (cons (D tab 1) ρ) h0
  · exact v5 (cons (D tab 2) ρ) h0
  · exact v5 (cons (D tab 3) ρ) h0
theorem v7 (ρ : Env)  : Val tab ρ b3 [2,3,4] := by
  apply lamVal (bs := [[2,4],[2,3,4],[2,3,4],[2,4]]) tv _ (by decide)
  apply casesN
  · exact v2 (cons (D tab 0) ρ) rfl
  · exact v4 (cons (D tab 1) ρ) rfl
  · exact v4 (cons (D tab 2) ρ) rfl
  · exact v6 (cons (D tab 3) ρ) rfl
theorem v8 (ρ : Env) (h2 : ρ 2 = [3]) : Val tab ρ b4 [3,4] := by
  exact appVal tv (v0 ρ h2) (v7 ρ) (by decide)
theorem v9 (ρ : Env) (h0 : ρ 0 = [2,4]) : Val tab ρ b5 [2,4] := by
  exact varVal h0 (by decide)
theorem v10 (ρ : Env) (h0 : ρ 0 = [2,4]) : Val tab ρ b6 [2] := by
  exact appVal tv (v9 ρ h0) (v7 ρ) (by decide)
theorem v11 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b5 [2,3,4] := by
  exact varVal h0 (by decide)
theorem v12 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b5 [1,2] := by
  exact varVal h0 (by decide)
theorem v13 (ρ : Env)  : Val tab ρ b7 [2,3,4] := by
  apply lamVal (bs := [[2,4],[2,3,4],[2,3,4],[1,2]]) tv _ (by decide)
  apply casesN
  · exact v9 (cons (D tab 0) ρ) rfl
  · exact v11 (cons (D tab 1) ρ) rfl
  · exact v11 (cons (D tab 2) ρ) rfl
  · exact v12 (cons (D tab 3) ρ) rfl
theorem v14 (ρ : Env)  : Val tab ρ b8 [2,3,4] := by
  apply lamVal (bs := [[2,3,4],[2,3,4],[2,3,4],[2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v13 (cons (D tab 0) ρ)
  · exact v13 (cons (D tab 1) ρ)
  · exact v13 (cons (D tab 2) ρ)
  · exact v13 (cons (D tab 3) ρ)
theorem v15 (ρ : Env) (h0 : ρ 0 = [2,4]) : Val tab ρ b9 [2] := by
  exact appVal tv (v9 ρ h0) (v14 ρ) (by decide)
theorem v16 (ρ : Env) (h8 : ρ 8 = [2,3,4]) : Val tab ρ b10 [2,3,4] := by
  exact varVal h8 (by decide)
theorem v17 (ρ : Env) (h0 : ρ 0 = [2,4]) (h8 : ρ 8 = [2,3,4]) : Val tab ρ b11 [2] := by
  exact appVal tv (v10 ρ h0) (v16 ρ h8) (by decide)
theorem v18 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b6 [2,3,4] := by
  exact appVal tv (v11 ρ h0) (v7 ρ) (by decide)
theorem v19 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h8 : ρ 8 = [2,3,4]) : Val tab ρ b11 [2,3,4] := by
  exact appVal tv (v18 ρ h0) (v16 ρ h8) (by decide)
theorem v20 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b6 [0,1,2,3,4] := by
  exact appVal tv (v12 ρ h0) (v7 ρ) (by decide)
theorem v21 (ρ : Env) (h0 : ρ 0 = [1,2]) (h8 : ρ 8 = [2,3,4]) : Val tab ρ b11 [0,1,2,3,4] := by
  exact appVal tv (v20 ρ h0) (v16 ρ h8) (by decide)
theorem v22 (ρ : Env) (h7 : ρ 7 = [2,3,4]) : Val tab ρ b12 [2,3,4] := by
  apply lamVal (bs := [[2],[2,3,4],[2,3,4],[0,1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v17 (cons (D tab 0) ρ) rfl h7
  · exact v19 (cons (D tab 1) ρ) rfl h7
  · exact v19 (cons (D tab 2) ρ) rfl h7
  · exact v21 (cons (D tab 3) ρ) rfl h7
theorem v23 (ρ : Env) (h0 : ρ 0 = [2,4]) (h7 : ρ 7 = [2,3,4]) : Val tab ρ b13 [2] := by
  exact appVal tv (v15 ρ h0) (v22 ρ h7) (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b9 [2,3,4] := by
  exact appVal tv (v11 ρ h0) (v14 ρ) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h7 : ρ 7 = [2,3,4]) : Val tab ρ b13 [2,3,4] := by
  exact appVal tv (v24 ρ h0) (v22 ρ h7) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b9 [0,1,2,3,4] := by
  exact appVal tv (v12 ρ h0) (v14 ρ) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [1,2]) (h7 : ρ 7 = [2,3,4]) : Val tab ρ b13 [0,1,2,3,4] := by
  exact appVal tv (v26 ρ h0) (v22 ρ h7) (by decide)
theorem v28 (ρ : Env) (h6 : ρ 6 = [2,3,4]) : Val tab ρ b14 [2,3,4] := by
  apply lamVal (bs := [[2],[2,3,4],[2,3,4],[0,1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v23 (cons (D tab 0) ρ) rfl h6
  · exact v25 (cons (D tab 1) ρ) rfl h6
  · exact v25 (cons (D tab 2) ρ) rfl h6
  · exact v27 (cons (D tab 3) ρ) rfl h6
theorem v29 (ρ : Env) (h0 : ρ 0 = [2,4]) (h6 : ρ 6 = [2,3,4]) : Val tab ρ b15 [2] := by
  exact appVal tv (v10 ρ h0) (v28 ρ h6) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h6 : ρ 6 = [2,3,4]) : Val tab ρ b15 [2,3,4] := by
  exact appVal tv (v18 ρ h0) (v28 ρ h6) (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [1,2]) (h6 : ρ 6 = [2,3,4]) : Val tab ρ b15 [0,1,2,3,4] := by
  exact appVal tv (v20 ρ h0) (v28 ρ h6) (by decide)
theorem v32 (ρ : Env) (h5 : ρ 5 = [2,3,4]) : Val tab ρ b16 [2,3,4] := by
  apply lamVal (bs := [[2],[2,3,4],[2,3,4],[0,1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v29 (cons (D tab 0) ρ) rfl h5
  · exact v30 (cons (D tab 1) ρ) rfl h5
  · exact v30 (cons (D tab 2) ρ) rfl h5
  · exact v31 (cons (D tab 3) ρ) rfl h5
theorem v33 (ρ : Env) (h0 : ρ 0 = [2,4]) (h5 : ρ 5 = [2,3,4]) : Val tab ρ b17 [2] := by
  exact appVal tv (v15 ρ h0) (v32 ρ h5) (by decide)
theorem v34 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h5 : ρ 5 = [2,3,4]) : Val tab ρ b17 [2,3,4] := by
  exact appVal tv (v24 ρ h0) (v32 ρ h5) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = [1,2]) (h5 : ρ 5 = [2,3,4]) : Val tab ρ b17 [0,1,2,3,4] := by
  exact appVal tv (v26 ρ h0) (v32 ρ h5) (by decide)
theorem v36 (ρ : Env) (h4 : ρ 4 = [2,3,4]) : Val tab ρ b18 [2,3,4] := by
  apply lamVal (bs := [[2],[2,3,4],[2,3,4],[0,1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v33 (cons (D tab 0) ρ) rfl h4
  · exact v34 (cons (D tab 1) ρ) rfl h4
  · exact v34 (cons (D tab 2) ρ) rfl h4
  · exact v35 (cons (D tab 3) ρ) rfl h4
theorem v37 (ρ : Env) (h0 : ρ 0 = [2,4]) (h4 : ρ 4 = [2,3,4]) : Val tab ρ b19 [2] := by
  exact appVal tv (v15 ρ h0) (v36 ρ h4) (by decide)
theorem v38 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h4 : ρ 4 = [2,3,4]) : Val tab ρ b19 [2,3,4] := by
  exact appVal tv (v24 ρ h0) (v36 ρ h4) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [1,2]) (h4 : ρ 4 = [2,3,4]) : Val tab ρ b19 [0,1,2,3,4] := by
  exact appVal tv (v26 ρ h0) (v36 ρ h4) (by decide)
theorem v40 (ρ : Env) (h3 : ρ 3 = [2,3,4]) : Val tab ρ b20 [2,3,4] := by
  apply lamVal (bs := [[2],[2,3,4],[2,3,4],[0,1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v37 (cons (D tab 0) ρ) rfl h3
  · exact v38 (cons (D tab 1) ρ) rfl h3
  · exact v38 (cons (D tab 2) ρ) rfl h3
  · exact v39 (cons (D tab 3) ρ) rfl h3
theorem v41 (ρ : Env) (h0 : ρ 0 = [2,4]) (h3 : ρ 3 = [2,3,4]) : Val tab ρ b21 [2] := by
  exact appVal tv (v10 ρ h0) (v40 ρ h3) (by decide)
theorem v42 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h3 : ρ 3 = [2,3,4]) : Val tab ρ b21 [2,3,4] := by
  exact appVal tv (v18 ρ h0) (v40 ρ h3) (by decide)
theorem v43 (ρ : Env) (h0 : ρ 0 = [1,2]) (h3 : ρ 3 = [2,3,4]) : Val tab ρ b21 [0,1,2,3,4] := by
  exact appVal tv (v20 ρ h0) (v40 ρ h3) (by decide)
theorem v44 (ρ : Env) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b22 [2,3,4] := by
  apply lamVal (bs := [[2],[2,3,4],[2,3,4],[0,1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v41 (cons (D tab 0) ρ) rfl h2
  · exact v42 (cons (D tab 1) ρ) rfl h2
  · exact v42 (cons (D tab 2) ρ) rfl h2
  · exact v43 (cons (D tab 3) ρ) rfl h2
theorem v45 (ρ : Env) (h0 : ρ 0 = [2,4]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b23 [2] := by
  exact appVal tv (v10 ρ h0) (v44 ρ h2) (by decide)
theorem v46 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b23 [2,3,4] := by
  exact appVal tv (v18 ρ h0) (v44 ρ h2) (by decide)
theorem v47 (ρ : Env) (h0 : ρ 0 = [1,2]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b23 [0,1,2,3,4] := by
  exact appVal tv (v20 ρ h0) (v44 ρ h2) (by decide)
theorem v48 (ρ : Env) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b24 [2,3,4] := by
  apply lamVal (bs := [[2],[2,3,4],[2,3,4],[0,1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v45 (cons (D tab 0) ρ) rfl h1
  · exact v46 (cons (D tab 1) ρ) rfl h1
  · exact v46 (cons (D tab 2) ρ) rfl h1
  · exact v47 (cons (D tab 3) ρ) rfl h1
theorem v49 (ρ : Env) (h0 : ρ 0 = [2,4]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b25 [2] := by
  exact appVal tv (v10 ρ h0) (v48 ρ h1) (by decide)
theorem v50 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b25 [2,3,4] := by
  exact appVal tv (v18 ρ h0) (v48 ρ h1) (by decide)
theorem v51 (ρ : Env) (h0 : ρ 0 = [1,2]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b25 [0,1,2,3,4] := by
  exact appVal tv (v20 ρ h0) (v48 ρ h1) (by decide)
theorem v52 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b26 [2,3,4] := by
  apply lamVal (bs := [[2],[2,3,4],[2,3,4],[0,1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v49 (cons (D tab 0) ρ) rfl h0
  · exact v50 (cons (D tab 1) ρ) rfl h0
  · exact v50 (cons (D tab 2) ρ) rfl h0
  · exact v51 (cons (D tab 3) ρ) rfl h0
theorem v53 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h2 : ρ 2 = [3]) : Val tab ρ b27 [3,4] := by
  exact appVal tv (v8 ρ h2) (v52 ρ h0) (by decide)
theorem v54 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h2 : ρ 2 = [3]) : Val tab ρ b28 [3,4] := by
  exact appVal tv (v53 ρ h0 h2) (v13 ρ) (by decide)
theorem v55 (ρ : Env) (h0 : ρ 0 = [2,4]) : Val tab ρ b29 [] := by
  exact appVal tv (v9 ρ h0) (v9 ρ h0) (by decide)
theorem v56 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b29 [2,3,4] := by
  exact appVal tv (v11 ρ h0) (v11 ρ h0) (by decide)
theorem v57 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b29 [] := by
  exact appVal tv (v12 ρ h0) (v12 ρ h0) (by decide)
theorem v58 (ρ : Env)  : Val tab ρ b30 [2,3] := by
  apply lamVal (bs := [[],[2,3,4],[2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v55 (cons (D tab 0) ρ) rfl
  · exact v56 (cons (D tab 1) ρ) rfl
  · exact v56 (cons (D tab 2) ρ) rfl
  · exact v57 (cons (D tab 3) ρ) rfl
theorem excluded {e : Term} (ty : has tab env e 3 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [3] env) src 4 = true := (v54 (ins 2 [3] env) rfl rfl) 4 (by decide)
  have hh := substHas tab src e 2 env [3] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 4 hs
  have eq : substDec 2 e src = call e (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))) (.var 0) [(.lam (.var 0))] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.lam (.lam (.var 1)))) (m := (.lam (.app (.var 0) (.var 0)))) (r := (.var 0)) (args := [(.lam (.var 0))]) (u := call e (.lam (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))) (.var 0) [(.lam (.var 0))]) (v := dst) (ps := []) (qs := [[.left,.left],[.left],[]]) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 4 = false := (v58 env) 4 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 4 hh))
#print axioms excluded
end Lib2
end Blc.Floor43
