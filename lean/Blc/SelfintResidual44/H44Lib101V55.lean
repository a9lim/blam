import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Lib101V0

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace Lib101
theorem v55 (ρ : Env) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b18 [4] := by
  apply lamVal (bs := [[],[],[4],[4],[1,2,3,5]]) tv _ (by decide)
  apply casesN
  · exact v50 (cons (D tab 0) ρ) rfl h3
  · exact v51 (cons (D tab 1) ρ) rfl h3
  · exact v52 (cons (D tab 2) ρ) rfl h3
  · exact v53 (cons (D tab 3) ρ) rfl h3
  · exact v54 (cons (D tab 4) ρ) rfl h3
theorem v56 (ρ : Env) (h0 : ρ 0 = []) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b19 [] := by
  exact appVal tv (v15 ρ h0) (v55 ρ h3) (by decide)
theorem v57 (ρ : Env) (h0 : ρ 0 = [5]) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b19 [] := by
  exact appVal tv (v25 ρ h0) (v55 ρ h3) (by decide)
theorem v58 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b19 [4] := by
  exact appVal tv (v27 ρ h0) (v55 ρ h3) (by decide)
theorem v59 (ρ : Env) (h0 : ρ 0 = [4]) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b19 [4] := by
  exact appVal tv (v29 ρ h0) (v55 ρ h3) (by decide)
theorem v60 (ρ : Env) (h0 : ρ 0 = [1,2]) (h3 : ρ 3 = [1,3,4]) : Val tab ρ b19 [1,2,3,5] := by
  exact appVal tv (v31 ρ h0) (v55 ρ h3) (by decide)
theorem v61 (ρ : Env) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b20 [4] := by
  apply lamVal (bs := [[],[],[4],[4],[1,2,3,5]]) tv _ (by decide)
  apply casesN
  · exact v56 (cons (D tab 0) ρ) rfl h2
  · exact v57 (cons (D tab 1) ρ) rfl h2
  · exact v58 (cons (D tab 2) ρ) rfl h2
  · exact v59 (cons (D tab 3) ρ) rfl h2
  · exact v60 (cons (D tab 4) ρ) rfl h2
theorem v62 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b21 [] := by
  exact appVal tv (v15 ρ h0) (v61 ρ h2) (by decide)
theorem v63 (ρ : Env) (h0 : ρ 0 = [5]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b21 [] := by
  exact appVal tv (v25 ρ h0) (v61 ρ h2) (by decide)
theorem v64 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b21 [4] := by
  exact appVal tv (v27 ρ h0) (v61 ρ h2) (by decide)
theorem v65 (ρ : Env) (h0 : ρ 0 = [4]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b21 [4] := by
  exact appVal tv (v29 ρ h0) (v61 ρ h2) (by decide)
theorem v66 (ρ : Env) (h0 : ρ 0 = [1,2]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b21 [1,2,3,5] := by
  exact appVal tv (v31 ρ h0) (v61 ρ h2) (by decide)
theorem v67 (ρ : Env) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b22 [4] := by
  apply lamVal (bs := [[],[],[4],[4],[1,2,3,5]]) tv _ (by decide)
  apply casesN
  · exact v62 (cons (D tab 0) ρ) rfl h1
  · exact v63 (cons (D tab 1) ρ) rfl h1
  · exact v64 (cons (D tab 2) ρ) rfl h1
  · exact v65 (cons (D tab 3) ρ) rfl h1
  · exact v66 (cons (D tab 4) ρ) rfl h1
theorem v68 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b23 [] := by
  exact appVal tv (v15 ρ h0) (v67 ρ h1) (by decide)
theorem v69 (ρ : Env) (h0 : ρ 0 = [5]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b23 [] := by
  exact appVal tv (v25 ρ h0) (v67 ρ h1) (by decide)
theorem v70 (ρ : Env) (h0 : ρ 0 = [3,4,5]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b23 [4] := by
  exact appVal tv (v27 ρ h0) (v67 ρ h1) (by decide)
theorem v71 (ρ : Env) (h0 : ρ 0 = [4]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b23 [4] := by
  exact appVal tv (v29 ρ h0) (v67 ρ h1) (by decide)
theorem v72 (ρ : Env) (h0 : ρ 0 = [1,2]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b23 [1,2,3,5] := by
  exact appVal tv (v31 ρ h0) (v67 ρ h1) (by decide)
theorem v73 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b24 [4] := by
  apply lamVal (bs := [[],[],[4],[4],[1,2,3,5]]) tv _ (by decide)
  apply casesN
  · exact v68 (cons (D tab 0) ρ) rfl h0
  · exact v69 (cons (D tab 1) ρ) rfl h0
  · exact v70 (cons (D tab 2) ρ) rfl h0
  · exact v71 (cons (D tab 3) ρ) rfl h0
  · exact v72 (cons (D tab 4) ρ) rfl h0
theorem v74 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h1 : ρ 1 = [1,2,3,5]) (h2 : ρ 2 = [5]) : Val tab ρ b25 [4] := by
  exact appVal tv (v2 ρ h1 h2) (v73 ρ h0) (by decide)
theorem v75 (ρ : Env)  : Val tab ρ b26 [4] := by
  apply lamVal (bs := [[3,4],[3,4],[3,4],[3,4],[3,4]]) tv _ (by decide)
  apply casesN
  · exact v14 (cons (D tab 0) ρ)
  · exact v14 (cons (D tab 1) ρ)
  · exact v14 (cons (D tab 2) ρ)
  · exact v14 (cons (D tab 3) ρ)
  · exact v14 (cons (D tab 4) ρ)
theorem v76 (ρ : Env) (h1 : ρ 1 = [1,2,3,5]) : Val tab ρ b27 [1,2,3,5] := by
  exact appVal tv (v1 ρ h1) (v75 ρ) (by decide)
theorem v77 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b3 [1,3,4] := by
  exact varVal h0 (by decide)
theorem v78 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h1 : ρ 1 = [1,2,3,5]) : Val tab ρ b28 [1,2,3,5] := by
  exact appVal tv (v76 ρ h1) (v77 ρ h0) (by decide)
end Lib101
end Blc.H44
