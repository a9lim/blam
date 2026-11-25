import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks
import Blc.SelfintResidual44.H44T4846363331350Data

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace T4846363331350
theorem v0 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b0 [1,5] := by
  exact varVal h0 (by decide)
theorem v1 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b1 [0,1,2,3,4,5,6] := by
  exact appVal tv (v0 ρ h0) (v0 ρ h0) (by decide)
theorem v2 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b0 [2,3,4] := by
  exact varVal h0 (by decide)
theorem v3 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b1 [2,3,4] := by
  exact appVal tv (v2 ρ h0) (v2 ρ h0) (by decide)
theorem v4 (ρ : Env) (h0 : ρ 0 = [5,6]) : Val tab ρ b0 [5,6] := by
  exact varVal h0 (by decide)
theorem v5 (ρ : Env) (h0 : ρ 0 = [5,6]) : Val tab ρ b1 [0,1,2,3,4,5,6] := by
  exact appVal tv (v4 ρ h0) (v4 ρ h0) (by decide)
theorem v6 (ρ : Env)  : Val tab ρ b2 [1,2,3,4,5] := by
  apply lamVal (bs := [[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[2,3,4],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v1 (cons (D tab 0) ρ) rfl
  · exact v1 (cons (D tab 1) ρ) rfl
  · exact v3 (cons (D tab 2) ρ) rfl
  · exact v5 (cons (D tab 3) ρ) rfl
  · exact v5 (cons (D tab 4) ρ) rfl
  · exact v3 (cons (D tab 5) ρ) rfl
theorem v7 (ρ : Env) (h1 : ρ 1 = [1,5]) : Val tab ρ b3 [1,5] := by
  exact varVal h1 (by decide)
theorem v8 (ρ : Env) (h2 : ρ 2 = [1,5]) : Val tab ρ b4 [1,5] := by
  exact varVal h2 (by decide)
theorem v9 (ρ : Env)  : Val tab ρ b5 [2,3,4] := by
  apply lamVal (bs := [[1,5],[1,5],[2,3,4],[5,6],[5,6],[2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v0 (cons (D tab 0) ρ) rfl
  · exact v0 (cons (D tab 1) ρ) rfl
  · exact v2 (cons (D tab 2) ρ) rfl
  · exact v4 (cons (D tab 3) ρ) rfl
  · exact v4 (cons (D tab 4) ρ) rfl
  · exact v2 (cons (D tab 5) ρ) rfl
theorem v10 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b6 [] := by
  exact appVal tv (v0 ρ h0) (v9 ρ) (by decide)
theorem v11 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [1,5]) : Val tab ρ b7 [] := by
  exact appVal tv (v10 ρ h0) (v7 ρ h1) (by decide)
theorem v12 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [] := by
  exact appVal tv (v8 ρ h2) (v11 ρ h0 h1) (by decide)
theorem v13 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b6 [2,3,4] := by
  exact appVal tv (v2 ρ h0) (v9 ρ) (by decide)
theorem v14 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [1,5]) : Val tab ρ b7 [1,5] := by
  exact appVal tv (v13 ρ h0) (v7 ρ h1) (by decide)
theorem v15 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [0,1,2,3,4,5,6] := by
  exact appVal tv (v8 ρ h2) (v14 ρ h0 h1) (by decide)
theorem v16 (ρ : Env) (h0 : ρ 0 = [5,6]) : Val tab ρ b6 [2,5,6] := by
  exact appVal tv (v4 ρ h0) (v9 ρ) (by decide)
theorem v17 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [1,5]) : Val tab ρ b7 [1,5] := by
  exact appVal tv (v16 ρ h0) (v7 ρ h1) (by decide)
theorem v18 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [0,1,2,3,4,5,6] := by
  exact appVal tv (v8 ρ h2) (v17 ρ h0 h1) (by decide)
theorem v19 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [1,5]) : Val tab ρ b9 [3,4,5,6] := by
  apply lamVal (bs := [[],[],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6]]) tv _ (by decide)
  apply casesN
  · exact v12 (cons (D tab 0) ρ) rfl h0 h1
  · exact v12 (cons (D tab 1) ρ) rfl h0 h1
  · exact v15 (cons (D tab 2) ρ) rfl h0 h1
  · exact v18 (cons (D tab 3) ρ) rfl h0 h1
  · exact v18 (cons (D tab 4) ρ) rfl h0 h1
  · exact v15 (cons (D tab 5) ρ) rfl h0 h1
theorem v20 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [1,5]) : Val tab ρ b10 [0,1,2,3,4,5,6] := by
  exact appVal tv (v7 ρ h1) (v19 ρ h0 h1) (by decide)
