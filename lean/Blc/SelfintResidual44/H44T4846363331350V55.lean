import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks
import Blc.SelfintResidual44.H44T4846363331350V0

set_option Elab.async false
namespace Blc.H44
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock SelfintRecursiveTypes
namespace T4846363331350
theorem v55 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b9 [4] := by
  apply lamVal (bs := [[],[],[5,6],[1,2,3,4,5,6],[1,2,3,4,5,6],[5,6]]) tv _ (by decide)
  apply casesN
  · exact v52 (cons (D tab 0) ρ) rfl h0 h1
  · exact v52 (cons (D tab 1) ρ) rfl h0 h1
  · exact v53 (cons (D tab 2) ρ) rfl h0 h1
  · exact v54 (cons (D tab 3) ρ) rfl h0 h1
  · exact v54 (cons (D tab 4) ρ) rfl h0 h1
  · exact v53 (cons (D tab 5) ρ) rfl h0 h1
theorem v56 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [2,3,4]) : Val tab ρ b10 [] := by
  exact appVal tv (v21 ρ h1) (v55 ρ h0 h1) (by decide)
theorem v57 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b11 [] := by
  apply lamVal (bs := [[],[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v46 (cons (D tab 0) ρ) rfl h0
  · exact v46 (cons (D tab 1) ρ) rfl h0
  · exact v51 (cons (D tab 2) ρ) rfl h0
  · exact v56 (cons (D tab 3) ρ) rfl h0
  · exact v56 (cons (D tab 4) ρ) rfl h0
  · exact v51 (cons (D tab 5) ρ) rfl h0
theorem v58 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b12 [] := by
  exact appVal tv (v2 ρ h0) (v57 ρ h0) (by decide)
theorem v59 (ρ : Env) (h2 : ρ 2 = [5,6]) : Val tab ρ b4 [5,6] := by
  exact varVal h2 (by decide)
theorem v60 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [] := by
  exact appVal tv (v59 ρ h2) (v11 ρ h0 h1) (by decide)
theorem v61 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [] := by
  exact appVal tv (v59 ρ h2) (v14 ρ h0 h1) (by decide)
theorem v62 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [1,5]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [] := by
  exact appVal tv (v59 ρ h2) (v17 ρ h0 h1) (by decide)
theorem v63 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [5,6]) : Val tab ρ b9 [] := by
  apply lamVal (bs := [[],[],[],[],[],[]]) tv _ (by decide)
  apply casesN
  · exact v60 (cons (D tab 0) ρ) rfl h0 h1
  · exact v60 (cons (D tab 1) ρ) rfl h0 h1
  · exact v61 (cons (D tab 2) ρ) rfl h0 h1
  · exact v62 (cons (D tab 3) ρ) rfl h0 h1
  · exact v62 (cons (D tab 4) ρ) rfl h0 h1
  · exact v61 (cons (D tab 5) ρ) rfl h0 h1
theorem v64 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [5,6]) : Val tab ρ b10 [] := by
  exact appVal tv (v30 ρ h1) (v63 ρ h0 h1) (by decide)
theorem v65 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [] := by
  exact appVal tv (v59 ρ h2) (v22 ρ h0 h1) (by decide)
theorem v66 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [2,5,6] := by
  exact appVal tv (v59 ρ h2) (v24 ρ h0 h1) (by decide)
theorem v67 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [2,3,4]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [0,1,2,3,4,5,6] := by
  exact appVal tv (v59 ρ h2) (v26 ρ h0 h1) (by decide)
theorem v68 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [5,6]) : Val tab ρ b9 [4,5,6] := by
  apply lamVal (bs := [[],[],[2,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[2,5,6]]) tv _ (by decide)
  apply casesN
  · exact v65 (cons (D tab 0) ρ) rfl h0 h1
  · exact v65 (cons (D tab 1) ρ) rfl h0 h1
  · exact v66 (cons (D tab 2) ρ) rfl h0 h1
  · exact v67 (cons (D tab 3) ρ) rfl h0 h1
  · exact v67 (cons (D tab 4) ρ) rfl h0 h1
  · exact v66 (cons (D tab 5) ρ) rfl h0 h1
theorem v69 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [5,6]) : Val tab ρ b10 [0,1,2,3,4,5,6] := by
  exact appVal tv (v30 ρ h1) (v68 ρ h0 h1) (by decide)
theorem v70 (ρ : Env) (h0 : ρ 0 = [1,5]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [] := by
  exact appVal tv (v59 ρ h2) (v31 ρ h0 h1) (by decide)
theorem v71 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [0,1,2,3,4,5,6] := by
  exact appVal tv (v59 ρ h2) (v33 ρ h0 h1) (by decide)
theorem v72 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [5,6]) (h2 : ρ 2 = [5,6]) : Val tab ρ b8 [0,1,2,3,4,5,6] := by
  exact appVal tv (v59 ρ h2) (v35 ρ h0 h1) (by decide)
theorem v73 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [5,6]) : Val tab ρ b9 [3,4,5,6] := by
  apply lamVal (bs := [[],[],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6]]) tv _ (by decide)
  apply casesN
  · exact v70 (cons (D tab 0) ρ) rfl h0 h1
  · exact v70 (cons (D tab 1) ρ) rfl h0 h1
  · exact v71 (cons (D tab 2) ρ) rfl h0 h1
  · exact v72 (cons (D tab 3) ρ) rfl h0 h1
  · exact v72 (cons (D tab 4) ρ) rfl h0 h1
  · exact v71 (cons (D tab 5) ρ) rfl h0 h1
theorem v74 (ρ : Env) (h0 : ρ 0 = [5,6]) (h1 : ρ 1 = [5,6]) : Val tab ρ b10 [0,1,2,3,4,5,6] := by
  exact appVal tv (v30 ρ h1) (v73 ρ h0 h1) (by decide)
theorem v75 (ρ : Env) (h0 : ρ 0 = [5,6]) : Val tab ρ b11 [3,4,5,6] := by
  apply lamVal (bs := [[],[],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6]]) tv _ (by decide)
  apply casesN
  · exact v64 (cons (D tab 0) ρ) rfl h0
  · exact v64 (cons (D tab 1) ρ) rfl h0
  · exact v69 (cons (D tab 2) ρ) rfl h0
  · exact v74 (cons (D tab 3) ρ) rfl h0
  · exact v74 (cons (D tab 4) ρ) rfl h0
  · exact v69 (cons (D tab 5) ρ) rfl h0
theorem v76 (ρ : Env) (h0 : ρ 0 = [5,6]) : Val tab ρ b12 [0,1,2,3,4,5,6] := by
  exact appVal tv (v4 ρ h0) (v75 ρ h0) (by decide)
theorem v77 (ρ : Env)  : Val tab ρ b13 [1,2,4,5] := by
  apply lamVal (bs := [[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[],[0,1,2,3,4,5,6],[0,1,2,3,4,5,6],[]]) tv _ (by decide)
  apply casesN
  · exact v40 (cons (D tab 0) ρ) rfl
  · exact v40 (cons (D tab 1) ρ) rfl
  · exact v58 (cons (D tab 2) ρ) rfl
  · exact v76 (cons (D tab 3) ρ) rfl
  · exact v76 (cons (D tab 4) ρ) rfl
  · exact v58 (cons (D tab 5) ρ) rfl
theorem v78 (ρ : Env)  : Val tab ρ b14 [0,1,2,3,4,5,6] := by
  exact appVal tv (v6 ρ) (v77 ρ) (by decide)
end T4846363331350
end Blc.H44
