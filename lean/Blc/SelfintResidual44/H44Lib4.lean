import Blc.SelfintResidual43.TypeRows
import Blc.SelfintResidual44.H44Base

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock
namespace Lib4
set_option maxRecDepth 12000
def tab : SelfintRecursiveTypes.Table := ⟨[[],[3,4],[3,4],[1,2,3,4]],[[4],[1,2,4],[3,4],[1,2]]⟩
def env : SelfintRecursiveTypes.Env := SelfintRecursiveTypes.cons [1,3,4] (SelfintRecursiveTypes.cons [1,2,3,4] SelfintRecursiveTypes.empty)
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
theorem casesN {P : Nat → Prop} (w0 : P 0) (w1 : P 1) (w2 : P 2) (w3 : P 3) (j : Nat) (hj : j < 4) : P j := by
  rcases (show j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 from by omega) with rfl | rfl | rfl | rfl <;> assumption
theorem v0 (ρ : Env) (h2 : ρ 2 = [4]) : Val tab ρ b0 [4] := by
  exact varVal h2 (by decide)
theorem v1 (ρ : Env) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b1 [1,2,3,4] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [4]) : Val tab ρ b2 [1,2] := by
  exact appVal tv (v0 ρ h2) (v1 ρ h1) (by decide)
theorem v3 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b3 [] := by
  exact varVal h0 (by decide)
theorem v4 (ρ : Env) (h1 : ρ 1 = []) : Val tab ρ b1 [] := by
  exact varVal h1 (by decide)
