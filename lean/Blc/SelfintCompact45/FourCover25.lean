import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0605
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell150 : Four ⟨1,2,2,2,6,3⟩ :=
  rowProofs%[(no_operator ⟨1,2,2,2,6,3⟩ [1,1] (by decide +kernel))]
theorem fourCell151 : Four ⟨1,3,0,2,4,9⟩ :=
  rowProofs%[(no_operator ⟨1,3,0,2,4,9⟩ [0,0,0] (by decide +kernel))]
theorem fourCell152 : Four ⟨1,3,1,2,4,8⟩ :=
  rowProofs%[rowProofs%[f2333],rowProofs%[f2334],(no_operator ⟨1,3,1,2,4,8⟩ [1,0,0] (by decide +kernel))]
theorem fourCell153 : Four ⟨1,3,2,2,4,7⟩ :=
  rowProofs%[rowProofs%[f2336,f2337,f2338,f2339],(no_operator ⟨1,3,2,2,4,7⟩ [1,0,1] (by decide +kernel)),(no_operator ⟨1,3,2,2,4,7⟩ [1,1,0] (by decide +kernel))]
theorem fourCell154 : Four ⟨1,3,3,2,4,6⟩ :=
  rowProofs%[(no_operator ⟨1,3,3,2,4,6⟩ [1,1,1] (by decide +kernel))]
theorem fourCell155 : Four ⟨1,3,4,2,4,5⟩ :=
  rowProofs%[]
end Blc.SelfintSingleObject.Compact45
