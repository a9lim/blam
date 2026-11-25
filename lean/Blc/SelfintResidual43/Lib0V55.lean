import Blc.SelfintResidual43.Lib0V0

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38 SelfintRecursiveTypes
namespace Lib0
theorem v55 (ρ : Env) (h13 : ρ 13 = [1,2,3]) : Val tab ρ b22 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v51 (cons (D tab 0) ρ) rfl h13
  · exact v52 (cons (D tab 1) ρ) rfl h13
  · exact v53 (cons (D tab 2) ρ) rfl h13
  · exact v54 (cons (D tab 3) ρ) rfl h13
theorem v56 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h13 : ρ 13 = [1,2,3]) : Val tab ρ b23 [1,2,3] := by
  exact appVal tv (v18 ρ h0) (v55 ρ h13) (by decide)
theorem v57 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h13 : ρ 13 = [1,2,3]) : Val tab ρ b23 [0,1,2,3,4] := by
  exact appVal tv (v29 ρ h0) (v55 ρ h13) (by decide)
theorem v58 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h13 : ρ 13 = [1,2,3]) : Val tab ρ b23 [0,1,2,3,4] := by
  exact appVal tv (v31 ρ h0) (v55 ρ h13) (by decide)
theorem v59 (ρ : Env) (h0 : ρ 0 = []) (h13 : ρ 13 = [1,2,3]) : Val tab ρ b23 [] := by
  exact appVal tv (v33 ρ h0) (v55 ρ h13) (by decide)
theorem v60 (ρ : Env) (h12 : ρ 12 = [1,2,3]) : Val tab ρ b24 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v56 (cons (D tab 0) ρ) rfl h12
  · exact v57 (cons (D tab 1) ρ) rfl h12
  · exact v58 (cons (D tab 2) ρ) rfl h12
  · exact v59 (cons (D tab 3) ρ) rfl h12
theorem v61 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h12 : ρ 12 = [1,2,3]) : Val tab ρ b25 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v60 ρ h12) (by decide)
theorem v62 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h12 : ρ 12 = [1,2,3]) : Val tab ρ b25 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v60 ρ h12) (by decide)
theorem v63 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h12 : ρ 12 = [1,2,3]) : Val tab ρ b25 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v60 ρ h12) (by decide)
theorem v64 (ρ : Env) (h0 : ρ 0 = []) (h12 : ρ 12 = [1,2,3]) : Val tab ρ b25 [] := by
  exact appVal tv (v25 ρ h0) (v60 ρ h12) (by decide)
theorem v65 (ρ : Env) (h11 : ρ 11 = [1,2,3]) : Val tab ρ b26 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v61 (cons (D tab 0) ρ) rfl h11
  · exact v62 (cons (D tab 1) ρ) rfl h11
  · exact v63 (cons (D tab 2) ρ) rfl h11
  · exact v64 (cons (D tab 3) ρ) rfl h11
theorem v66 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h11 : ρ 11 = [1,2,3]) : Val tab ρ b27 [1,2,3] := by
  exact appVal tv (v18 ρ h0) (v65 ρ h11) (by decide)
theorem v67 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h11 : ρ 11 = [1,2,3]) : Val tab ρ b27 [0,1,2,3,4] := by
  exact appVal tv (v29 ρ h0) (v65 ρ h11) (by decide)
theorem v68 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h11 : ρ 11 = [1,2,3]) : Val tab ρ b27 [0,1,2,3,4] := by
  exact appVal tv (v31 ρ h0) (v65 ρ h11) (by decide)
theorem v69 (ρ : Env) (h0 : ρ 0 = []) (h11 : ρ 11 = [1,2,3]) : Val tab ρ b27 [] := by
  exact appVal tv (v33 ρ h0) (v65 ρ h11) (by decide)
theorem v70 (ρ : Env) (h10 : ρ 10 = [1,2,3]) : Val tab ρ b28 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v66 (cons (D tab 0) ρ) rfl h10
  · exact v67 (cons (D tab 1) ρ) rfl h10
  · exact v68 (cons (D tab 2) ρ) rfl h10
  · exact v69 (cons (D tab 3) ρ) rfl h10
