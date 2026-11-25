import Blc.SelfintResidual43.Lib0V55

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38 SelfintRecursiveTypes
namespace Lib0
theorem v110 (ρ : Env) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b44 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v106 (cons (D tab 0) ρ) rfl h2
  · exact v107 (cons (D tab 1) ρ) rfl h2
  · exact v108 (cons (D tab 2) ρ) rfl h2
  · exact v109 (cons (D tab 3) ρ) rfl h2
theorem v111 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b45 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v110 ρ h2) (by decide)
theorem v112 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b45 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v110 ρ h2) (by decide)
theorem v113 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b45 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v110 ρ h2) (by decide)
theorem v114 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b45 [] := by
  exact appVal tv (v25 ρ h0) (v110 ρ h2) (by decide)
theorem v115 (ρ : Env) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b46 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v111 (cons (D tab 0) ρ) rfl h1
  · exact v112 (cons (D tab 1) ρ) rfl h1
  · exact v113 (cons (D tab 2) ρ) rfl h1
  · exact v114 (cons (D tab 3) ρ) rfl h1
theorem v116 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b47 [1,2,3] := by
  exact appVal tv (v12 ρ h0) (v115 ρ h1) (by decide)
theorem v117 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b47 [0,1,2,3,4] := by
  exact appVal tv (v21 ρ h0) (v115 ρ h1) (by decide)
theorem v118 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b47 [0,1,2,3,4] := by
  exact appVal tv (v23 ρ h0) (v115 ρ h1) (by decide)
theorem v119 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b47 [] := by
  exact appVal tv (v25 ρ h0) (v115 ρ h1) (by decide)
theorem v120 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b48 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v116 (cons (D tab 0) ρ) rfl h0
  · exact v117 (cons (D tab 1) ρ) rfl h0
  · exact v118 (cons (D tab 2) ρ) rfl h0
  · exact v119 (cons (D tab 3) ρ) rfl h0
theorem v121 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1]) : Val tab ρ b49 [1,2,3] := by
  exact appVal tv (v2 ρ h1 h2) (v120 ρ h0) (by decide)
theorem v122 (ρ : Env) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b0 [1,2,3] := by
  exact varVal h2 (by decide)
theorem v123 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b50 [1,2,3] := by
  exact appVal tv (v3 ρ h0) (v122 ρ h2) (by decide)
theorem v124 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [1,2,3] := by
  exact appVal tv (v123 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v125 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b50 [0,1,2,3,4] := by
  exact appVal tv (v13 ρ h0) (v122 ρ h2) (by decide)
theorem v126 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v125 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v127 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b50 [0,1,2,3,4] := by
  exact appVal tv (v14 ρ h0) (v122 ρ h2) (by decide)
theorem v128 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v127 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v129 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b50 [] := by
  exact appVal tv (v15 ρ h0) (v122 ρ h2) (by decide)
theorem v130 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [] := by
  exact appVal tv (v129 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v131 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b52 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v124 (cons (D tab 0) ρ) rfl h0 h1
  · exact v126 (cons (D tab 1) ρ) rfl h0 h1
  · exact v128 (cons (D tab 2) ρ) rfl h0 h1
  · exact v130 (cons (D tab 3) ρ) rfl h0 h1
theorem v132 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [1,2,3] := by
  exact appVal tv (v123 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v133 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v125 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v134 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v127 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v135 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [] := by
  exact appVal tv (v129 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v136 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b52 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v132 (cons (D tab 0) ρ) rfl h0 h1
  · exact v133 (cons (D tab 1) ρ) rfl h0 h1
  · exact v134 (cons (D tab 2) ρ) rfl h0 h1
  · exact v135 (cons (D tab 3) ρ) rfl h0 h1
theorem v137 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [2] := by
  exact appVal tv (v123 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v138 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v125 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v139 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v127 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v140 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [] := by
  exact appVal tv (v129 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v141 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[2],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v137 (cons (D tab 0) ρ) rfl h0 h1
  · exact v138 (cons (D tab 1) ρ) rfl h0 h1
  · exact v139 (cons (D tab 2) ρ) rfl h0 h1
  · exact v140 (cons (D tab 3) ρ) rfl h0 h1
theorem v142 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [] := by
  exact appVal tv (v123 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v143 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v125 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v144 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v127 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v145 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,3]) : Val tab ρ b51 [] := by
  exact appVal tv (v129 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v146 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v142 (cons (D tab 0) ρ) rfl h0 h1
  · exact v143 (cons (D tab 1) ρ) rfl h0 h1
  · exact v144 (cons (D tab 2) ρ) rfl h0 h1
  · exact v145 (cons (D tab 3) ρ) rfl h0 h1
theorem v147 (ρ : Env) (h0 : ρ 0 = [1,2,3]) : Val tab ρ b53 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[2,3],[2,3]]) tv _ (by decide)
  apply casesN
  · exact v131 (cons (D tab 0) ρ) rfl h0
  · exact v136 (cons (D tab 1) ρ) rfl h0
  · exact v141 (cons (D tab 2) ρ) rfl h0
  · exact v146 (cons (D tab 3) ρ) rfl h0
theorem v148 (ρ : Env) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b0 [1,2,3,4] := by
  exact varVal h2 (by decide)
theorem v149 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b50 [1,2,3] := by
  exact appVal tv (v3 ρ h0) (v148 ρ h2) (by decide)
theorem v150 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [1,2,3] := by
  exact appVal tv (v149 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v151 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b50 [0,1,2,3,4] := by
  exact appVal tv (v13 ρ h0) (v148 ρ h2) (by decide)
theorem v152 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v151 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v153 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b50 [0,1,2,3,4] := by
  exact appVal tv (v14 ρ h0) (v148 ρ h2) (by decide)
theorem v154 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v153 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v155 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b50 [] := by
  exact appVal tv (v15 ρ h0) (v148 ρ h2) (by decide)
theorem v156 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v155 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v157 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b52 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v150 (cons (D tab 0) ρ) rfl h0 h1
  · exact v152 (cons (D tab 1) ρ) rfl h0 h1
  · exact v154 (cons (D tab 2) ρ) rfl h0 h1
  · exact v156 (cons (D tab 3) ρ) rfl h0 h1
theorem v158 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [1,2,3] := by
  exact appVal tv (v149 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v159 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v151 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v160 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v153 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v161 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v155 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v162 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b52 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v158 (cons (D tab 0) ρ) rfl h0 h1
  · exact v159 (cons (D tab 1) ρ) rfl h0 h1
  · exact v160 (cons (D tab 2) ρ) rfl h0 h1
  · exact v161 (cons (D tab 3) ρ) rfl h0 h1
theorem v163 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [2] := by
  exact appVal tv (v149 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v164 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v151 ρ h0 h2) (v7 ρ h1) (by decide)
end Lib0
end Blc.Floor43
