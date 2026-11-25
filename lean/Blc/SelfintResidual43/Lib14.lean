import Blc.SelfintResidual43.Extra
import Blc.SelfintResidual43.TypeRows

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
namespace Lib14
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[1,5],[],[1,4],[1,2,3,4,5],[1,4,5]],[[1,5],[3,5],[0,4],[2,3],[1,4,5]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [2,3,4,5] (SelfintRecursiveTypes.cons [1,2,3,4,5] SelfintRecursiveTypes.empty)
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
theorem v2 (ρ : Env) (h1 : ρ 1 = [1,2,3,4,5]) (h2 : ρ 2 = [4]) : Val tab ρ b2 [2,3] := by
  exact appVal tv (v0 ρ h2) (v1 ρ h1) (by decide)
theorem v3 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b3 [1,5] := by
  exact varVal h0 (by decide)
theorem v4 (ρ : Env) (h1 : ρ 1 = [1,5]) : Val tab ρ b1 [1,5] := by
  exact varVal h1 (by decide)
theorem v5 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b4 [1] := by
  apply lamVal (bs := [[1,5],[1,5],[1,5],[1,5],[1,5]]) tv _ (by decide)
  apply casesN
  · exact v4 (cons (D tab 0) ρ) h0
  · exact v4 (cons (D tab 1) ρ) h0
  · exact v4 (cons (D tab 2) ρ) h0
  · exact v4 (cons (D tab 3) ρ) h0
  · exact v4 (cons (D tab 4) ρ) h0
theorem v6 (ρ : Env) (h1 : ρ 1 = []) : Val tab ρ b1 [] := by
  exact varVal h1 (by decide)
theorem v7 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b4 [] := by
  apply lamVal (bs := [[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v6 (cons (D tab 0) ρ) h0
  · exact v6 (cons (D tab 1) ρ) h0
  · exact v6 (cons (D tab 2) ρ) h0
  · exact v6 (cons (D tab 3) ρ) h0
  · exact v6 (cons (D tab 4) ρ) h0
theorem v8 (ρ : Env) (h1 : ρ 1 = [1,4]) : Val tab ρ b1 [1,4] := by
  exact varVal h1 (by decide)
theorem v9 (ρ : Env) (h0 : ρ 0 = [1,4]) : Val tab ρ b4 [] := by
  apply lamVal (bs := [[1,4],[1,4],[1,4],[1,4],[1,4]]) tv _ (by decide)
  apply casesN
  · exact v8 (cons (D tab 0) ρ) h0
  · exact v8 (cons (D tab 1) ρ) h0
  · exact v8 (cons (D tab 2) ρ) h0
  · exact v8 (cons (D tab 3) ρ) h0
  · exact v8 (cons (D tab 4) ρ) h0
theorem v10 (ρ : Env) (h0 : ρ 0 = [1,2,3,4,5]) : Val tab ρ b4 [1,2,4,5] := by
  apply lamVal (bs := [[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5]]) tv _ (by decide)
  apply casesN
  · exact v1 (cons (D tab 0) ρ) h0
  · exact v1 (cons (D tab 1) ρ) h0
  · exact v1 (cons (D tab 2) ρ) h0
  · exact v1 (cons (D tab 3) ρ) h0
  · exact v1 (cons (D tab 4) ρ) h0
theorem v11 (ρ : Env) (h1 : ρ 1 = [1,4,5]) : Val tab ρ b1 [1,4,5] := by
  exact varVal h1 (by decide)
theorem v12 (ρ : Env) (h0 : ρ 0 = [1,4,5]) : Val tab ρ b4 [1,5] := by
  apply lamVal (bs := [[1,4,5],[1,4,5],[1,4,5],[1,4,5],[1,4,5]]) tv _ (by decide)
  apply casesN
  · exact v11 (cons (D tab 0) ρ) h0
  · exact v11 (cons (D tab 1) ρ) h0
  · exact v11 (cons (D tab 2) ρ) h0
  · exact v11 (cons (D tab 3) ρ) h0
  · exact v11 (cons (D tab 4) ρ) h0
theorem v13 (ρ : Env)  : Val tab ρ b5 [] := by
  apply lamVal (bs := [[1],[],[],[1,2,4,5],[1,5]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) rfl
  · exact v7 (cons (D tab 1) ρ) rfl
  · exact v9 (cons (D tab 2) ρ) rfl
  · exact v10 (cons (D tab 3) ρ) rfl
  · exact v12 (cons (D tab 4) ρ) rfl
theorem v14 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b6 [] := by
  exact appVal tv (v3 ρ h0) (v13 ρ) (by decide)
theorem v15 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b3 [] := by
  exact varVal h0 (by decide)
theorem v16 (ρ : Env) (h0 : ρ 0 = [1,4]) : Val tab ρ b3 [1,4] := by
  exact varVal h0 (by decide)
theorem v17 (ρ : Env) (h0 : ρ 0 = [1,2,3,4,5]) : Val tab ρ b3 [1,2,3,4,5] := by
  exact varVal h0 (by decide)
theorem v18 (ρ : Env) (h0 : ρ 0 = [1,4,5]) : Val tab ρ b3 [1,4,5] := by
  exact varVal h0 (by decide)
theorem v19 (ρ : Env)  : Val tab ρ b7 [1,4,5] := by
  apply lamVal (bs := [[1,5],[],[1,4],[1,2,3,4,5],[1,4,5]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) rfl
  · exact v15 (cons (D tab 1) ρ) rfl
  · exact v16 (cons (D tab 2) ρ) rfl
  · exact v17 (cons (D tab 3) ρ) rfl
  · exact v18 (cons (D tab 4) ρ) rfl
theorem v20 (ρ : Env)  : Val tab ρ b8 [1,5] := by
  apply lamVal (bs := [[1,4,5],[1,4,5],[1,4,5],[1,4,5],[1,4,5]]) tv _ (by decide)
  apply casesN
  · exact v19 (cons (D tab 0) ρ)
  · exact v19 (cons (D tab 1) ρ)
  · exact v19 (cons (D tab 2) ρ)
  · exact v19 (cons (D tab 3) ρ)
  · exact v19 (cons (D tab 4) ρ)
theorem v21 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b9 [1,5] := by
  exact appVal tv (v3 ρ h0) (v20 ρ) (by decide)
theorem v22 (ρ : Env) (h4 : ρ 4 = [2,3,4,5]) : Val tab ρ b10 [2,3,4,5] := by
  exact varVal h4 (by decide)
theorem v23 (ρ : Env) (h0 : ρ 0 = [1,5]) (h4 : ρ 4 = [2,3,4,5]) : Val tab ρ b11 [] := by
  exact appVal tv (v14 ρ h0) (v22 ρ h4) (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b6 [] := by
  exact appVal tv (v15 ρ h0) (v13 ρ) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = []) (h4 : ρ 4 = [2,3,4,5]) : Val tab ρ b11 [] := by
  exact appVal tv (v24 ρ h0) (v22 ρ h4) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [1,4]) : Val tab ρ b6 [] := by
  exact appVal tv (v16 ρ h0) (v13 ρ) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [1,4]) (h4 : ρ 4 = [2,3,4,5]) : Val tab ρ b11 [] := by
  exact appVal tv (v26 ρ h0) (v22 ρ h4) (by decide)
theorem v28 (ρ : Env) (h0 : ρ 0 = [1,2,3,4,5]) : Val tab ρ b6 [3,5] := by
  exact appVal tv (v17 ρ h0) (v13 ρ) (by decide)
theorem v29 (ρ : Env) (h0 : ρ 0 = [1,2,3,4,5]) (h4 : ρ 4 = [2,3,4,5]) : Val tab ρ b11 [] := by
  exact appVal tv (v28 ρ h0) (v22 ρ h4) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [1,4,5]) : Val tab ρ b6 [] := by
  exact appVal tv (v18 ρ h0) (v13 ρ) (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [1,4,5]) (h4 : ρ 4 = [2,3,4,5]) : Val tab ρ b11 [] := by
  exact appVal tv (v30 ρ h0) (v22 ρ h4) (by decide)
theorem v32 (ρ : Env) (h3 : ρ 3 = [2,3,4,5]) : Val tab ρ b12 [] := by
  apply lamVal (bs := [[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v23 (cons (D tab 0) ρ) rfl h3
  · exact v25 (cons (D tab 1) ρ) rfl h3
  · exact v27 (cons (D tab 2) ρ) rfl h3
  · exact v29 (cons (D tab 3) ρ) rfl h3
  · exact v31 (cons (D tab 4) ρ) rfl h3
theorem v33 (ρ : Env) (h0 : ρ 0 = [1,5]) (h3 : ρ 3 = [2,3,4,5]) : Val tab ρ b13 [] := by
  exact appVal tv (v21 ρ h0) (v32 ρ h3) (by decide)
theorem v34 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b9 [] := by
  exact appVal tv (v15 ρ h0) (v20 ρ) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = []) (h3 : ρ 3 = [2,3,4,5]) : Val tab ρ b13 [] := by
  exact appVal tv (v34 ρ h0) (v32 ρ h3) (by decide)
theorem v36 (ρ : Env) (h0 : ρ 0 = [1,4]) : Val tab ρ b9 [1,5] := by
  exact appVal tv (v16 ρ h0) (v20 ρ) (by decide)
theorem v37 (ρ : Env) (h0 : ρ 0 = [1,4]) (h3 : ρ 3 = [2,3,4,5]) : Val tab ρ b13 [] := by
  exact appVal tv (v36 ρ h0) (v32 ρ h3) (by decide)
theorem v38 (ρ : Env) (h0 : ρ 0 = [1,2,3,4,5]) : Val tab ρ b9 [1,3,5] := by
  exact appVal tv (v17 ρ h0) (v20 ρ) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [1,2,3,4,5]) (h3 : ρ 3 = [2,3,4,5]) : Val tab ρ b13 [] := by
  exact appVal tv (v38 ρ h0) (v32 ρ h3) (by decide)
theorem v40 (ρ : Env) (h0 : ρ 0 = [1,4,5]) : Val tab ρ b9 [1,5] := by
  exact appVal tv (v18 ρ h0) (v20 ρ) (by decide)
theorem v41 (ρ : Env) (h0 : ρ 0 = [1,4,5]) (h3 : ρ 3 = [2,3,4,5]) : Val tab ρ b13 [] := by
  exact appVal tv (v40 ρ h0) (v32 ρ h3) (by decide)
theorem v42 (ρ : Env) (h2 : ρ 2 = [2,3,4,5]) : Val tab ρ b14 [] := by
  apply lamVal (bs := [[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v33 (cons (D tab 0) ρ) rfl h2
  · exact v35 (cons (D tab 1) ρ) rfl h2
  · exact v37 (cons (D tab 2) ρ) rfl h2
  · exact v39 (cons (D tab 3) ρ) rfl h2
  · exact v41 (cons (D tab 4) ρ) rfl h2
theorem v43 (ρ : Env) (h0 : ρ 0 = [1,5]) (h2 : ρ 2 = [2,3,4,5]) : Val tab ρ b15 [] := by
  exact appVal tv (v14 ρ h0) (v42 ρ h2) (by decide)
theorem v44 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = [2,3,4,5]) : Val tab ρ b15 [] := by
  exact appVal tv (v24 ρ h0) (v42 ρ h2) (by decide)
theorem v45 (ρ : Env) (h0 : ρ 0 = [1,4]) (h2 : ρ 2 = [2,3,4,5]) : Val tab ρ b15 [] := by
  exact appVal tv (v26 ρ h0) (v42 ρ h2) (by decide)
theorem v46 (ρ : Env) (h0 : ρ 0 = [1,2,3,4,5]) (h2 : ρ 2 = [2,3,4,5]) : Val tab ρ b15 [] := by
  exact appVal tv (v28 ρ h0) (v42 ρ h2) (by decide)
theorem v47 (ρ : Env) (h0 : ρ 0 = [1,4,5]) (h2 : ρ 2 = [2,3,4,5]) : Val tab ρ b15 [] := by
  exact appVal tv (v30 ρ h0) (v42 ρ h2) (by decide)
theorem v48 (ρ : Env) (h1 : ρ 1 = [2,3,4,5]) : Val tab ρ b16 [] := by
  apply lamVal (bs := [[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v43 (cons (D tab 0) ρ) rfl h1
  · exact v44 (cons (D tab 1) ρ) rfl h1
  · exact v45 (cons (D tab 2) ρ) rfl h1
  · exact v46 (cons (D tab 3) ρ) rfl h1
  · exact v47 (cons (D tab 4) ρ) rfl h1
theorem v49 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [2,3,4,5]) : Val tab ρ b17 [] := by
  exact appVal tv (v14 ρ h0) (v48 ρ h1) (by decide)
theorem v50 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [2,3,4,5]) : Val tab ρ b17 [] := by
  exact appVal tv (v24 ρ h0) (v48 ρ h1) (by decide)
theorem v51 (ρ : Env) (h0 : ρ 0 = [1,4]) (h1 : ρ 1 = [2,3,4,5]) : Val tab ρ b17 [] := by
  exact appVal tv (v26 ρ h0) (v48 ρ h1) (by decide)
theorem v52 (ρ : Env) (h0 : ρ 0 = [1,2,3,4,5]) (h1 : ρ 1 = [2,3,4,5]) : Val tab ρ b17 [] := by
  exact appVal tv (v28 ρ h0) (v48 ρ h1) (by decide)
theorem v53 (ρ : Env) (h0 : ρ 0 = [1,4,5]) (h1 : ρ 1 = [2,3,4,5]) : Val tab ρ b17 [] := by
  exact appVal tv (v30 ρ h0) (v48 ρ h1) (by decide)
theorem v54 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b18 [] := by
  apply lamVal (bs := [[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v49 (cons (D tab 0) ρ) rfl h0
  · exact v50 (cons (D tab 1) ρ) rfl h0
  · exact v51 (cons (D tab 2) ρ) rfl h0
  · exact v52 (cons (D tab 3) ρ) rfl h0
  · exact v53 (cons (D tab 4) ρ) rfl h0
theorem v55 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h1 : ρ 1 = [1,2,3,4,5]) (h2 : ρ 2 = [4]) : Val tab ρ b19 [3,5] := by
  exact appVal tv (v2 ρ h1 h2) (v54 ρ h0) (by decide)
theorem v56 (ρ : Env) (h1 : ρ 1 = [1,2,3,4,5]) : Val tab ρ b20 [1,3,5] := by
  exact appVal tv (v1 ρ h1) (v20 ρ) (by decide)
theorem v57 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b3 [2,3,4,5] := by
  exact varVal h0 (by decide)
theorem v58 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h1 : ρ 1 = [1,2,3,4,5]) : Val tab ρ b21 [] := by
  exact appVal tv (v56 ρ h1) (v57 ρ h0) (by decide)
theorem excluded {e : Term} (ty : has tab env e 4 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [4] env) src 3 = true := (v55 (ins 2 [4] env) rfl rfl rfl) 3 (by decide)
  have hh := substHas tab src e 2 env [4] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 3 hs
  have eq : substDec 2 e src = call e (.var 1) (.lam (.var 0)) (.var 0) [] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := call e (.var 1) (.lam (.var 0)) (.var 0) []) (v := dst) (ps := []) (qs := []) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 3 = false := (v58 env rfl rfl) 3 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 3 hh))
#print axioms excluded
end Lib14
end Blc.Floor43