theorem v21 (ρ : Env) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b3 [2,3,4] := by
  exact varVal h1 (by decide)
theorem v22 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b7 [] := by
  exact appVal tv (v10 ρ h0) (v21 ρ h1) (by decide)
theorem v23 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [] := by
  exact appVal tv (v8 ρ h2) (v22 ρ h0 h1) (by decide)
theorem v24 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b7 [2,3,4] := by
  exact appVal tv (v13 ρ h0) (v21 ρ h1) (by decide)
theorem v25 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [] := by
  exact appVal tv (v8 ρ h2) (v24 ρ h0 h1) (by decide)
theorem v26 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b7 [2,5,6] := by
  exact appVal tv (v16 ρ h0) (v21 ρ h1) (by decide)
theorem v27 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [0,1,2,3,4,5,6] := by
  exact appVal tv (v8 ρ h2) (v26 ρ h0 h1) (by decide)
theorem v28 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [1,5]) : Val tab ρ b9 [4,5] := by
  apply lamVal (bs := [[],[],[],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[]]) tv _ (by decide)
  apply casesN
  · exact v23 (cons (D tab 0) ρ) rfl h0 h1
  · exact v23 (cons (D tab 1) ρ) rfl h0 h1
  · exact v25 (cons (D tab 2) ρ) rfl h0 h1
  · exact v27 (cons (D tab 3) ρ) rfl h0 h1
  · exact v27 (cons (D tab 4) ρ) rfl h0 h1
  · exact v25 (cons (D tab 5) ρ) rfl h0 h1
theorem v29 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [1,5]) : Val tab ρ b10 [] := by
  exact appVal tv (v7 ρ h1) (v28 ρ h0 h1) (by decide)
theorem v30 (ρ : Env) (h1 : ρ 1 = [5,6]) : Val tab ρ b3 [5,6] := by
  exact varVal h1 (by decide)
theorem v31 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [5,6]) : Val tab ρ b7 [] := by
  exact appVal tv (v10 ρ h0) (v30 ρ h1) (by decide)
theorem v32 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [] := by
  exact appVal tv (v8 ρ h2) (v31 ρ h0 h1) (by decide)
theorem v33 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [5,6]) : Val tab ρ b7 [5,6] := by
  exact appVal tv (v13 ρ h0) (v30 ρ h1) (by decide)
theorem v34 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [0,1,2,3,4,5,6] := by
  exact appVal tv (v8 ρ h2) (v33 ρ h0 h1) (by decide)
theorem v35 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [5,6]) : Val tab ρ b7 [0,1,2,3,4,5,6] := by
  exact appVal tv (v16 ρ h0) (v30 ρ h1) (by decide)
theorem v36 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [1,5]) : Val tab ρ b8 [0,1,2,3,4,5,6] := by
  exact appVal tv (v8 ρ h2) (v35 ρ h0 h1) (by decide)
theorem v37 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [1,5]) : Val tab ρ b9 [3,4,5,6] := by
  apply lamVal (bs := [[],[],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6]]) tv _ (by decide)
  apply casesN
  · exact v32 (cons (D tab 0) ρ) rfl h0 h1
  · exact v32 (cons (D tab 1) ρ) rfl h0 h1
  · exact v34 (cons (D tab 2) ρ) rfl h0 h1
  · exact v36 (cons (D tab 3) ρ) rfl h0 h1
  · exact v36 (cons (D tab 4) ρ) rfl h0 h1
  · exact v34 (cons (D tab 5) ρ) rfl h0 h1
