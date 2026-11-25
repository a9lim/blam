import Blc.SelfintResidual43.Lib13Data

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38 SelfintRecursiveTypes
namespace Lib13
theorem v0 (ρ : Env) (h2 : ρ 2 = [2]) : Val tab ρ b0 [2] := by
  exact varVal h2 (by decide)
theorem v1 (ρ : Env) (h1 : ρ 1 = [0,1,2,3,4]) : Val tab ρ b1 [0,1,2,3,4] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) : Val tab ρ b2 [1,2,3,4] := by
  apply lamVal (bs := [[0,1,2,3,4],[0,1,2,3,4],[0,1,2,3,4],[0,1,2,3,4]]) tv _ (by decide)
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
theorem v5 (ρ : Env) (h1 : ρ 1 = [1,2,4]) : Val tab ρ b1 [1,2,4] := by
  exact varVal h1 (by decide)
theorem v6 (ρ : Env) (h0 : ρ 0 = [1,2,4]) : Val tab ρ b2 [1,3,4] := by
  apply lamVal (bs := [[1,2,4],[1,2,4],[1,2,4],[1,2,4]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) h0
  · exact v5 (cons (D tab 1) ρ) h0
  · exact v5 (cons (D tab 2) ρ) h0
  · exact v5 (cons (D tab 3) ρ) h0
theorem v7 (ρ : Env) (h1 : ρ 1 = [1]) : Val tab ρ b1 [1] := by
  exact varVal h1 (by decide)
theorem v8 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b2 [1,3] := by
  apply lamVal (bs := [[1],[1],[1],[1]]) tv _ (by decide)
  apply casesN
  · exact v7 (cons (D tab 0) ρ) h0
  · exact v7 (cons (D tab 1) ρ) h0
  · exact v7 (cons (D tab 2) ρ) h0
  · exact v7 (cons (D tab 3) ρ) h0
theorem v9 (ρ : Env)  : Val tab ρ b3 [1,2,3] := by
  apply lamVal (bs := [[1,2,3,4],[1,2,3,4],[1,3,4],[1,3]]) tv _ (by decide)
  apply casesN
  · exact v2 (cons (D tab 0) ρ) rfl
  · exact v4 (cons (D tab 1) ρ) rfl
  · exact v6 (cons (D tab 2) ρ) rfl
  · exact v8 (cons (D tab 3) ρ) rfl
theorem v10 (ρ : Env) (h2 : ρ 2 = [2]) : Val tab ρ b4 [1,2,3] := by
  exact appVal tv (v0 ρ h2) (v9 ρ) (by decide)
theorem v11 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) : Val tab ρ b5 [0,1,2,3,4] := by
  exact varVal h0 (by decide)
theorem v12 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) : Val tab ρ b6 [0,1,2,3,4] := by
  exact appVal tv (v11 ρ h0) (v9 ρ) (by decide)
theorem v13 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b5 [1,2,3] := by
  exact varVal h0 (by decide)
theorem v14 (ρ : Env) (h0 : ρ 0 = [1,2,4]) : Val tab ρ b5 [1,2,4] := by
  exact varVal h0 (by decide)
theorem v15 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b5 [1] := by
  exact varVal h0 (by decide)
theorem v16 (ρ : Env)  : Val tab ρ b7 [1,2,3] := by
  apply lamVal (bs := [[0,1,2,3,4],[1,2,3],[1,2,4],[1]]) tv _ (by decide)
  apply casesN
  · exact v11 (cons (D tab 0) ρ) rfl
  · exact v13 (cons (D tab 1) ρ) rfl
  · exact v14 (cons (D tab 2) ρ) rfl
  · exact v15 (cons (D tab 3) ρ) rfl
theorem v17 (ρ : Env)  : Val tab ρ b8 [1,2,3,4] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]) tv _ (by decide)
  apply casesN
  · exact v16 (cons (D tab 0) ρ)
  · exact v16 (cons (D tab 1) ρ)
  · exact v16 (cons (D tab 2) ρ)
  · exact v16 (cons (D tab 3) ρ)
theorem v18 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) : Val tab ρ b9 [0,1,2,3,4] := by
  exact appVal tv (v11 ρ h0) (v17 ρ) (by decide)
theorem v19 (ρ : Env) (h8 : ρ 8 = [0,1,2,3,4]) : Val tab ρ b10 [0,1,2,3,4] := by
  exact varVal h8 (by decide)
