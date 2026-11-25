import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Lib102V0

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace Lib102
theorem v55 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h4 : ρ 4 = [1,2,3,4]) : Val tab ρ b19 [1,3,4] := by
  exact appVal tv (v21 ρ h0) (v54 ρ h4) (by decide)
theorem v56 (ρ : Env) (h0 : ρ 0 = [2,5]) (h4 : ρ 4 = [1,2,3,4]) : Val tab ρ b19 [2,4,5] := by
  exact appVal tv (v34 ρ h0) (v54 ρ h4) (by decide)
theorem v57 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h4 : ρ 4 = [1,2,3,4]) : Val tab ρ b19 [2,4,5] := by
  exact appVal tv (v36 ρ h0) (v54 ρ h4) (by decide)
theorem v58 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h4 : ρ 4 = [1,2,3,4]) : Val tab ρ b19 [2,4,5] := by
  exact appVal tv (v38 ρ h0) (v54 ρ h4) (by decide)
theorem v59 (ρ : Env) (h0 : ρ 0 = [3,4]) (h4 : ρ 4 = [1,2,3,4]) : Val tab ρ b19 [] := by
  exact appVal tv (v40 ρ h0) (v54 ρ h4) (by decide)
theorem v60 (ρ : Env) (h3 : ρ 3 = [1,2,3,4]) : Val tab ρ b20 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,4,5],[2,4,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v55 (cons (D tab 0) ρ) rfl h3
  · exact v56 (cons (D tab 1) ρ) rfl h3
  · exact v57 (cons (D tab 2) ρ) rfl h3
  · exact v58 (cons (D tab 3) ρ) rfl h3
  · exact v59 (cons (D tab 4) ρ) rfl h3
theorem v61 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h3 : ρ 3 = [1,2,3,4]) : Val tab ρ b21 [1,3,4] := by
  exact appVal tv (v14 ρ h0) (v60 ρ h3) (by decide)
theorem v62 (ρ : Env) (h0 : ρ 0 = [2,5]) (h3 : ρ 3 = [1,2,3,4]) : Val tab ρ b21 [2,4,5] := by
  exact appVal tv (v24 ρ h0) (v60 ρ h3) (by decide)
theorem v63 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h3 : ρ 3 = [1,2,3,4]) : Val tab ρ b21 [2,4,5] := by
  exact appVal tv (v26 ρ h0) (v60 ρ h3) (by decide)
theorem v64 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h3 : ρ 3 = [1,2,3,4]) : Val tab ρ b21 [2,4,5] := by
  exact appVal tv (v28 ρ h0) (v60 ρ h3) (by decide)
theorem v65 (ρ : Env) (h0 : ρ 0 = [3,4]) (h3 : ρ 3 = [1,2,3,4]) : Val tab ρ b21 [] := by
  exact appVal tv (v30 ρ h0) (v60 ρ h3) (by decide)