theorem v38 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [1,5]) : Val tab ρ b10 [0,1,2,3,4,5,6] := by
  exact appVal tv (v7 ρ h1) (v37 ρ h0 h1) (by decide)
theorem v39 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b11 [1,2,4,5] := by
  apply lamVal (bs := [[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[]]) tv _ (by decide)
  apply casesN
  · exact v20 (cons (D tab 0) ρ) rfl h0
  · exact v20 (cons (D tab 1) ρ) rfl h0
  · exact v29 (cons (D tab 2) ρ) rfl h0
  · exact v38 (cons (D tab 3) ρ) rfl h0
  · exact v38 (cons (D tab 4) ρ) rfl h0
  · exact v29 (cons (D tab 5) ρ) rfl h0
theorem v40 (ρ : Env) (h0 : ρ 0 = [1,5]) : Val tab ρ b12 [0,1,2,3,4,5,6] := by
  exact appVal tv (v0 ρ h0) (v39 ρ h0) (by decide)
theorem v41 (ρ : Env) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b4 [2,3,4] := by
  exact varVal h2 (by decide)
theorem v42 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [] := by
  exact appVal tv (v41 ρ h2) (v11 ρ h0 h1) (by decide)
theorem v43 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [1,5] := by
  exact appVal tv (v41 ρ h2) (v14 ρ h0 h1) (by decide)
theorem v44 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [1,5] := by
  exact appVal tv (v41 ρ h2) (v17 ρ h0 h1) (by decide)
theorem v45 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b9 [] := by
  apply lamVal (bs := [[],[],[1,5],[1,5],[1,5],[1,5]]) tv _ (by decide)
  apply casesN
  · exact v42 (cons (D tab 0) ρ) rfl h0 h1
  · exact v42 (cons (D tab 1) ρ) rfl h0 h1
  · exact v43 (cons (D tab 2) ρ) rfl h0 h1
  · exact v44 (cons (D tab 3) ρ) rfl h0 h1
  · exact v44 (cons (D tab 4) ρ) rfl h0 h1
  · exact v43 (cons (D tab 5) ρ) rfl h0 h1
theorem v46 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b10 [] := by
  exact appVal tv (v21 ρ h1) (v45 ρ h0 h1) (by decide)
theorem v47 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [] := by
  exact appVal tv (v41 ρ h2) (v22 ρ h0 h1) (by decide)
theorem v48 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [2,3,4] := by
  exact appVal tv (v41 ρ h2) (v24 ρ h0 h1) (by decide)
theorem v49 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [5,6] := by
  exact appVal tv (v41 ρ h2) (v26 ρ h0 h1) (by decide)
theorem v50 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b9 [3,4] := by
  apply lamVal (bs := [[],[],[2,3,4],[5,6],[5,6],[2,3,4]]) tv _ (by decide)
  apply casesN
  · exact v47 (cons (D tab 0) ρ) rfl h0 h1
  · exact v47 (cons (D tab 1) ρ) rfl h0 h1
  · exact v48 (cons (D tab 2) ρ) rfl h0 h1
  · exact v49 (cons (D tab 3) ρ) rfl h0 h1
  · exact v49 (cons (D tab 4) ρ) rfl h0 h1
  · exact v48 (cons (D tab 5) ρ) rfl h0 h1
theorem v51 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b10 [] := by
  exact appVal tv (v21 ρ h1) (v50 ρ h0 h1) (by decide)
theorem v52 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [] := by
  exact appVal tv (v41 ρ h2) (v31 ρ h0 h1) (by decide)
theorem v53 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [5,6] := by
  exact appVal tv (v41 ρ h2) (v33 ρ h0 h1) (by decide)
theorem v54 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [2,3,4]) : Val tab ρ b8 [1,2,3,4,5,6] := by
  exact appVal tv (v41 ρ h2) (v35 ρ h0 h1) (by decide)
end T4846363331350
end Blc.H44