theorem v20 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) (h8 : ρ 8 = [0,1,2,3,4]) : Val tab ρ b11 [0,1,2,3,4] := by
  exact appVal tv (v12 ρ h0) (v19 ρ h8) (by decide)
theorem v21 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b6 [1,2,3] := by
  exact appVal tv (v13 ρ h0) (v9 ρ) (by decide)
theorem v22 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h8 : ρ 8 = [0,1,2,3,4]) : Val tab ρ b11 [1,2,3] := by
  exact appVal tv (v21 ρ h0) (v19 ρ h8) (by decide)
theorem v23 (ρ : Env) (h0 : ρ 0 = [1,2,4]) : Val tab ρ b6 [1,2,3] := by
  exact appVal tv (v14 ρ h0) (v9 ρ) (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h8 : ρ 8 = [0,1,2,3,4]) : Val tab ρ b11 [1,2,3] := by
  exact appVal tv (v23 ρ h0) (v19 ρ h8) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b6 [] := by
  exact appVal tv (v15 ρ h0) (v9 ρ) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [1]) (h8 : ρ 8 = [0,1,2,3,4]) : Val tab ρ b11 [] := by
  exact appVal tv (v25 ρ h0) (v19 ρ h8) (by decide)
theorem v27 (ρ : Env) (h7 : ρ 7 = [0,1,2,3,4]) : Val tab ρ b12 [1,2,3] := by
  apply lamVal (bs := [[0,1,2,3,4],[1,2,3],[1,2,3],[]]) tv _ (by decide)
  apply casesN
  · exact v20 (cons (D tab 0) ρ) rfl h7
  · exact v22 (cons (D tab 1) ρ) rfl h7
  · exact v24 (cons (D tab 2) ρ) rfl h7
  · exact v26 (cons (D tab 3) ρ) rfl h7
theorem v28 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) (h7 : ρ 7 = [0,1,2,3,4]) : Val tab ρ b13 [0,1,2,3,4] := by
  exact appVal tv (v18 ρ h0) (v27 ρ h7) (by decide)
theorem v29 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b9 [1,2,3] := by
  exact appVal tv (v13 ρ h0) (v17 ρ) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h7 : ρ 7 = [0,1,2,3,4]) : Val tab ρ b13 [1,2,3] := by
  exact appVal tv (v29 ρ h0) (v27 ρ h7) (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [1,2,4]) : Val tab ρ b9 [1,2,3] := by
  exact appVal tv (v14 ρ h0) (v17 ρ) (by decide)
theorem v32 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h7 : ρ 7 = [0,1,2,3,4]) : Val tab ρ b13 [1,2,3] := by
  exact appVal tv (v31 ρ h0) (v27 ρ h7) (by decide)
theorem v33 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b9 [] := by
  exact appVal tv (v15 ρ h0) (v17 ρ) (by decide)
theorem v34 (ρ : Env) (h0 : ρ 0 = [1]) (h7 : ρ 7 = [0,1,2,3,4]) : Val tab ρ b13 [] := by
  exact appVal tv (v33 ρ h0) (v27 ρ h7) (by decide)
theorem v35 (ρ : Env) (h6 : ρ 6 = [0,1,2,3,4]) : Val tab ρ b14 [1,2,3] := by
  apply lamVal (bs := [[0,1,2,3,4],[1,2,3],[1,2,3],[]]) tv _ (by decide)
  apply casesN
  · exact v28 (cons (D tab 0) ρ) rfl h6
  · exact v30 (cons (D tab 1) ρ) rfl h6
  · exact v32 (cons (D tab 2) ρ) rfl h6
  · exact v34 (cons (D tab 3) ρ) rfl h6
theorem v36 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) (h6 : ρ 6 = [0,1,2,3,4]) : Val tab ρ b15 [0,1,2,3,4] := by
  exact appVal tv (v12 ρ h0) (v35 ρ h6) (by decide)
theorem v37 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h6 : ρ 6 = [0,1,2,3,4]) : Val tab ρ b15 [1,2,3] := by
  exact appVal tv (v21 ρ h0) (v35 ρ h6) (by decide)
theorem v38 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h6 : ρ 6 = [0,1,2,3,4]) : Val tab ρ b15 [1,2,3] := by
  exact appVal tv (v23 ρ h0) (v35 ρ h6) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [1]) (h6 : ρ 6 = [0,1,2,3,4]) : Val tab ρ b15 [] := by
  exact appVal tv (v25 ρ h0) (v35 ρ h6) (by decide)
