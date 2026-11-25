import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Lib102Data

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace Lib102
theorem v0 (ρ : Env) (h2 : ρ 2 = [1]) : Val tab ρ b0 [1] := by
  exact varVal h2 (by decide)
theorem v1 (ρ : Env) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b1 [1,3,4] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b2 [1,3,4] := by
  apply lamVal (bs := [[1,3,4],[1,3,4],[1,3,4],[1,3,4],[1,3,4]]) tv _ (by decide)
  apply casesN
  · exact v1 (cons (D tab 0) ρ) h0
  · exact v1 (cons (D tab 1) ρ) h0
  · exact v1 (cons (D tab 2) ρ) h0
  · exact v1 (cons (D tab 3) ρ) h0
  · exact v1 (cons (D tab 4) ρ) h0
theorem v3 (ρ : Env) (h1 : ρ 1 = [2,5]) : Val tab ρ b1 [2,5] := by
  exact varVal h1 (by decide)
theorem v4 (ρ : Env) (h0 : ρ 0 = [2,5]) : Val tab ρ b2 [2] := by
  apply lamVal (bs := [[2,5],[2,5],[2,5],[2,5],[2,5]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) h0
  · exact v3 (cons (D tab 1) ρ) h0
  · exact v3 (cons (D tab 2) ρ) h0
  · exact v3 (cons (D tab 3) ρ) h0
  · exact v3 (cons (D tab 4) ρ) h0
theorem v5 (ρ : Env) (h1 : ρ 1 = [2,4,5]) : Val tab ρ b1 [2,4,5] := by
  exact varVal h1 (by decide)
theorem v6 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b2 [2,3,4,5] := by
  apply lamVal (bs := [[2,4,5],[2,4,5],[2,4,5],[2,4,5],[2,4,5]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) h0
  · exact v5 (cons (D tab 1) ρ) h0
  · exact v5 (cons (D tab 2) ρ) h0
  · exact v5 (cons (D tab 3) ρ) h0
  · exact v5 (cons (D tab 4) ρ) h0
theorem v7 (ρ : Env) (h1 : ρ 1 = [2,3,4,5]) : Val tab ρ b1 [2,3,4,5] := by
  exact varVal h1 (by decide)
theorem v8 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b2 [2,3,4,5] := by
  apply lamVal (bs := [[2,3,4,5],[2,3,4,5],[2,3,4,5],[2,3,4,5],[2,3,4,5]]) tv _ (by decide)
  apply casesN
  · exact v7 (cons (D tab 0) ρ) h0
  · exact v7 (cons (D tab 1) ρ) h0
  · exact v7 (cons (D tab 2) ρ) h0
  · exact v7 (cons (D tab 3) ρ) h0
  · exact v7 (cons (D tab 4) ρ) h0
theorem v9 (ρ : Env) (h1 : ρ 1 = [3,4]) : Val tab ρ b1 [3,4] := by
  exact varVal h1 (by decide)
theorem v10 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b2 [3,4] := by
  apply lamVal (bs := [[3,4],[3,4],[3,4],[3,4],[3,4]]) tv _ (by decide)
  apply casesN
  · exact v9 (cons (D tab 0) ρ) h0
  · exact v9 (cons (D tab 1) ρ) h0
  · exact v9 (cons (D tab 2) ρ) h0
  · exact v9 (cons (D tab 3) ρ) h0
  · exact v9 (cons (D tab 4) ρ) h0
theorem v11 (ρ : Env)  : Val tab ρ b3 [1,3,4] := by
  apply lamVal (bs := [[1,3,4],[2],[2,3,4,5],[2,3,4,5],[3,4]]) tv _ (by decide)
  apply casesN
  · exact v2 (cons (D tab 0) ρ) rfl
  · exact v4 (cons (D tab 1) ρ) rfl
  · exact v6 (cons (D tab 2) ρ) rfl
  · exact v8 (cons (D tab 3) ρ) rfl
  · exact v10 (cons (D tab 4) ρ) rfl
theorem v12 (ρ : Env) (h2 : ρ 2 = [1]) : Val tab ρ b4 [1,3,4] := by
  exact appVal tv (v0 ρ h2) (v11 ρ) (by decide)
theorem v13 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b5 [1,3,4] := by
  exact varVal h0 (by decide)
theorem v14 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b6 [1,3,4] := by
  exact appVal tv (v13 ρ h0) (v11 ρ) (by decide)
theorem v15 (ρ : Env) (h0 : ρ 0 = [2,5]) : Val tab ρ b5 [2,5] := by
  exact varVal h0 (by decide)
theorem v16 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b5 [2,4,5] := by
  exact varVal h0 (by decide)
theorem v17 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b5 [2,3,4,5] := by
  exact varVal h0 (by decide)
theorem v18 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b5 [3,4] := by
  exact varVal h0 (by decide)
theorem v19 (ρ : Env)  : Val tab ρ b7 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,5],[2,4,5],[2,3,4,5],[3,4]]) tv _ (by decide)
  apply casesN
  · exact v13 (cons (D tab 0) ρ) rfl
  · exact v15 (cons (D tab 1) ρ) rfl
  · exact v16 (cons (D tab 2) ρ) rfl
  · exact v17 (cons (D tab 3) ρ) rfl
  · exact v18 (cons (D tab 4) ρ) rfl