theorem v66 (ρ : Env) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b22 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,4,5],[2,4,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v61 (cons (D tab 0) ρ) rfl h2
  · exact v62 (cons (D tab 1) ρ) rfl h2
  · exact v63 (cons (D tab 2) ρ) rfl h2
  · exact v64 (cons (D tab 3) ρ) rfl h2
  · exact v65 (cons (D tab 4) ρ) rfl h2
theorem v67 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b23 [1,3,4] := by
  exact appVal tv (v14 ρ h0) (v66 ρ h2) (by decide)
theorem v68 (ρ : Env) (h0 : ρ 0 = [2,5]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b23 [2,4,5] := by
  exact appVal tv (v24 ρ h0) (v66 ρ h2) (by decide)
theorem v69 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b23 [2,4,5] := by
  exact appVal tv (v26 ρ h0) (v66 ρ h2) (by decide)
theorem v70 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b23 [2,4,5] := by
  exact appVal tv (v28 ρ h0) (v66 ρ h2) (by decide)
theorem v71 (ρ : Env) (h0 : ρ 0 = [3,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b23 [] := by
  exact appVal tv (v30 ρ h0) (v66 ρ h2) (by decide)
theorem v72 (ρ : Env) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b24 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,4,5],[2,4,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v67 (cons (D tab 0) ρ) rfl h1
  · exact v68 (cons (D tab 1) ρ) rfl h1
  · exact v69 (cons (D tab 2) ρ) rfl h1
  · exact v70 (cons (D tab 3) ρ) rfl h1
  · exact v71 (cons (D tab 4) ρ) rfl h1
theorem v73 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b25 [1,3,4] := by
  exact appVal tv (v14 ρ h0) (v72 ρ h1) (by decide)
theorem v74 (ρ : Env) (h0 : ρ 0 = [2,5]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b25 [2,4,5] := by
  exact appVal tv (v24 ρ h0) (v72 ρ h1) (by decide)
theorem v75 (ρ : Env) (h0 : ρ 0 = [2,4,5]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b25 [2,4,5] := by
  exact appVal tv (v26 ρ h0) (v72 ρ h1) (by decide)
theorem v76 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b25 [2,4,5] := by
  exact appVal tv (v28 ρ h0) (v72 ρ h1) (by decide)
theorem v77 (ρ : Env) (h0 : ρ 0 = [3,4]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b25 [] := by
  exact appVal tv (v30 ρ h0) (v72 ρ h1) (by decide)
theorem v78 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) : Val tab ρ b26 [1,2,3,4] := by
  apply lamVal (bs := [[1,3,4],[2,4,5],[2,4,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v73 (cons (D tab 0) ρ) rfl h0
  · exact v74 (cons (D tab 1) ρ) rfl h0
  · exact v75 (cons (D tab 2) ρ) rfl h0
  · exact v76 (cons (D tab 3) ρ) rfl h0
  · exact v77 (cons (D tab 4) ρ) rfl h0
theorem v79 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h2 : ρ 2 = [1]) : Val tab ρ b27 [1,3,4] := by
  exact appVal tv (v12 ρ h2) (v78 ρ h0) (by decide)
theorem v80 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h2 : ρ 2 = [1]) : Val tab ρ b28 [1,3,4] := by
  exact appVal tv (v79 ρ h0 h2) (v19 ρ) (by decide)
theorem v81 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b29 [1,3,4] := by
  exact appVal tv (v13 ρ h0) (v13 ρ h0) (by decide)
theorem v82 (ρ : Env) (h0 : ρ 0 = [2,5]) : Val tab ρ b29 [2,5] := by
  exact appVal tv (v15 ρ h0) (v15 ρ h0) (by decide)
theorem v83 (ρ : Env) (h0 : ρ 0 = [2,4,5]) : Val tab ρ b29 [2,5] := by
  exact appVal tv (v16 ρ h0) (v16 ρ h0) (by decide)
theorem v84 (ρ : Env) (h0 : ρ 0 = [2,3,4,5]) : Val tab ρ b29 [2,4,5] := by
  exact appVal tv (v17 ρ h0) (v17 ρ h0) (by decide)
theorem v85 (ρ : Env) (h0 : ρ 0 = [3,4]) : Val tab ρ b29 [] := by
  exact appVal tv (v18 ρ h0) (v18 ρ h0) (by decide)
theorem v86 (ρ : Env)  : Val tab ρ b30 [1,2,4] := by
  apply lamVal (bs := [[1,3,4],[2,5],[2,5],[2,4,5],[]]) tv _ (by decide)
  apply casesN
  · exact v81 (cons (D tab 0) ρ) rfl
  · exact v82 (cons (D tab 1) ρ) rfl
  · exact v83 (cons (D tab 2) ρ) rfl
  · exact v84 (cons (D tab 3) ρ) rfl
  · exact v85 (cons (D tab 4) ρ) rfl
end Lib102
end Blc.H44