theorem v40 (ρ : Env) (h5 : ρ 5 = [0,1,2,3,4]) : Val tab ρ b16 [1,2,3] := by
  apply lamVal (bs := [[0,1,2,3,4],[1,2,3],[1,2,3],[]]) tv _ (by decide)
  apply casesN
  · exact v36 (cons (D tab 0) ρ) rfl h5
  · exact v37 (cons (D tab 1) ρ) rfl h5
  · exact v38 (cons (D tab 2) ρ) rfl h5
  · exact v39 (cons (D tab 3) ρ) rfl h5
theorem v41 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) (h5 : ρ 5 = [0,1,2,3,4]) : Val tab ρ b17 [0,1,2,3,4] := by
  exact appVal tv (v18 ρ h0) (v40 ρ h5) (by decide)
theorem v42 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h5 : ρ 5 = [0,1,2,3,4]) : Val tab ρ b17 [1,2,3] := by
  exact appVal tv (v29 ρ h0) (v40 ρ h5) (by decide)
theorem v43 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h5 : ρ 5 = [0,1,2,3,4]) : Val tab ρ b17 [1,2,3] := by
  exact appVal tv (v31 ρ h0) (v40 ρ h5) (by decide)
theorem v44 (ρ : Env) (h0 : ρ 0 = [1]) (h5 : ρ 5 = [0,1,2,3,4]) : Val tab ρ b17 [] := by
  exact appVal tv (v33 ρ h0) (v40 ρ h5) (by decide)
theorem v45 (ρ : Env) (h4 : ρ 4 = [0,1,2,3,4]) : Val tab ρ b18 [1,2,3] := by
  apply lamVal (bs := [[0,1,2,3,4],[1,2,3],[1,2,3],[]]) tv _ (by decide)
  apply casesN
  · exact v41 (cons (D tab 0) ρ) rfl h4
  · exact v42 (cons (D tab 1) ρ) rfl h4
  · exact v43 (cons (D tab 2) ρ) rfl h4
  · exact v44 (cons (D tab 3) ρ) rfl h4
theorem v46 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) (h4 : ρ 4 = [0,1,2,3,4]) : Val tab ρ b19 [0,1,2,3,4] := by
  exact appVal tv (v18 ρ h0) (v45 ρ h4) (by decide)
theorem v47 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h4 : ρ 4 = [0,1,2,3,4]) : Val tab ρ b19 [1,2,3] := by
  exact appVal tv (v29 ρ h0) (v45 ρ h4) (by decide)
theorem v48 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h4 : ρ 4 = [0,1,2,3,4]) : Val tab ρ b19 [1,2,3] := by
  exact appVal tv (v31 ρ h0) (v45 ρ h4) (by decide)
theorem v49 (ρ : Env) (h0 : ρ 0 = [1]) (h4 : ρ 4 = [0,1,2,3,4]) : Val tab ρ b19 [] := by
  exact appVal tv (v33 ρ h0) (v45 ρ h4) (by decide)
theorem v50 (ρ : Env) (h3 : ρ 3 = [0,1,2,3,4]) : Val tab ρ b20 [1,2,3] := by
  apply lamVal (bs := [[0,1,2,3,4],[1,2,3],[1,2,3],[]]) tv _ (by decide)
  apply casesN
  · exact v46 (cons (D tab 0) ρ) rfl h3
  · exact v47 (cons (D tab 1) ρ) rfl h3
  · exact v48 (cons (D tab 2) ρ) rfl h3
  · exact v49 (cons (D tab 3) ρ) rfl h3
theorem v51 (ρ : Env) (h0 : ρ 0 = [0,1,2,3,4]) (h3 : ρ 3 = [0,1,2,3,4]) : Val tab ρ b21 [0,1,2,3,4] := by
  exact appVal tv (v12 ρ h0) (v50 ρ h3) (by decide)
theorem v52 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h3 : ρ 3 = [0,1,2,3,4]) : Val tab ρ b21 [1,2,3] := by
  exact appVal tv (v21 ρ h0) (v50 ρ h3) (by decide)
theorem v53 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h3 : ρ 3 = [0,1,2,3,4]) : Val tab ρ b21 [1,2,3] := by
  exact appVal tv (v23 ρ h0) (v50 ρ h3) (by decide)
theorem v54 (ρ : Env) (h0 : ρ 0 = [1]) (h3 : ρ 3 = [0,1,2,3,4]) : Val tab ρ b21 [] := by
  exact appVal tv (v25 ρ h0) (v50 ρ h3) (by decide)
end Lib13
end Blc.Floor43