theorem v20 (ρ : Env)  : Val tab ρ b8 [1,3,4] := by
  apply lamVal (bs := [[1,2,3,4],[1,2,3,4],[1,2,3,4],[1,2,3,4],[1,2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v19 (cons (D tab 0) ρ)
  · exact v19 (cons (D tab 1) ρ)
  · exact v19 (cons (D tab 2) ρ)
  · exact v19 (cons (D tab 3) ρ)
  · exact v19 (cons (D tab 4) ρ)
theorem v21 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b9 [1,3,4] := by
  exact appVal tv (v13 ρ h0) (v20 ρ) (by decide)
theorem v22 (ρ : Env) (h8 : ρ 8 = [1,2,3,4]) : Val tab ρ b10 [1,2,3,4] := by
  exact varVal h8 (by decide)
theorem v23 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h8 : ρ 8 = [1,2,3,4]) : Val tab ρ b11 [1,3,4] := by
  exact appVal tv (v14 ρ h0) (v22 ρ h8) (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = [2,5]) : Val tab ρ b6 [2,4,5] := by
  exact appVal tv (v15 ρ h0) (v11 ρ) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = [2,5]) (h8 : ρ 8 = [1,2,3,4]) : Val tab ρ b11 [2,4,5] := by
  exact appVal tv (v24 ρ h0) (v22 ρ h8) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b6 [2,4,5] := by
  exact appVal tv (v16 ρ h0) (v11 ρ) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h8 : ρ 8 = [1,2,3,4]) : Val tab ρ b11 [2,4,5] := by
  exact appVal tv (v26 ρ h0) (v22 ρ h8) (by decide)
theorem v28 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b6 [2,4,5] := by
  exact appVal tv (v17 ρ h0) (v11 ρ) (by decide)
theorem v29 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h8 : ρ 8 = [1,2,3,4]) : Val tab ρ b11 [2,4,5] := by
  exact appVal tv (v28 ρ h0) (v22 ρ h8) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b6 [] := by
  exact appVal tv (v18 ρ h0) (v11 ρ) (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [3,4]) (h8 : ρ 8 = [1,2,3,4]) : Val tab ρ b11 [] := by
  exact appVal tv (v30 ρ h0) (v22 ρ h8) (by decide)
theorem v32 (ρ : Env) (h7 : ρ 7 = [1,2,3,4]) : Val tab ρ b12 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,4,5],[2,4,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v23 (cons (D tab 0) ρ) rfl h7
  · exact v25 (cons (D tab 1) ρ) rfl h7
  · exact v27 (cons (D tab 2) ρ) rfl h7
  · exact v29 (cons (D tab 3) ρ) rfl h7
  · exact v31 (cons (D tab 4) ρ) rfl h7
theorem v33 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h7 : ρ 7 = [1,2,3,4]) : Val tab ρ b13 [1,3,4] := by
  exact appVal tv (v21 ρ h0) (v32 ρ h7) (by decide)
theorem v34 (ρ : Env) (h0 : ρ 0 = [2,5]) : Val tab ρ b9 [2,4,5] := by
  exact appVal tv (v15 ρ h0) (v20 ρ) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = [2,5]) (h7 : ρ 7 = [1,2,3,4]) : Val tab ρ b13 [2,4,5] := by
  exact appVal tv (v34 ρ h0) (v32 ρ h7) (by decide)
theorem v36 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b9 [2,4,5] := by
  exact appVal tv (v16 ρ h0) (v20 ρ) (by decide)
theorem v37 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h7 : ρ 7 = [1,2,3,4]) : Val tab ρ b13 [2,4,5] := by
  exact appVal tv (v36 ρ h0) (v32 ρ h7) (by decide)
