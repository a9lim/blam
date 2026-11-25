import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Lib101Data

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace Lib101
theorem v0 (ρ : Env) (h2 : ρ 2 = [5]) : Val tab ρ b0 [5] := by
  exact varVal h2 (by decide)
theorem v1 (ρ : Env) (h1 : ρ 1 = [1,2,3,5]) : Val tab ρ b1 [1,2,3,5] := by
  exact varVal h1 (by decide)
theorem v2 (ρ : Env) (h1 : ρ 1 = [1,2,3,5]) (h2 : ρ 2 = [5]) : Val tab ρ b2 [3,4,5] := by
  exact appVal tv (v0 ρ h2) (v1 ρ h1) (by decide)
theorem v3 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b3 [] := by
  exact varVal h0 (by decide)
theorem v4 (ρ : Env) (h1 : ρ 1 = []) : Val tab ρ b1 [] := by
  exact varVal h1 (by decide)
theorem v5 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b4 [] := by
  apply lamVal (bs := [[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v4 (cons (D tab 0) ρ) h0
  · exact v4 (cons (D tab 1) ρ) h0
  · exact v4 (cons (D tab 2) ρ) h0
  · exact v4 (cons (D tab 3) ρ) h0
  · exact v4 (cons (D tab 4) ρ) h0
theorem v6 (ρ : Env) (h1 : ρ 1 = [5]) : Val tab ρ b1 [5] := by
  exact varVal h1 (by decide)
theorem v7 (ρ : Env) (h0 : ρ 0 = [5]) : Val tab ρ b4 [] := by
  apply lamVal (bs := [[5],[5],[5],[5],[5]]) tv _ (by decide)
  apply casesN
  · exact v6 (cons (D tab 0) ρ) h0
  · exact v6 (cons (D tab 1) ρ) h0
  · exact v6 (cons (D tab 2) ρ) h0
  · exact v6 (cons (D tab 3) ρ) h0
  · exact v6 (cons (D tab 4) ρ) h0
theorem v8 (ρ : Env) (h1 : ρ 1 = [3,4,5]) : Val tab ρ b1 [3,4,5] := by
  exact varVal h1 (by decide)
theorem v9 (ρ : Env) (h0 : ρ 0 = [3,4,5]) : Val tab ρ b4 [3,4,5] := by
  apply lamVal (bs := [[3,4,5],[3,4,5],[3,4,5],[3,4,5],[3,4,5]]) tv _ (by decide)
  apply casesN
  · exact v8 (cons (D tab 0) ρ) h0
  · exact v8 (cons (D tab 1) ρ) h0
  · exact v8 (cons (D tab 2) ρ) h0
  · exact v8 (cons (D tab 3) ρ) h0
  · exact v8 (cons (D tab 4) ρ) h0
theorem v10 (ρ : Env) (h1 : ρ 1 = [4]) : Val tab ρ b1 [4] := by
  exact varVal h1 (by decide)
theorem v11 (ρ : Env) (h0 : ρ 0 = [4]) : Val tab ρ b4 [4] := by
  apply lamVal (bs := [[4],[4],[4],[4],[4]]) tv _ (by decide)
  apply casesN
  · exact v10 (cons (D tab 0) ρ) h0
  · exact v10 (cons (D tab 1) ρ) h0
  · exact v10 (cons (D tab 2) ρ) h0
  · exact v10 (cons (D tab 3) ρ) h0
  · exact v10 (cons (D tab 4) ρ) h0
theorem v12 (ρ : Env) (h1 : ρ 1 = [1,2]) : Val tab ρ b1 [1,2] := by
  exact varVal h1 (by decide)
theorem v13 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b4 [] := by
  apply lamVal (bs := [[1,2],[1,2],[1,2],[1,2],[1,2]]) tv _ (by decide)
  apply casesN
  · exact v12 (cons (D tab 0) ρ) h0
  · exact v12 (cons (D tab 1) ρ) h0
  · exact v12 (cons (D tab 2) ρ) h0
  · exact v12 (cons (D tab 3) ρ) h0
  · exact v12 (cons (D tab 4) ρ) h0
theorem v14 (ρ : Env)  : Val tab ρ b5 [3,4] := by
  apply lamVal (bs := [[],[],[3,4,5],[4],[]]) tv _ (by decide)
  apply casesN
  · exact v5 (cons (D tab 0) ρ) rfl
  · exact v7 (cons (D tab 1) ρ) rfl
  · exact v9 (cons (D tab 2) ρ) rfl
  · exact v11 (cons (D tab 3) ρ) rfl
  · exact v13 (cons (D tab 4) ρ) rfl
theorem v15 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b6 [] := by
  exact appVal tv (v3 ρ h0) (v14 ρ) (by decide)
theorem v16 (ρ : Env) (h0 : ρ 0 = [5]) : Val tab ρ b3 [5] := by
  exact varVal h0 (by decide)
theorem v17 (ρ : Env) (h0 : ρ 0 = [3,4,5]) : Val tab ρ b3 [3,4,5] := by
  exact varVal h0 (by decide)
theorem v18 (ρ : Env) (h0 : ρ 0 = [4]) : Val tab ρ b3 [4] := by
  exact varVal h0 (by decide)
theorem v19 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b3 [1,2] := by
  exact varVal h0 (by decide)
theorem v20 (ρ : Env)  : Val tab ρ b7 [3,4] := by
  apply lamVal (bs := [[],[5],[3,4,5],[4],[1,2]]) tv _ (by decide)
  apply casesN
  · exact v3 (cons (D tab 0) ρ) rfl
  · exact v16 (cons (D tab 1) ρ) rfl
  · exact v17 (cons (D tab 2) ρ) rfl
  · exact v18 (cons (D tab 3) ρ) rfl
  · exact v19 (cons (D tab 4) ρ) rfl
theorem v21 (ρ : Env)  : Val tab ρ b8 [4] := by
  apply lamVal (bs := [[3,4],[3,4],[3,4],[3,4],[3,4]]) tv _ (by decide)
  apply casesN
  · exact v20 (cons (D tab 0) ρ)
  · exact v20 (cons (D tab 1) ρ)
  · exact v20 (cons (D tab 2) ρ)
  · exact v20 (cons (D tab 3) ρ)
  · exact v20 (cons (D tab 4) ρ)
theorem v22 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b9 [] := by
  exact appVal tv (v3 ρ h0) (v21 ρ) (by decide)
theorem v23 (ρ : Env) (h7 : ρ 7 = [1,3,4]) : Val tab ρ b10 [1,3,4] := by
  exact varVal h7 (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = []) (h7 : ρ 7 = [1,3,4]) : Val tab ρ b11 [] := by
  exact appVal tv (v15 ρ h0) (v23 ρ h7) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = [5]) : Val tab ρ b6 [] := by
  exact appVal tv (v16 ρ h0) (v14 ρ) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [5]) (h7 : ρ 7 = [1,3,4]) : Val tab ρ b11 [] := by
  exact appVal tv (v25 ρ h0) (v23 ρ h7) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [3,4,5]) : Val tab ρ b6 [4] := by
  exact appVal tv (v17 ρ h0) (v14 ρ) (by decide)
