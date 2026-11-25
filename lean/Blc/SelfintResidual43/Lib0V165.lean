import Blc.SelfintResidual43.Lib0V110

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38 SelfintRecursiveTypes
namespace Lib0
theorem v165 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v153 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v166 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v155 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v167 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[2],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v163 (cons (D tab 0) ρ) rfl h0 h1
  · exact v164 (cons (D tab 1) ρ) rfl h0 h1
  · exact v165 (cons (D tab 2) ρ) rfl h0 h1
  · exact v166 (cons (D tab 3) ρ) rfl h0 h1
theorem v168 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v149 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v169 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v151 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v170 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v153 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v171 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,3,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v155 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v172 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3,4]) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v168 (cons (D tab 0) ρ) rfl h0 h1
  · exact v169 (cons (D tab 1) ρ) rfl h0 h1
  · exact v170 (cons (D tab 2) ρ) rfl h0 h1
  · exact v171 (cons (D tab 3) ρ) rfl h0 h1
theorem v173 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) : Val tab ρ b53 [1,2,3] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[2,3],[2,3]]) tv _ (by decide)
  apply casesN
  · exact v157 (cons (D tab 0) ρ) rfl h0
  · exact v162 (cons (D tab 1) ρ) rfl h0
  · exact v167 (cons (D tab 2) ρ) rfl h0
  · exact v172 (cons (D tab 3) ρ) rfl h0
theorem v174 (ρ : Env) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b0 [1,2,4] := by
  exact varVal h2 (by decide)
theorem v175 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b50 [2] := by
  exact appVal tv (v3 ρ h0) (v174 ρ h2) (by decide)
theorem v176 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v175 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v177 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b50 [0,1,2,3,4] := by
  exact appVal tv (v13 ρ h0) (v174 ρ h2) (by decide)
theorem v178 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v177 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v179 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b50 [0,1,2,3,4] := by
  exact appVal tv (v14 ρ h0) (v174 ρ h2) (by decide)
theorem v180 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v179 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v181 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b50 [] := by
  exact appVal tv (v15 ρ h0) (v174 ρ h2) (by decide)
theorem v182 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v181 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v183 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,4]) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v176 (cons (D tab 0) ρ) rfl h0 h1
  · exact v178 (cons (D tab 1) ρ) rfl h0 h1
  · exact v180 (cons (D tab 2) ρ) rfl h0 h1
  · exact v182 (cons (D tab 3) ρ) rfl h0 h1
theorem v184 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [1,2] := by
  exact appVal tv (v175 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v185 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v177 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v186 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v179 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v187 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v181 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v188 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,4]) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[1,2],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v184 (cons (D tab 0) ρ) rfl h0 h1
  · exact v185 (cons (D tab 1) ρ) rfl h0 h1
  · exact v186 (cons (D tab 2) ρ) rfl h0 h1
  · exact v187 (cons (D tab 3) ρ) rfl h0 h1
theorem v189 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v175 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v190 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v177 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v191 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v179 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v192 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v181 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v193 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,4]) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v189 (cons (D tab 0) ρ) rfl h0 h1
  · exact v190 (cons (D tab 1) ρ) rfl h0 h1
  · exact v191 (cons (D tab 2) ρ) rfl h0 h1
  · exact v192 (cons (D tab 3) ρ) rfl h0 h1
theorem v194 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v175 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v195 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v177 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v196 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v179 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v197 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = []) (h2 : ρ 2 = [1,2,4]) : Val tab ρ b51 [] := by
  exact appVal tv (v181 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v198 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,4]) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v194 (cons (D tab 0) ρ) rfl h0 h1
  · exact v195 (cons (D tab 1) ρ) rfl h0 h1
  · exact v196 (cons (D tab 2) ρ) rfl h0 h1
  · exact v197 (cons (D tab 3) ρ) rfl h0 h1
theorem v199 (ρ : Env) (h0 : ρ 0 = [1,2,4]) : Val tab ρ b53 [3] := by
  apply lamVal (bs := [[2,3],[2,3],[2,3],[2,3]]) tv _ (by decide)
  apply casesN
  · exact v183 (cons (D tab 0) ρ) rfl h0
  · exact v188 (cons (D tab 1) ρ) rfl h0
  · exact v193 (cons (D tab 2) ρ) rfl h0
  · exact v198 (cons (D tab 3) ρ) rfl h0
theorem v200 (ρ : Env) (h2 : ρ 2 = []) : Val tab ρ b0 [] := by
  exact varVal h2 (by decide)
theorem v201 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h2 : ρ 2 = []) : Val tab ρ b50 [] := by
  exact appVal tv (v3 ρ h0) (v200 ρ h2) (by decide)
theorem v202 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = []) : Val tab ρ b51 [] := by
  exact appVal tv (v201 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v203 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h2 : ρ 2 = []) : Val tab ρ b50 [0,1,2,3,4] := by
  exact appVal tv (v13 ρ h0) (v200 ρ h2) (by decide)
theorem v204 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = []) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v203 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v205 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h2 : ρ 2 = []) : Val tab ρ b50 [0,1,2,3,4] := by
  exact appVal tv (v14 ρ h0) (v200 ρ h2) (by decide)
theorem v206 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = []) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v205 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v207 (ρ : Env) (h0 : ρ 0 = []) (h2 : ρ 2 = []) : Val tab ρ b50 [] := by
  exact appVal tv (v15 ρ h0) (v200 ρ h2) (by decide)
theorem v208 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3]) (h2 : ρ 2 = []) : Val tab ρ b51 [] := by
  exact appVal tv (v207 ρ h0 h2) (v1 ρ h1) (by decide)
theorem v209 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = []) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v202 (cons (D tab 0) ρ) rfl h0 h1
  · exact v204 (cons (D tab 1) ρ) rfl h0 h1
  · exact v206 (cons (D tab 2) ρ) rfl h0 h1
  · exact v208 (cons (D tab 3) ρ) rfl h0 h1
theorem v210 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = []) : Val tab ρ b51 [] := by
  exact appVal tv (v201 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v211 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = []) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v203 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v212 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = []) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v205 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v213 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,3,4]) (h2 : ρ 2 = []) : Val tab ρ b51 [] := by
  exact appVal tv (v207 ρ h0 h2) (v5 ρ h1) (by decide)
theorem v214 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = []) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v210 (cons (D tab 0) ρ) rfl h0 h1
  · exact v211 (cons (D tab 1) ρ) rfl h0 h1
  · exact v212 (cons (D tab 2) ρ) rfl h0 h1
  · exact v213 (cons (D tab 3) ρ) rfl h0 h1
theorem v215 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = []) : Val tab ρ b51 [] := by
  exact appVal tv (v201 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v216 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = []) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v203 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v217 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = []) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v205 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v218 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = [1,2,4]) (h2 : ρ 2 = []) : Val tab ρ b51 [] := by
  exact appVal tv (v207 ρ h0 h2) (v7 ρ h1) (by decide)
theorem v219 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = []) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v215 (cons (D tab 0) ρ) rfl h0 h1
  · exact v216 (cons (D tab 1) ρ) rfl h0 h1
  · exact v217 (cons (D tab 2) ρ) rfl h0 h1
  · exact v218 (cons (D tab 3) ρ) rfl h0 h1
end Lib0
end Blc.Floor43