theorem v71 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h10 : ρ 10 = [1,2,3]) : Val tab ρ b29 [1,2,3] := by
  exact appVal tv (v18 ρ h0) (v70 ρ h10) (by decide)
theorem v72 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h10 : ρ 10 = [1,2,3]) : Val tab ρ b29 [0,1,2,3,4] := by
  exact appVal tv (v29 ρ h0) (v70 ρ h10) (by decide)
theorem v73 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h10 : ρ 10 = [1,2,3]) : Val tab ρ b29 [0,1,2,3,4] := by
  exact appVal tv (v31 ρ h0) (v70 ρ h10) (by decide)
theorem v74 (ρ : Env) (h0 : ρ 0 = []) (h10 : ρ 10 = [1,2,3]) : Val tab ρ b29 [] := by
  exact appVal tv (v33 ρ h0) (v70 ρ h10) (by decide)
theorem v75 (ρ : Env) (h9 : ρ 9 = [1,2,3]) : Val tab ρ b30 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v71 (cons (D tab 0) ρ) rfl h9
  · exact v72 (cons (D tab 1) ρ) rfl h9
  · exact v73 (cons (D tab 2) ρ) rfl h9
  · exact v74 (cons (D tab 3) ρ) rfl h9
theorem v76 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h9 : ρ 9 = [1,2,3]) : Val tab ρ b31 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v75 ρ h9) (by decide)
theorem v77 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h9 : ρ 9 = [1,2,3]) : Val tab ρ b31 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v75 ρ h9) (by decide)
theorem v78 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h9 : ρ 9 = [1,2,3]) : Val tab ρ b31 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v75 ρ h9) (by decide)
theorem v79 (ρ : Env) (h0 : ρ 0 = []) (h9 : ρ 9 = [1,2,3]) : Val tab ρ b31 [] := by
  exact appVal tv (v25 ρ h0) (v75 ρ h9) (by decide)
theorem v80 (ρ : Env) (h8 : ρ 8 = [1,2,3]) : Val tab ρ b32 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v76 (cons (D tab 0) ρ) rfl h8
  · exact v77 (cons (D tab 1) ρ) rfl h8
  · exact v78 (cons (D tab 2) ρ) rfl h8
  · exact v79 (cons (D tab 3) ρ) rfl h8
theorem v81 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h8 : ρ 8 = [1,2,3]) : Val tab ρ b33 [1,2,3] := by
  exact appVal tv (v18 ρ h0) (v80 ρ h8) (by decide)
theorem v82 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h8 : ρ 8 = [1,2,3]) : Val tab ρ b33 [0,1,2,3,4] := by
  exact appVal tv (v29 ρ h0) (v80 ρ h8) (by decide)
theorem v83 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h8 : ρ 8 = [1,2,3]) : Val tab ρ b33 [0,1,2,3,4] := by
  exact appVal tv (v31 ρ h0) (v80 ρ h8) (by decide)
theorem v84 (ρ : Env) (h0 : ρ 0 = []) (h8 : ρ 8 = [1,2,3]) : Val tab ρ b33 [] := by
  exact appVal tv (v33 ρ h0) (v80 ρ h8) (by decide)
theorem v85 (ρ : Env) (h7 : ρ 7 = [1,2,3]) : Val tab ρ b34 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v81 (cons (D tab 0) ρ) rfl h7
  · exact v82 (cons (D tab 1) ρ) rfl h7
  · exact v83 (cons (D tab 2) ρ) rfl h7
  · exact v84 (cons (D tab 3) ρ) rfl h7
theorem v86 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h7 : ρ 7 = [1,2,3]) : Val tab ρ b35 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v85 ρ h7) (by decide)
theorem v87 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h7 : ρ 7 = [1,2,3]) : Val tab ρ b35 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v85 ρ h7) (by decide)
theorem v88 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h7 : ρ 7 = [1,2,3]) : Val tab ρ b35 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v85 ρ h7) (by decide)
theorem v89 (ρ : Env) (h0 : ρ 0 = []) (h7 : ρ 7 = [1,2,3]) : Val tab ρ b35 [] := by
  exact appVal tv (v25 ρ h0) (v85 ρ h7) (by decide)