theorem v28 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h7 : ρ 7 = [1,3,4]) : Val tab ρ b11 [4] := by
  exact appVal tv (v27 ρ h0) (v23 ρ h7) (by decide)
theorem v29 (ρ : Env) (h0 : ρ 0 = [4]) : Val tab ρ b6 [4] := by
  exact appVal tv (v18 ρ h0) (v14 ρ) (by decide)
theorem v30 (ρ : Env) (h0 : ρ 0 = [4]) (h7 : ρ 7 = [1,3,4]) : Val tab ρ b11 [4] := by
  exact appVal tv (v29 ρ h0) (v23 ρ h7) (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b6 [1,2,3,5] := by
  exact appVal tv (v19 ρ h0) (v14 ρ) (by decide)
theorem v32 (ρ : Env) (h0 : ρ 0 = [1,2]) (h7 : ρ 7 = [1,3,4]) : Val tab ρ b11 [1,2,3,5] := by
  exact appVal tv (v31 ρ h0) (v23 ρ h7) (by decide)
theorem v33 (ρ : Env) (h6 : ρ 6 = [1,3,4]) : Val tab ρ b12 [4] := by
  apply lamVal (bs := [[],[],[4],[4],[1,2,3,5]]) tv _ (by decide)
  apply casesN
  · exact v24 (cons (D tab 0) ρ) rfl h6
  · exact v26 (cons (D tab 1) ρ) rfl h6
  · exact v28 (cons (D tab 2) ρ) rfl h6
  · exact v30 (cons (D tab 3) ρ) rfl h6
  · exact v32 (cons (D tab 4) ρ) rfl h6
theorem v34 (ρ : Env) (h0 : ρ 0 = []) (h6 : ρ 6 = [1,3,4]) : Val tab ρ b13 [] := by
  exact appVal tv (v22 ρ h0) (v33 ρ h6) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = [5]) : Val tab ρ b9 [] := by
  exact appVal tv (v16 ρ h0) (v21 ρ) (by decide)
theorem v36 (ρ : Env) (h0 : ρ 0 = [5]) (h6 : ρ 6 = [1,3,4]) : Val tab ρ b13 [] := by
  exact appVal tv (v35 ρ h0) (v33 ρ h6) (by decide)