theorem v5 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b4 [] := by
  apply lamVal (bs := [[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v4 (cons (D tab 0) ρ) h0
  · exact v4 (cons (D tab 1) ρ) h0
  · exact v4 (cons (D tab 2) ρ) h0
  · exact v4 (cons (D tab 3) ρ) h0
theorem v6 (ρ : Env) (h1 : ρ 1 = [3,4]) : Val tab ρ b1 [3,4] := by
  exact varVal h1 (by decide)
theorem v7 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b4 [1,3] := by
  apply lamVal (bs := [[3,4],[3,4],[3,4],[3,4]]) tv _ (by decide)
  apply casesN
  · exact v6 (cons (D tab 0) ρ) h0
  · exact v6 (cons (D tab 1) ρ) h0
  · exact v6 (cons (D tab 2) ρ) h0
  · exact v6 (cons (D tab 3) ρ) h0
theorem v8 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) : Val tab ρ b4 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3,4],[1,2,3,4],[1,2,3,4],[1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v1 (cons (D tab 0) ρ) h0
  · exact v1 (cons (D tab 1) ρ) h0
  · exact v1 (cons (D tab 2) ρ) h0
  · exact v1 (cons (D tab 3) ρ) h0
theorem v9 (ρ : Env)  : Val tab ρ b5 [4] := by
  apply lamVal (bs := [[],[1,3],[1,3],[1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) rfl
  · exact v7 (cons (D tab 1) ρ) rfl
  · exact v7 (cons (D tab 2) ρ) rfl
  · exact v8 (cons (D tab 3) ρ) rfl
theorem v10 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b6 [] := by
  exact appVal tv (v3 ρ h0) (v9 ρ) (by decide)
theorem v11 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b3 [3,4] := by
  exact varVal h0 (by decide)
theorem v12 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) : Val tab ρ b3 [1,2,3,4] := by
  exact varVal h0 (by decide)
theorem v13 (ρ : Env)  : Val tab ρ b7 [3,4] := by
  apply lamVal (bs := [[],[3,4],[3,4],[1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) rfl
  · exact v11 (cons (D tab 1) ρ) rfl
  · exact v11 (cons (D tab 2) ρ) rfl
  · exact v12 (cons (D tab 3) ρ) rfl
theorem v14 (ρ : Env)  : Val tab ρ b8 [1,3] := by
  apply lamVal (bs := [[3,4],[3,4],[3,4],[3,4]]) tv _ (by decide)
  apply casesN
  · exact v13 (cons (D tab 0) ρ)
  · exact v13 (cons (D tab 1) ρ)
  · exact v13 (cons (D tab 2) ρ)
  · exact v13 (cons (D tab 3) ρ)
theorem v15 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b9 [] := by
  exact appVal tv (v3 ρ h0) (v14 ρ) (by decide)
theorem v16 (ρ : Env) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b10 [1,3,4] := by
  exact varVal h4 (by decide)
theorem v17 (ρ : Env) (h0 : ρ 0 = []) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b11 [] := by
  exact appVal tv (v10 ρ h0) (v16 ρ h4) (by decide)
theorem v18 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b6 [] := by
  exact appVal tv (v11 ρ h0) (v9 ρ) (by decide)
theorem v19 (ρ : Env) (h0 : ρ 0 = [3,4]) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b11 [] := by
  exact appVal tv (v18 ρ h0) (v16 ρ h4) (by decide)
theorem v20 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) : Val tab ρ b6 [4] := by
  exact appVal tv (v12 ρ h0) (v9 ρ) (by decide)
theorem v21 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b11 [] := by
  exact appVal tv (v20 ρ h0) (v16 ρ h4) (by decide)
theorem v22 (ρ : Env) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b12 [] := by
  apply lamVal (bs := [[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v17 (cons (D tab 0) ρ) rfl h3
  · exact v19 (cons (D tab 1) ρ) rfl h3
  · exact v19 (cons (D tab 2) ρ) rfl h3
  · exact v21 (cons (D tab 3) ρ) rfl h3
theorem v23 (ρ : Env) (h0 : ρ 0 = []) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b13 [] := by
  exact appVal tv (v15 ρ h0) (v22 ρ h3) (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b9 [] := by
  exact appVal tv (v11 ρ h0) (v14 ρ) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = [3,4]) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b13 [] := by
  exact appVal tv (v24 ρ h0) (v22 ρ h3) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) : Val tab ρ b9 [4] := by
  exact appVal tv (v12 ρ h0) (v14 ρ) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b13 [] := by
  exact appVal tv (v26 ρ h0) (v22 ρ h3) (by decide)
theorem v28 (ρ : Env) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b14 [] := by
  apply lamVal (bs := [[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v23 (cons (D tab 0) ρ) rfl h2
  · exact v25 (cons (D tab 1) ρ) rfl h2
  · exact v25 (cons (D tab 2) ρ) rfl h2
  · exact v27 (cons (D tab 3) ρ) rfl h2
theorem v29 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b15 [] := by
  exact appVal tv (v10 ρ h0) (v28 ρ h2) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [3,4]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b15 [] := by
  exact appVal tv (v18 ρ h0) (v28 ρ h2) (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b15 [] := by
  exact appVal tv (v20 ρ h0) (v28 ρ h2) (by decide)
theorem v32 (ρ : Env) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b16 [] := by
  apply lamVal (bs := [[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v29 (cons (D tab 0) ρ) rfl h1
  · exact v30 (cons (D tab 1) ρ) rfl h1
  · exact v30 (cons (D tab 2) ρ) rfl h1
  · exact v31 (cons (D tab 3) ρ) rfl h1
theorem v33 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b17 [] := by
  exact appVal tv (v10 ρ h0) (v32 ρ h1) (by decide)
theorem v34 (ρ : Env) (h0 : ρ 0 = [3,4]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b17 [] := by
  exact appVal tv (v18 ρ h0) (v32 ρ h1) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b17 [] := by
  exact appVal tv (v20 ρ h0) (v32 ρ h1) (by decide)
theorem v36 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b18 [] := by
  apply lamVal (bs := [[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v33 (cons (D tab 0) ρ) rfl h0
  · exact v34 (cons (D tab 1) ρ) rfl h0
  · exact v34 (cons (D tab 2) ρ) rfl h0
  · exact v35 (cons (D tab 3) ρ) rfl h0
theorem v37 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [4]) : Val tab ρ b19 [4] := by
  exact appVal tv (v2 ρ h1 h2) (v36 ρ h0) (by decide)
theorem v38 (ρ : Env) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b20 [4] := by
  exact appVal tv (v1 ρ h1) (v14 ρ) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b3 [1,3,4] := by
  exact varVal h0 (by decide)
theorem v40 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b21 [] := by
  exact appVal tv (v38 ρ h1) (v39 ρ h0) (by decide)
theorem excluded {e : Term} (ty : has tab env e 4 = true) : ¬ IsSelfInterpreter e := by
  intro he
  have hs : has tab (ins 2 [4] env) src 4 = true := (v37 (ins 2 [4] env) rfl rfl rfl) 4 (by decide)
  have hh := substHas tab src e 2 env [4] (by intro x hx; obtain rfl := List.mem_singleton.mp hx; exact ty) 4 hs
  have eq : substDec 2 e src = call e (.var 1) (.lam (.var 0)) (.var 0) [] := by rfl
  rw [eq] at hh
  obtain ⟨w, hw, hv⟩ := probeJoin (e := e) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (args := []) (u := call e (.var 1) (.lam (.var 0)) (.var 0) []) (v := dst) (ps := []) (qs := []) (by decide) (by rfl) (by decide) he
  have eq' := normalForm_betas_eq (fun _ => nft_no_beta (by decide : NFt dst)) hv
  subst w
  have neg : has tab env dst 4 = false := (v40 env rfl rfl) 4 (by decide)
  exact Bool.noConfusion (neg.symm.trans (SelfintRecursiveTypes.star hw 4 hh))
#print axioms excluded
end Lib4
end Blc.H44