theorem v90 (ρ : Env) (h6 : ρ 6 = [1,2,3]) : Val tab ρ b36 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v86 (cons (D tab 0) ρ) rfl h6
  · exact v87 (cons (D tab 1) ρ) rfl h6
  · exact v88 (cons (D tab 2) ρ) rfl h6
  · exact v89 (cons (D tab 3) ρ) rfl h6
theorem v91 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h6 : ρ 6 = [1,2,3]) : Val tab ρ b37 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v90 ρ h6) (by decide)
theorem v92 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h6 : ρ 6 = [1,2,3]) : Val tab ρ b37 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v90 ρ h6) (by decide)
theorem v93 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h6 : ρ 6 = [1,2,3]) : Val tab ρ b37 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v90 ρ h6) (by decide)
theorem v94 (ρ : Env) (h0 : ρ 0 = []) (h6 : ρ 6 = [1,2,3]) : Val tab ρ b37 [] := by
  exact appVal tv (v25 ρ h0) (v90 ρ h6) (by decide)
theorem v95 (ρ : Env) (h5 : ρ 5 = [1,2,3]) : Val tab ρ b38 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v91 (cons (D tab 0) ρ) rfl h5
  · exact v92 (cons (D tab 1) ρ) rfl h5
  · exact v93 (cons (D tab 2) ρ) rfl h5
  · exact v94 (cons (D tab 3) ρ) rfl h5
theorem v96 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h5 : ρ 5 = [1,2,3]) : Val tab ρ b39 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v95 ρ h5) (by decide)
theorem v97 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h5 : ρ 5 = [1,2,3]) : Val tab ρ b39 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v95 ρ h5) (by decide)
theorem v98 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h5 : ρ 5 = [1,2,3]) : Val tab ρ b39 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v95 ρ h5) (by decide)
theorem v99 (ρ : Env) (h0 : ρ 0 = []) (h5 : ρ 5 = [1,2,3]) : Val tab ρ b39 [] := by
  exact appVal tv (v25 ρ h0) (v95 ρ h5) (by decide)
theorem v100 (ρ : Env) (h4 : ρ 4 = [1,2,3]) : Val tab ρ b40 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v96 (cons (D tab 0) ρ) rfl h4
  · exact v97 (cons (D tab 1) ρ) rfl h4
  · exact v98 (cons (D tab 2) ρ) rfl h4
  · exact v99 (cons (D tab 3) ρ) rfl h4
theorem v101 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h4 : ρ 4 = [1,2,3]) : Val tab ρ b41 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v100 ρ h4) (by decide)
theorem v102 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h4 : ρ 4 = [1,2,3]) : Val tab ρ b41 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v100 ρ h4) (by decide)
theorem v103 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h4 : ρ 4 = [1,2,3]) : Val tab ρ b41 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v100 ρ h4) (by decide)
theorem v104 (ρ : Env) (h0 : ρ 0 = []) (h4 : ρ 4 = [1,2,3]) : Val tab ρ b41 [] := by
  exact appVal tv (v25 ρ h0) (v100 ρ h4) (by decide)
theorem v105 (ρ : Env) (h3 : ρ 3 = [1,2,3]) : Val tab ρ b42 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v101 (cons (D tab 0) ρ) rfl h3
  · exact v102 (cons (D tab 1) ρ) rfl h3
  · exact v103 (cons (D tab 2) ρ) rfl h3
  · exact v104 (cons (D tab 3) ρ) rfl h3
theorem v106 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h3 : ρ 3 = [1,2,3]) : Val tab ρ b43 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v105 ρ h3) (by decide)
theorem v107 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h3 : ρ 3 = [1,2,3]) : Val tab ρ b43 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v105 ρ h3) (by decide)
theorem v108 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h3 : ρ 3 = [1,2,3]) : Val tab ρ b43 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v105 ρ h3) (by decide)
theorem v109 (ρ : Env) (h0 : ρ 0 = []) (h3 : ρ 3 = [1,2,3]) : Val tab ρ b43 [] := by
  exact appVal tv (v25 ρ h0) (v105 ρ h3) (by decide)
end Lib0
end Blc.Floor43
