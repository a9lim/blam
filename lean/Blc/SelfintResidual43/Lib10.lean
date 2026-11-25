import Blc.SelfintResidual43.Extra
import Blc.SelfintResidual43.TypeRows

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
namespace Lib10
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[2],[1,3,5],[1,3,5],[4],[2,4,5]],[[0],[5],[2,4],[4],[2,3,4,5]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [0] (SelfintRecursiveTypes.cons [1,2,3,5] SelfintRecursiveTypes.empty)
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
theorem v0 (ρ : Env) (h2 : ρ 2 = [3]) : Val tab ρ b0 [3] := by
  exact varVal h2 (by decide)
theorem v1 (ρ : Env) (h1 : ρ 1 = [1,2,3,5]) : Val tab ρ b1 [1,2,3,5] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h1 : ρ 1 = [1,2,3,5]) (h2 : ρ 2 = [3]) : Val tab ρ b2 [2,4] := by
  exact appVal tv (v0 ρ h2) (v1 ρ h1) (by decide)
theorem v3 (ρ : Env) (h0 : ρ 0 = [2]) : Val tab ρ b3 [2] := by
  exact varVal h0 (by decide)
theorem v4 (ρ : Env) (h1 : ρ 1 = [2]) : Val tab ρ b1 [2] := by
  exact varVal h1 (by decide)
theorem v5 (ρ : Env) (h0 : ρ 0 = [2]) : Val tab ρ b4 [] := by
  apply lamVal (bs := [[2],[2],[2],[2],[2]]) tv _ (by decide)
  apply casesN
  · exact v4 (cons (D tab 0) ρ) h0
  · exact v4 (cons (D tab 1) ρ) h0
  · exact v4 (cons (D tab 2) ρ) h0
  · exact v4 (cons (D tab 3) ρ) h0
  · exact v4 (cons (D tab 4) ρ) h0
theorem v6 (ρ : Env) (h1 : ρ 1 = [1,3,5]) : Val tab ρ b1 [1,3,5] := by
  exact varVal h1 (by decide)
theorem v7 (ρ : Env) (h0 : ρ 0 = [1,3,5]) : Val tab ρ b4 [2] := by
  apply lamVal (bs := [[1,3,5],[1,3,5],[1,3,5],[1,3,5],[1,3,5]]) tv _ (by decide)
  apply casesN
  · exact v6 (cons (D tab 0) ρ) h0
  · exact v6 (cons (D tab 1) ρ) h0
  · exact v6 (cons (D tab 2) ρ) h0
  · exact v6 (cons (D tab 3) ρ) h0
  · exact v6 (cons (D tab 4) ρ) h0
theorem v8 (ρ : Env) (h1 : ρ 1 = [4]) : Val tab ρ b1 [4] := by
  exact varVal h1 (by decide)
theorem v9 (ρ : Env) (h0 : ρ 0 = [4]) : Val tab ρ b4 [4] := by
  apply lamVal (bs := [[4],[4],[4],[4],[4]]) tv _ (by decide)
  apply casesN
  · exact v8 (cons (D tab 0) ρ) h0
  · exact v8 (cons (D tab 1) ρ) h0
  · exact v8 (cons (D tab 2) ρ) h0
  · exact v8 (cons (D tab 3) ρ) h0
  · exact v8 (cons (D tab 4) ρ) h0
theorem v10 (ρ : Env) (h1 : ρ 1 = [2,4,5]) : Val tab ρ b1 [2,4,5] := by
  exact varVal h1 (by decide)
theorem v11 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b4 [2,3,4] := by
  apply lamVal (bs := [[2,4,5],[2,4,5],[2,4,5],[2,4,5],[2,4,5]]) tv _ (by decide)
  apply casesN
  · exact v10 (cons (D tab 0) ρ) h0
  · exact v10 (cons (D tab 1) ρ) h0
  · exact v10 (cons (D tab 2) ρ) h0
  · exact v10 (cons (D tab 3) ρ) h0
  · exact v10 (cons (D tab 4) ρ) h0