theorem v38 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b9 [2,4,5] := by
  exact appVal tv (v17 ρ h0) (v20 ρ) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h7 : ρ 7 = [1,2,3,4]) : Val tab ρ b13 [2,4,5] := by
  exact appVal tv (v38 ρ h0) (v32 ρ h7) (by decide)
theorem v40 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b9 [] := by
  exact appVal tv (v18 ρ h0) (v20 ρ) (by decide)
theorem v41 (ρ : Env) (h0 : ρ 0 = [3,4]) (h7 : ρ 7 = [1,2,3,4]) : Val tab ρ b13 [] := by
  exact appVal tv (v40 ρ h0) (v32 ρ h7) (by decide)
theorem v42 (ρ : Env) (h6 : ρ 6 = [1,2,3,4]) : Val tab ρ b14 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,4,5],[2,4,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v33 (cons (D tab 0) ρ) rfl h6
  · exact v35 (cons (D tab 1) ρ) rfl h6
  · exact v37 (cons (D tab 2) ρ) rfl h6
  · exact v39 (cons (D tab 3) ρ) rfl h6
  · exact v41 (cons (D tab 4) ρ) rfl h6
theorem v43 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h6 : ρ 6 = [1,2,3,4]) : Val tab ρ b15 [1,3,4] := by
  exact appVal tv (v14 ρ h0) (v42 ρ h6) (by decide)
theorem v44 (ρ : Env) (h0 : ρ 0 = [2,5]) (h6 : ρ 6 = [1,2,3,4]) : Val tab ρ b15 [2,4,5] := by
  exact appVal tv (v24 ρ h0) (v42 ρ h6) (by decide)
theorem v45 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h6 : ρ 6 = [1,2,3,4]) : Val tab ρ b15 [2,4,5] := by
  exact appVal tv (v26 ρ h0) (v42 ρ h6) (by decide)
theorem v46 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h6 : ρ 6 = [1,2,3,4]) : Val tab ρ b15 [2,4,5] := by
  exact appVal tv (v28 ρ h0) (v42 ρ h6) (by decide)
theorem v47 (ρ : Env) (h0 : ρ 0 = [3,4]) (h6 : ρ 6 = [1,2,3,4]) : Val tab ρ b15 [] := by
  exact appVal tv (v30 ρ h0) (v42 ρ h6) (by decide)
theorem v48 (ρ : Env) (h5 : ρ 5 = [1,2,3,4]) : Val tab ρ b16 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,4,5],[2,4,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v43 (cons (D tab 0) ρ) rfl h5
  · exact v44 (cons (D tab 1) ρ) rfl h5
  · exact v45 (cons (D tab 2) ρ) rfl h5
  · exact v46 (cons (D tab 3) ρ) rfl h5
  · exact v47 (cons (D tab 4) ρ) rfl h5
theorem v49 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h5 : ρ 5 = [1,2,3,4]) : Val tab ρ b17 [1,3,4] := by
  exact appVal tv (v21 ρ h0) (v48 ρ h5) (by decide)
theorem v50 (ρ : Env) (h0 : ρ 0 = [2,5]) (h5 : ρ 5 = [1,2,3,4]) : Val tab ρ b17 [2,4,5] := by
  exact appVal tv (v34 ρ h0) (v48 ρ h5) (by decide)
theorem v51 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h5 : ρ 5 = [1,2,3,4]) : Val tab ρ b17 [2,4,5] := by
  exact appVal tv (v36 ρ h0) (v48 ρ h5) (by decide)
theorem v52 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h5 : ρ 5 = [1,2,3,4]) : Val tab ρ b17 [2,4,5] := by
  exact appVal tv (v38 ρ h0) (v48 ρ h5) (by decide)
theorem v53 (ρ : Env) (h0 : ρ 0 = [3,4]) (h5 : ρ 5 = [1,2,3,4]) : Val tab ρ b17 [] := by
  exact appVal tv (v40 ρ h0) (v48 ρ h5) (by decide)
theorem v54 (ρ : Env) (h4 : ρ 4 = [1,2,3,4]) : Val tab ρ b18 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,4,5],[2,4,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v49 (cons (D tab 0) ρ) rfl h4
  · exact v50 (cons (D tab 1) ρ) rfl h4
  · exact v51 (cons (D tab 2) ρ) rfl h4
  · exact v52 (cons (D tab 3) ρ) rfl h4
  · exact v53 (cons (D tab 4) ρ) rfl h4
end Lib102
end Blc.H44
