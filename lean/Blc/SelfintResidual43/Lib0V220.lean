import Blc.SelfintResidual43.Lib0V165

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38 SelfintRecursiveTypes
namespace Lib0
theorem v220 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = []) (h2 : ρ 2 = []) : Val tab ρ b51 [] := by
  exact appVal tv (v201 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v221 (ρ : Env) (h0 : ρ 0 = [1,2,3,4]) (h1 : ρ 1 = []) (h2 : ρ 2 = []) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v203 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v222 (ρ : Env) (h0 : ρ 0 = [1,2,4]) (h1 : ρ 1 = []) (h2 : ρ 2 = []) : Val tab ρ b51 [0,1,2,3,4] := by
  exact appVal tv (v205 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v223 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = []) (h2 : ρ 2 = []) : Val tab ρ b51 [] := by
  exact appVal tv (v207 ρ h0 h2) (v9 ρ h1) (by decide)
theorem v224 (ρ : Env) (h0 : ρ 0 = []) (h1 : ρ 1 = []) : Val tab ρ b52 [2,3] := by
  apply lamVal (bs := [[],[0,1,2,3,4],[0,1,2,3,4],[]]) tv _ (by decide)
  apply casesN
  · exact v220 (cons (D tab 0) ρ) rfl h0 h1
  · exact v221 (cons (D tab 1) ρ) rfl h0 h1
  · exact v222 (cons (D tab 2) ρ) rfl h0 h1
  · exact v223 (cons (D tab 3) ρ) rfl h0 h1
theorem v225 (ρ : Env) (h0 : ρ 0 = []) : Val tab ρ b53 [3] := by
  apply lamVal (bs := [[2,3],[2,3],[2,3],[2,3]]) tv _ (by decide)
  apply casesN
  · exact v209 (cons (D tab 0) ρ) rfl h0
  · exact v214 (cons (D tab 1) ρ) rfl h0
  · exact v219 (cons (D tab 2) ρ) rfl h0
  · exact v224 (cons (D tab 3) ρ) rfl h0
theorem v226 (ρ : Env)  : Val tab ρ b54 [1,2] := by
  apply lamVal (bs := [[1,2,3],[1,2,3],[3],[3]]) tv _ (by decide)
  apply casesN
  · exact v147 (cons (D tab 0) ρ) rfl
  · exact v173 (cons (D tab 1) ρ) rfl
  · exact v199 (cons (D tab 2) ρ) rfl
  · exact v225 (cons (D tab 3) ρ) rfl
theorem v227 (ρ : Env)  : Val tab ρ b55 [2,3] := by
  apply lamVal (bs := [[1,2],[1,2],[1,2],[1,2]]) tv _ (by decide)
  apply casesN
  · exact v226 (cons (D tab 0) ρ)
  · exact v226 (cons (D tab 1) ρ)
  · exact v226 (cons (D tab 2) ρ)
  · exact v226 (cons (D tab 3) ρ)
theorem v228 (ρ : Env) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b56 [] := by
  exact appVal tv (v1 ρ h1) (v227 ρ) (by decide)
theorem v229 (ρ : Env) (h0 : ρ 0 = [1,2,3]) (h1 : ρ 1 = [1,2,3]) : Val tab ρ b57 [] := by
  exact appVal tv (v228 ρ h1) (v3 ρ h0) (by decide)
end Lib0
end Blc.Floor43