theorem v37 (ρ : Env) (h0 : ρ 0 = [3,4,5]) : Val tab ρ b9 [4] := by
  exact appVal tv (v17 ρ h0) (v21 ρ) (by decide)
theorem v38 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h6 : ρ 6 = [1,3,4]) : Val tab ρ b13 [4] := by
  exact appVal tv (v37 ρ h0) (v33 ρ h6) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [4]) : Val tab ρ b9 [4] := by
  exact appVal tv (v18 ρ h0) (v21 ρ) (by decide)
theorem v40 (ρ : Env) (h0 : ρ 0 = [4]) (h6 : ρ 6 = [1,3,4]) : Val tab ρ b13 [4] := by
  exact appVal tv (v39 ρ h0) (v33 ρ h6) (by decide)
theorem v41 (ρ : Env) (h0 : ρ 0 = [1,2]) : Val tab ρ b9 [1,2,3,5] := by
  exact appVal tv (v19 ρ h0) (v21 ρ) (by decide)
theorem v42 (ρ : Env) (h0 : ρ 0 = [1,2]) (h6 : ρ 6 = [1,3,4]) : Val tab ρ b13 [1,2,3,5] := by
  exact appVal tv (v41 ρ h0) (v33 ρ h6) (by decide)
theorem v43 (ρ : Env) (h5 : ρ 5 = [1,3,4]) : Val tab ρ b14 [4] := by
  apply lamVal (bs := [[],[],[4],[4],[1,2,3,5]]) tv _ (by decide)
  apply casesN
  · exact v34 (cons (D tab 0) ρ) rfl h5
  · exact v36 (cons (D tab 1) ρ) rfl h5
  · exact v38 (cons (D tab 2) ρ) rfl h5
  · exact v40 (cons (D tab 3) ρ) rfl h5
  · exact v42 (cons (D tab 4) ρ) rfl h5
theorem v44 (ρ : Env) (h0 : ρ 0 = []) (h5 : ρ 5 = [1,3,4]) : Val tab ρ b15 [] := by
  exact appVal tv (v22 ρ h0) (v43 ρ h5) (by decide)
theorem v45 (ρ : Env) (h0 : ρ 0 = [5]) (h5 : ρ 5 = [1,3,4]) : Val tab ρ b15 [] := by
  exact appVal tv (v35 ρ h0) (v43 ρ h5) (by decide)
theorem v46 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h5 : ρ 5 = [1,3,4]) : Val tab ρ b15 [4] := by
  exact appVal tv (v37 ρ h0) (v43 ρ h5) (by decide)
theorem v47 (ρ : Env) (h0 : ρ 0 = [4]) (h5 : ρ 5 = [1,3,4]) : Val tab ρ b15 [4] := by
  exact appVal tv (v39 ρ h0) (v43 ρ h5) (by decide)
theorem v48 (ρ : Env) (h0 : ρ 0 = [1,2]) (h5 : ρ 5 = [1,3,4]) : Val tab ρ b15 [1,2,3,5] := by
  exact appVal tv (v41 ρ h0) (v43 ρ h5) (by decide)
theorem v49 (ρ : Env) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b16 [4] := by
  apply lamVal (bs := [[],[],[4],[4],[1,2,3,5]]) tv _ (by decide)
  apply casesN
  · exact v44 (cons (D tab 0) ρ) rfl h4
  · exact v45 (cons (D tab 1) ρ) rfl h4
  · exact v46 (cons (D tab 2) ρ) rfl h4
  · exact v47 (cons (D tab 3) ρ) rfl h4
  · exact v48 (cons (D tab 4) ρ) rfl h4
theorem v50 (ρ : Env) (h0 : ρ 0 = []) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b17 [] := by
  exact appVal tv (v15 ρ h0) (v49 ρ h4) (by decide)
theorem v51 (ρ : Env) (h0 : ρ 0 = [5]) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b17 [] := by
  exact appVal tv (v25 ρ h0) (v49 ρ h4) (by decide)
theorem v52 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b17 [4] := by
  exact appVal tv (v27 ρ h0) (v49 ρ h4) (by decide)
theorem v53 (ρ : Env) (h0 : ρ 0 = [4]) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b17 [4] := by
  exact appVal tv (v29 ρ h0) (v49 ρ h4) (by decide)
theorem v54 (ρ : Env) (h0 : ρ 0 = [1,2]) (h4 : ρ 4 = [1,3,4]) : Val tab ρ b17 [1,2,3,5] := by
  exact appVal tv (v31 ρ h0) (v49 ρ h4) (by decide)
end Lib101
end Blc.H44