theorem v12 (ρ : Env)  : Val tab ρ b5 [4] := by
  apply lamVal (bs := [[],[2],[2],[4],[2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) rfl
  · exact v7 (cons (D tab 1) ρ) rfl
  · exact v7 (cons (D tab 2) ρ) rfl
  · exact v9 (cons (D tab 3) ρ) rfl
  · exact v11 (cons (D tab 4) ρ) rfl
theorem v13 (ρ : Env) (h0 : ρ 0 = [2]) : Val tab ρ b6 [] := by
  exact appVal tv (v3 ρ h0) (v12 ρ) (by decide)
theorem v14 (ρ : Env) (h0 : ρ 0 = [1,3,5]) : Val tab ρ b3 [1,3,5] := by
  exact varVal h0 (by decide)
theorem v15 (ρ : Env) (h0 : ρ 0 = [4]) : Val tab ρ b3 [4] := by
  exact varVal h0 (by decide)
theorem v16 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b3 [2,4,5] := by
  exact varVal h0 (by decide)
theorem v17 (ρ : Env)  : Val tab ρ b7 [2,4] := by
  apply lamVal (bs := [[2],[1,3,5],[1,3,5],[4],[2,4,5]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) rfl
  · exact v14 (cons (D tab 1) ρ) rfl
  · exact v14 (cons (D tab 2) ρ) rfl
  · exact v15 (cons (D tab 3) ρ) rfl
  · exact v16 (cons (D tab 4) ρ) rfl
theorem v18 (ρ : Env)  : Val tab ρ b8 [3,4] := by
  apply lamVal (bs := [[2,4],[2,4],[2,4],[2,4],[2,4]]) tv _ (by decide)
  apply casesN
  · exact v17 (cons (D tab 0) ρ)
  · exact v17 (cons (D tab 1) ρ)
  · exact v17 (cons (D tab 2) ρ)
  · exact v17 (cons (D tab 3) ρ)
  · exact v17 (cons (D tab 4) ρ)
theorem v19 (ρ : Env) (h0 : ρ 0 = [2]) : Val tab ρ b9 [] := by
  exact appVal tv (v3 ρ h0) (v18 ρ) (by decide)
theorem v20 (ρ : Env) (h4 : ρ 4 = [0]) : Val tab ρ b10 [0,1,2,3,4,5] := by
  exact varVal h4 (by decide)
theorem v21 (ρ : Env) (h0 : ρ 0 = [2]) (h4 : ρ 4 = [0]) : Val tab ρ b11 [] := by
  exact appVal tv (v13 ρ h0) (v20 ρ h4) (by decide)
theorem v22 (ρ : Env) (h0 : ρ 0 = [1,3,5]) : Val tab ρ b6 [] := by
  exact appVal tv (v14 ρ h0) (v12 ρ) (by decide)
theorem v23 (ρ : Env) (h0 : ρ 0 = [1,3,5]) (h4 : ρ 4 = [0]) : Val tab ρ b11 [] := by
  exact appVal tv (v22 ρ h0) (v20 ρ h4) (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = [4]) : Val tab ρ b6 [4] := by
  exact appVal tv (v15 ρ h0) (v12 ρ) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = [4]) (h4 : ρ 4 = [0]) : Val tab ρ b11 [4] := by
  exact appVal tv (v24 ρ h0) (v20 ρ h4) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b6 [4] := by
  exact appVal tv (v16 ρ h0) (v12 ρ) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h4 : ρ 4 = [0]) : Val tab ρ b11 [4] := by
  exact appVal tv (v26 ρ h0) (v20 ρ h4) (by decide)
theorem v28 (ρ : Env) (h3 : ρ 3 = [0]) : Val tab ρ b12 [4] := by
  apply lamVal (bs := [[],[],[],[4],[4]]) tv _ (by decide)
  apply casesN
  · exact v21 (cons (D tab 0) ρ) rfl h3
  · exact v23 (cons (D tab 1) ρ) rfl h3
  · exact v23 (cons (D tab 2) ρ) rfl h3
  · exact v25 (cons (D tab 3) ρ) rfl h3
  · exact v27 (cons (D tab 4) ρ) rfl h3
theorem v29 (ρ : Env) (h0 : ρ 0 = [2]) (h3 : ρ 3 = [0]) : Val tab ρ b13 [] := by
  exact appVal tv (v19 ρ h0) (v28 ρ h3) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [1,3,5]) : Val tab ρ b9 [] := by
  exact appVal tv (v14 ρ h0) (v18 ρ) (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [1,3,5]) (h3 : ρ 3 = [0]) : Val tab ρ b13 [] := by
  exact appVal tv (v30 ρ h0) (v28 ρ h3) (by decide)
theorem v32 (ρ : Env) (h0 : ρ 0 = [4]) : Val tab ρ b9 [4] := by
  exact appVal tv (v15 ρ h0) (v18 ρ) (by decide)
theorem v33 (ρ : Env) (h0 : ρ 0 = [4]) (h3 : ρ 3 = [0]) : Val tab ρ b13 [4] := by
  exact appVal tv (v32 ρ h0) (v28 ρ h3) (by decide)
theorem v34 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b9 [4] := by
  exact appVal tv (v16 ρ h0) (v18 ρ) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h3 : ρ 3 = [0]) : Val tab ρ b13 [4] := by
  exact appVal tv (v34 ρ h0) (v28 ρ h3) (by decide)
