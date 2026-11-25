import Blc.SelfintResidual43.Lib3V0

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38 SelfintRecursiveTypes
namespace Lib3
theorem v55 (ρ : Env) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b22 [1,3,4] := by
  apply lamVal (bs := [[0,1,2,3,4],[],[0,1,2,3,4],[1,3,4]]) tv _ (by decide)
  apply casesN
  · exact v51 (cons (D tab 0) ρ) rfl h2
  · exact v52 (cons (D tab 1) ρ) rfl h2
  · exact v53 (cons (D tab 2) ρ) rfl h2
  · exact v54 (cons (D tab 3) ρ) rfl h2
theorem v56 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b23 [0,1,2,3,4] := by
  exact appVal tv (v12 ρ h0) (v55 ρ h2) (by decide)
theorem v57 (ρ : Env) (h0 : ρ 0 = [1]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b23 [] := by
  exact appVal tv (v21 ρ h0) (v55 ρ h2) (by decide)
theorem v58 (ρ : Env) (h0 : ρ 0 = [0,1,2]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b23 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v55 ρ h2) (by decide)
theorem v59 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h2 : ρ 2 = [1,3,4]) : Val tab ρ b23 [1,3,4] := by
  exact appVal tv (v25 ρ h0) (v55 ρ h2) (by decide)
theorem v60 (ρ : Env) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b24 [1,3,4] := by
  apply lamVal (bs := [[0,1,2,3,4],[],[0,1,2,3,4],[1,3,4]]) tv _ (by decide)
  apply casesN
  · exact v56 (cons (D tab 0) ρ) rfl h1
  · exact v57 (cons (D tab 1) ρ) rfl h1
  · exact v58 (cons (D tab 2) ρ) rfl h1
  · exact v59 (cons (D tab 3) ρ) rfl h1
theorem v61 (ρ : Env) (h0 : ρ 0 = [2,3,4]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b25 [0,1,2,3,4] := by
  exact appVal tv (v12 ρ h0) (v60 ρ h1) (by decide)
theorem v62 (ρ : Env) (h0 : ρ 0 = [1]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b25 [] := by
  exact appVal tv (v21 ρ h0) (v60 ρ h1) (by decide)
theorem v63 (ρ : Env) (h0 : ρ 0 = [0,1,2]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b25 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v60 ρ h1) (by decide)
theorem v64 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h1 : ρ 1 = [1,3,4]) : Val tab ρ b25 [1,3,4] := by
  exact appVal tv (v25 ρ h0) (v60 ρ h1) (by decide)
theorem v65 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b26 [1,3,4] := by
  apply lamVal (bs := [[0,1,2,3,4],[],[0,1,2,3,4],[1,3,4]]) tv _ (by decide)
  apply casesN
  · exact v61 (cons (D tab 0) ρ) rfl h0
  · exact v62 (cons (D tab 1) ρ) rfl h0
  · exact v63 (cons (D tab 2) ρ) rfl h0
  · exact v64 (cons (D tab 3) ρ) rfl h0
theorem v66 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h2 : ρ 2 = [4]) : Val tab ρ b27 [1,3,4] := by
  exact appVal tv (v10 ρ h2) (v65 ρ h0) (by decide)
theorem v67 (ρ : Env) (h0 : ρ 0 = [1,3,4]) (h2 : ρ 2 = [4]) : Val tab ρ b28 [1,3,4] := by
  exact appVal tv (v66 ρ h0 h2) (v16 ρ) (by decide)
theorem v68 (ρ : Env) (h0 : ρ 0 = [2,3,4]) : Val tab ρ b29 [] := by
  exact appVal tv (v11 ρ h0) (v11 ρ h0) (by decide)
theorem v69 (ρ : Env) (h0 : ρ 0 = [1]) : Val tab ρ b29 [] := by
  exact appVal tv (v13 ρ h0) (v13 ρ h0) (by decide)
theorem v70 (ρ : Env) (h0 : ρ 0 = [0,1,2]) : Val tab ρ b29 [0,1,2,3,4] := by
  exact appVal tv (v14 ρ h0) (v14 ρ h0) (by decide)
theorem v71 (ρ : Env) (h0 : ρ 0 = [1,3,4]) : Val tab ρ b29 [1,3,4] := by
  exact appVal tv (v15 ρ h0) (v15 ρ h0) (by decide)
theorem v72 (ρ : Env)  : Val tab ρ b30 [3,4] := by
  apply lamVal (bs := [[],[],[0,1,2,3,4],[1,3,4]]) tv _ (by decide)
  apply casesN
  · exact v68 (cons (D tab 0) ρ) rfl
  · exact v69 (cons (D tab 1) ρ) rfl
  · exact v70 (cons (D tab 2) ρ) rfl
  · exact v71 (cons (D tab 3) ρ) rfl
end Lib3
end Blc.Floor43
