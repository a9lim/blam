import Blc.SelfintResidual43.Extra
import Blc.SelfintResidual43.TypeRows

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
namespace Lib8
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[0,2,4],[],[3,4],[2,3,4,5],[1]],[[],[2,3,4,5],[3,4],[1,2,5],[1,4,5]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [3,4,5] (SelfintRecursiveTypes.cons [1,2,3,4,5] SelfintRecursiveTypes.empty)
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
theorem casesN {P : Nat → Prop} (w0 : P 0) (w1 : P 1) (w2 : P 2) (w3 : P 3) (w4 : P 4) (j : Nat) (hj : j < 5) : P j := by
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 from by omega) with rfl | rfl | rfl | rfl | rfl <;> assumption
theorem v0 (ρ : Env) (h2 : ρ 2 = [4]) : Val tab ρ b0 [4] := by
  exact varVal h2 (by decide)
theorem v1 (ρ : Env) (h1 : ρ 1 = [1,2,3,4,5]) : Val tab ρ b1 [1,2,3,4,5] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h1 : ρ 1 = [1,2,3,4,5]) (h2 : ρ 2 = [4]) : Val tab ρ b2 [1,2,5] := by
  exact appVal tv (v0 ρ h2) (v1 ρ h1) (by decide)
theorem v3 (ρ : Env) (h0 : ρ 0 = [0,2,4]) : Val tab ρ b3 [0,1,2,3,4,5] := by
  exact varVal h0 (by decide)
theorem v4 (ρ : Env) (h1 : ρ 1 = [0,2,4]) : Val tab ρ b1 [0,1,2,3,4,5] := by
  exact varVal h1 (by decide)
theorem v5 (ρ : Env) (h0 : ρ 0 = [0,2,4]) : Val tab ρ b4 [1,2,3,4,5] := by
  apply lamVal (bs := [[0,1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5],[0,1,2,3,4,5]]) tv _ (by decide)
  apply casesN
  · exact v4 (cons (D tab 0) ρ) h0
  · exact v4 (cons (D tab 1) ρ) h0
  · exact v4 (cons (D tab 2) ρ) h0
  · exact v4 (cons (D tab 3) ρ) h0
  · exact v4 (cons (D tab 4) ρ) h0
theorem v6 (ρ : Env) (h1 : ρ 1 = []) : Val tab ρ b1 [] := by
  exact varVal h1 (by decide)