theorem v36 (ρ : Env) (h2 : ρ 2 = [0]) : Val tab ρ b14 [4] := by
  apply lamVal (bs := [[],[],[],[4],[4]]) tv _ (by decide)
  apply casesN
  · exact v29 (cons (D tab 0) ρ) rfl h2
  · exact v31 (cons (D tab 1) ρ) rfl h2
  · exact v31 (cons (D tab 2) ρ) rfl h2
  · exact v33 (cons (D tab 3) ρ) rfl h2
  · exact v35 (cons (D tab 4) ρ) rfl h2
theorem v37 (ρ : Env) (h0 : ρ 0 = [2]) (h2 : ρ 2 = [0]) : Val tab ρ b15 [] := by
  exact appVal tv (v13 ρ h0) (v36 ρ h2) (by decide)
theorem v38 (ρ : Env) (h0 : ρ 0 = [1,3,5]) (h2 : ρ 2 = [0]) : Val tab ρ b15 [] := by
  exact appVal tv (v22 ρ h0) (v36 ρ h2) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [4]) (h2 : ρ 2 = [0]) : Val tab ρ b15 [4] := by
  exact appVal tv (v24 ρ h0) (v36 ρ h2) (by decide)
theorem v40 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h2 : ρ 2 = [0]) : Val tab ρ b15 [4] := by
  exact appVal tv (v26 ρ h0) (v36 ρ h2) (by decide)
theorem v41 (ρ : Env) (h1 : ρ 1 = [0]) : Val tab ρ b16 [4] := by
  apply lamVal (bs := [[],[],[],[4],[4]]) tv _ (by decide)
  apply casesN
  · exact v37 (cons (D tab 0) ρ) rfl h1
  · exact v38 (cons (D tab 1) ρ) rfl h1
  · exact v38 (cons (D tab 2) ρ) rfl h1
  · exact v39 (cons (D tab 3) ρ) rfl h1
  · exact v40 (cons (D tab 4) ρ) rfl h1
theorem v42 (ρ : Env) (h0 : ρ 0 = [2]) (h1 : ρ 1 = [0]) : Val tab ρ b17 [] := by
  exact appVal tv (v13 ρ h0) (v41 ρ h1) (by decide)
theorem v43 (ρ : Env) (h0 : ρ 0 = [1,3,5]) (h1 : ρ 1 = [0]) : Val tab ρ b17 [] := by
  exact appVal tv (v22 ρ h0) (v41 ρ h1) (by decide)
theorem v44 (ρ : Env) (h0 : ρ 0 = [4]) (h1 : ρ 1 = [0]) : Val tab ρ b17 [4] := by
  exact appVal tv (v24 ρ h0) (v41 ρ h1) (by decide)
theorem v45 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h1 : ρ 1 = [0]) : Val tab ρ b17 [4] := by
  exact appVal tv (v26 ρ h0) (v41 ρ h1) (by decide)
theorem v46 (ρ : Env) (h0 : ρ 0 = [0]) : Val tab ρ b18 [4] := by
  apply lamVal (bs := [[],[],[],[4],[4]]) tv _ (by decide)
  apply casesN
  · exact v42 (cons (D tab 0) ρ) rfl h0
  · exact v43 (cons (D tab 1) ρ) rfl h0
  · exact v43 (cons (D tab 2) ρ) rfl h0
  · exact v44 (cons (D tab 3) ρ) rfl h0
  · exact v45 (cons (D tab 4) ρ) rfl h0
theorem v47 (ρ : Env) (h0 : ρ 0 = [0]) (h1 : ρ 1 = [1,2,3,5]) (h2 : ρ 2 = [3]) : Val tab ρ b19 [4] := by
  exact appVal tv (v2 ρ h1 h2) (v46 ρ h0) (by decide)
theorem v48 (ρ : Env) (h1 : ρ 1 = [1,2,3,5]) : Val tab ρ b20 [] := by
  exact appVal tv (v1 ρ h1) (v18 ρ) (by decide)
theorem v49 (ρ : Env) (h0 : ρ 0 = [0]) : Val tab ρ b3 [0,1,2,3,4,5] := by
  exact varVal h0 (by decide)
theorem v50 (ρ : Env) (h0 : ρ 0 = [0]) (h1 : ρ 1 = [1,2,3,5]) : Val tab ρ b21 [] := by
  exact appVal tv (v48 ρ h1) (v49 ρ h0) (by decide)
theorem excluded {e : Term} (ty : has tab env e 3 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [3] env) src 4 = true := (v47 (ins 2 [3] env) rfl rfl rfl) 4 (by decide)
  have hh := substHas tab src e 2 env [3] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 4 hs
  have eq : substDec 2 e src = call e (.var 1) (.lam (.var 0)) (.var 0) [] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := call e (.var 1) (.lam (.var 0)) (.var 0) []) (v := dst) (ps := []) (qs := []) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 4 = false := (v50 env rfl rfl) 4 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 4 hh))
#print axioms excluded
end Lib10
end Blc.Floor43
