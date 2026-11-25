import Blc.SelfintCompact44.F0425
import Blc.SelfintCompact44.F0426
import Blc.SelfintProfileGrid
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.Compact44
open OperandGrammar SourceRefutations Grammar43
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell160 : Four ⟨2,2,0,2,4,10⟩ :=
  rowProofs%[rowProofs%[]]
theorem fourCell161 : Four ⟨2,2,1,2,4,9⟩ :=
  rowProofs%[rowProofs%[],rowProofs%[]]
theorem fourCell162 : Four ⟨2,2,2,2,4,8⟩ :=
  rowProofs%[rowProofs%[f3467],rowProofs%[f3468],rowProofs%[f3469]]
theorem fourCell163 : Four ⟨2,2,3,2,4,7⟩ :=
  rowProofs%[rowProofs%[f3470,f3471,f3472,f3473],rowProofs%[f3474,f3475,f3476,f3477]]
theorem fourCell164 : Four ⟨2,2,4,2,4,6⟩ :=
  rowProofs%[rowProofs%[f3478,f3479,f3480,f3481,f3482,f3483,f3484,f3485,f3486,f3487]]
theorem fourCell165 : Four ⟨2,2,5,2,4,5⟩ :=
  rowProofs%[]
theorem fourCell166 : Four ⟨2,2,6,2,4,4⟩ :=
  rowProofs%[]
theorem fourCell167 : Four ⟨2,2,7,2,4,3⟩ :=
  rowProofs%[]
end Blc.SelfintSingleObject.Compact44