theorem v7 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b4 [1] := by
  apply lamVal (bs := [[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v6 (cons (D tab 0) ρ) h0
  · exact v6 (cons (D tab 1) ρ) h0
  · exact v6 (cons (D tab 2) ρ) h0
  · exact v6 (cons (D tab 3) ρ) h0
  · exact v6 (cons (D tab 4) ρ) h0
theorem v8 (ρ : Env) (h1 : ρ 1 = [3,4]) : Val tab ρ b1 [3,4] := by
  exact varVal h1 (by decide)
theorem v9 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b4 [1,3] := by
  apply lamVal (bs := [[3,4],[3,4],[3,4],[3,4],[3,4]]) tv _ (by decide)
  apply casesN
  · exact v8 (cons (D tab 0) ρ) h0
  · exact v8 (cons (D tab 1) ρ) h0
  · exact v8 (cons (D tab 2) ρ) h0
  · exact v8 (cons (D tab 3) ρ) h0
  · exact v8 (cons (D tab 4) ρ) h0
theorem v10 (ρ : Env) (h1 : ρ 1 = [2,3,4,5]) : Val tab ρ b1 [2,3,4,5] := by
  exact varVal h1 (by decide)
theorem v11 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b4 [1,2,3] := by
  apply lamVal (bs := [[2,3,4,5],[2,3,4,5],[2,3,4,5],[2,3,4,5],[2,3,4,5]]) tv _ (by decide)
  apply casesN
  · exact v10 (cons (D tab 0) ρ) h0
  · exact v10 (cons (D tab 1) ρ) h0
  · exact v10 (cons (D tab 2) ρ) h0
  · exact v10 (cons (D tab 3) ρ) h0
  · exact v10 (cons (D tab 4) ρ) h0
theorem v12 (ρ : Env) (h1 : ρ 1 = [1]) : Val tab ρ b1 [1] := by
  exact varVal h1 (by decide)
theorem v13 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b4 [1] := by
  apply lamVal (bs := [[1],[1],[1],[1],[1]]) tv _ (by decide)
  apply casesN
  · exact v12 (cons (D tab 0) ρ) h0
  · exact v12 (cons (D tab 1) ρ) h0
  · exact v12 (cons (D tab 2) ρ) h0
  · exact v12 (cons (D tab 3) ρ) h0
  · exact v12 (cons (D tab 4) ρ) h0
theorem v14 (ρ : Env)  : Val tab ρ b5 [1] := by
  apply lamVal (bs := [[1,2,3,4,5],[1],[1,3],[1,2,3],[1]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) rfl
  · exact v7 (cons (D tab 1) ρ) rfl
  · exact v9 (cons (D tab 2) ρ) rfl
  · exact v11 (cons (D tab 3) ρ) rfl
  · exact v13 (cons (D tab 4) ρ) rfl
theorem v15 (ρ : Env) (h0 : ρ 0 = [0,2,4]) : Val tab ρ b6 [0,1,2,3,4,5] := by
  exact appVal tv (v3 ρ h0) (v14 ρ) (by decide)
theorem v16 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b3 [] := by
  exact varVal h0 (by decide)
theorem v17 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b3 [3,4] := by
  exact varVal h0 (by decide)
theorem v18 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b3 [2,3,4,5] := by
  exact varVal h0 (by decide)
theorem v19 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b3 [1] := by
  exact varVal h0 (by decide)
theorem v20 (ρ : Env)  : Val tab ρ b7 [1,3] := by
  apply lamVal (bs := [[0,1,2,3,4,5],[],[3,4],[2,3,4,5],[1]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) rfl
  · exact v16 (cons (D tab 1) ρ) rfl
  · exact v17 (cons (D tab 2) ρ) rfl
  · exact v18 (cons (D tab 3) ρ) rfl
  · exact v19 (cons (D tab 4) ρ) rfl
theorem v21 (ρ : Env)  : Val tab ρ b8 [1] := by
  apply lamVal (bs := [[1,3],[1,3],[1,3],[1,3],[1,3]]) tv _ (by decide)
  apply casesN
  · exact v20 (cons (D tab 0) ρ)
  · exact v20 (cons (D tab 1) ρ)
  · exact v20 (cons (D tab 2) ρ)
  · exact v20 (cons (D tab 3) ρ)
  · exact v20 (cons (D tab 4) ρ)
theorem v22 (ρ : Env) (h0 : ρ 0 = [0,2,4]) : Val tab ρ b9 [0,1,2,3,4,5] := by
  exact appVal tv (v3 ρ h0) (v21 ρ) (by decide)
theorem v23 (ρ : Env) (h4 : ρ 4 = [3,4,5]) : Val tab ρ b10 [3,4,5] := by
  exact varVal h4 (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = [0,2,4]) (h4 : ρ 4 = [3,4,5]) : Val tab ρ b11 [0,1,2,3,4,5] := by
  exact appVal tv (v15 ρ h0) (v23 ρ h4) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b6 [] := by
  exact appVal tv (v16 ρ h0) (v14 ρ) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = []) (h4 : ρ 4 = [3,4,5]) : Val tab ρ b11 [] := by
  exact appVal tv (v25 ρ h0) (v23 ρ h4) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b6 [] := by
  exact appVal tv (v17 ρ h0) (v14 ρ) (by decide)
theorem v28 (ρ : Env) (h0 : ρ 0 = [3,4]) (h4 : ρ 4 = [3,4,5]) : Val tab ρ b11 [] := by
  exact appVal tv (v27 ρ h0) (v23 ρ h4) (by decide)
theorem v29 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b6 [1,2,3,4,5] := by
  exact appVal tv (v18 ρ h0) (v14 ρ) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h4 : ρ 4 = [3,4,5]) : Val tab ρ b11 [2,3,4,5] := by
  exact appVal tv (v29 ρ h0) (v23 ρ h4) (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b6 [] := by
  exact appVal tv (v19 ρ h0) (v14 ρ) (by decide)
theorem v32 (ρ : Env) (h0 : ρ 0 = [1]) (h4 : ρ 4 = [3,4,5]) : Val tab ρ b11 [] := by
  exact appVal tv (v31 ρ h0) (v23 ρ h4) (by decide)
theorem v33 (ρ : Env) (h3 : ρ 3 = [3,4,5]) : Val tab ρ b12 [1] := by
  apply lamVal (bs := [[0,1,2,3,4,5],[],[],[2,3,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v24 (cons (D tab 0) ρ) rfl h3
  · exact v26 (cons (D tab 1) ρ) rfl h3
  · exact v28 (cons (D tab 2) ρ) rfl h3
  · exact v30 (cons (D tab 3) ρ) rfl h3
  · exact v32 (cons (D tab 4) ρ) rfl h3
theorem v34 (ρ : Env) (h0 : ρ 0 = [0,2,4]) (h3 : ρ 3 = [3,4,5]) : Val tab ρ b13 [0,1,2,3,4,5] := by
  exact appVal tv (v22 ρ h0) (v33 ρ h3) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b9 [] := by
  exact appVal tv (v16 ρ h0) (v21 ρ) (by decide)
theorem v36 (ρ : Env) (h0 : ρ 0 = []) (h3 : ρ 3 = [3,4,5]) : Val tab ρ b13 [] := by
  exact appVal tv (v35 ρ h0) (v33 ρ h3) (by decide)
theorem v37 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b9 [] := by
  exact appVal tv (v17 ρ h0) (v21 ρ) (by decide)
theorem v38 (ρ : Env) (h0 : ρ 0 = [3,4]) (h3 : ρ 3 = [3,4,5]) : Val tab ρ b13 [] := by
  exact appVal tv (v37 ρ h0) (v33 ρ h3) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b9 [1,2,3,4,5] := by
  exact appVal tv (v18 ρ h0) (v21 ρ) (by decide)
theorem v40 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h3 : ρ 3 = [3,4,5]) : Val tab ρ b13 [1,2,3,4,5] := by
  exact appVal tv (v39 ρ h0) (v33 ρ h3) (by decide)
theorem v41 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b9 [] := by
  exact appVal tv (v19 ρ h0) (v21 ρ) (by decide)
theorem v42 (ρ : Env) (h0 : ρ 0 = [1]) (h3 : ρ 3 = [3,4,5]) : Val tab ρ b13 [] := by
  exact appVal tv (v41 ρ h0) (v33 ρ h3) (by decide)
theorem v43 (ρ : Env) (h2 : ρ 2 = [3,4,5]) : Val tab ρ b14 [1,4] := by
  apply lamVal (bs := [[0,1,2,3,4,5],[],[],[1,2,3,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v34 (cons (D tab 0) ρ) rfl h2
  · exact v36 (cons (D tab 1) ρ) rfl h2
  · exact v38 (cons (D tab 2) ρ) rfl h2
  · exact v40 (cons (D tab 3) ρ) rfl h2
  · exact v42 (cons (D tab 4) ρ) rfl h2
theorem v44 (ρ : Env) (h0 : ρ 0 = [0,2,4]) (h2 : ρ 2 = [3,4,5]) : Val tab ρ b15 [0,1,2,3,4,5] := by
  exact appVal tv (v15 ρ h0) (v43 ρ h2) (by decide)
theorem v45 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = [3,4,5]) : Val tab ρ b15 [] := by
  exact appVal tv (v25 ρ h0) (v43 ρ h2) (by decide)
theorem v46 (ρ : Env) (h0 : ρ 0 = [3,4]) (h2 : ρ 2 = [3,4,5]) : Val tab ρ b15 [] := by
  exact appVal tv (v27 ρ h0) (v43 ρ h2) (by decide)
theorem v47 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h2 : ρ 2 = [3,4,5]) : Val tab ρ b15 [1,2,3,4,5] := by
  exact appVal tv (v29 ρ h0) (v43 ρ h2) (by decide)
theorem v48 (ρ : Env) (h0 : ρ 0 = [1]) (h2 : ρ 2 = [3,4,5]) : Val tab ρ b15 [] := by
  exact appVal tv (v31 ρ h0) (v43 ρ h2) (by decide)
theorem v49 (ρ : Env) (h1 : ρ 1 = [3,4,5]) : Val tab ρ b16 [1,4] := by
  apply lamVal (bs := [[0,1,2,3,4,5],[],[],[1,2,3,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v44 (cons (D tab 0) ρ) rfl h1
  · exact v45 (cons (D tab 1) ρ) rfl h1
  · exact v46 (cons (D tab 2) ρ) rfl h1
  · exact v47 (cons (D tab 3) ρ) rfl h1
  · exact v48 (cons (D tab 4) ρ) rfl h1
theorem v50 (ρ : Env) (h0 : ρ 0 = [0,2,4]) (h1 : ρ 1 = [3,4,5]) : Val tab ρ b17 [0,1,2,3,4,5] := by
  exact appVal tv (v15 ρ h0) (v49 ρ h1) (by decide)
theorem v51 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [3,4,5]) : Val tab ρ b17 [] := by
  exact appVal tv (v25 ρ h0) (v49 ρ h1) (by decide)
theorem v52 (ρ : Env) (h0 : ρ 0 = [3,4]) (h1 : ρ 1 = [3,4,5]) : Val tab ρ b17 [] := by
  exact appVal tv (v27 ρ h0) (v49 ρ h1) (by decide)
theorem v53 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h1 : ρ 1 = [3,4,5]) : Val tab ρ b17 [1,2,3,4,5] := by
  exact appVal tv (v29 ρ h0) (v49 ρ h1) (by decide)
theorem v54 (ρ : Env) (h0 : ρ 0 = [1]) (h1 : ρ 1 = [3,4,5]) : Val tab ρ b17 [] := by
  exact appVal tv (v31 ρ h0) (v49 ρ h1) (by decide)
theorem v55 (ρ : Env) (h0 : ρ 0 = [3,4,5]) : Val tab ρ b18 [1,4] := by
  apply lamVal (bs := [[0,1,2,3,4,5],[],[],[1,2,3,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v50 (cons (D tab 0) ρ) rfl h0
  · exact v51 (cons (D tab 1) ρ) rfl h0
  · exact v52 (cons (D tab 2) ρ) rfl h0
  · exact v53 (cons (D tab 3) ρ) rfl h0
  · exact v54 (cons (D tab 4) ρ) rfl h0
theorem v56 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h1 : ρ 1 = [1,2,3,4,5]) (h2 : ρ 2 = [4]) : Val tab ρ b19 [1,2,3,4,5] := by
  exact appVal tv (v2 ρ h1 h2) (v55 ρ h0) (by decide)
theorem v57 (ρ : Env) (h1 : ρ 1 = [1,2,3,4,5]) : Val tab ρ b20 [1,2,3,4,5] := by
  exact appVal tv (v1 ρ h1) (v21 ρ) (by decide)
theorem v58 (ρ : Env) (h0 : ρ 0 = [3,4,5]) : Val tab ρ b3 [3,4,5] := by
  exact varVal h0 (by decide)
theorem v59 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h1 : ρ 1 = [1,2,3,4,5]) : Val tab ρ b21 [2,3,4,5] := by
  exact appVal tv (v57 ρ h1) (v58 ρ h0) (by decide)
theorem excluded {e : Term} (ty : has tab env e 4 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [4] env) src 1 = true := (v56 (ins 2 [4] env) rfl rfl rfl) 1 (by decide)
  have hh := substHas tab src e 2 env [4] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 1 hs
  have eq : substDec 2 e src = call e (.var 1) (.lam (.var 0)) (.var 0) [] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := call e (.var 1) (.lam (.var 0)) (.var 0) []) (v := dst) (ps := []) (qs := []) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 1 = false := (v59 env rfl rfl) 1 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 1 hh))
#print axioms excluded
end Lib8
end Blc.Floor43
