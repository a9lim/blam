import Blc.SelfintCachedCover45
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell264 : Four ⟨3,2,1,2,5,4⟩ :=
  rowProofs%[(no_operator ⟨3,2,1,2,5,4⟩ [0,1] (by decide +kernel)),(no_operator ⟨3,2,1,2,5,4⟩ [1,0] (by decide +kernel))]
theorem fourCell265 : Four ⟨3,2,2,2,5,3⟩ :=
  rowProofs%[(no_operator ⟨3,2,2,2,5,3⟩ [0,2] (by decide +kernel)),(no_operator ⟨3,2,2,2,5,3⟩ [1,1] (by decide +kernel)),(no_operator ⟨3,2,2,2,5,3⟩ [2,0] (by decide +kernel))]
theorem fourCell266 : Four ⟨3,3,0,2,4,5⟩ :=
  rowProofs%[(no_operator ⟨3,3,0,2,4,5⟩ [0,0,0] (by decide +kernel))]
theorem fourCell267 : Four ⟨3,3,1,2,4,4⟩ :=
  rowProofs%[(no_operator ⟨3,3,1,2,4,4⟩ [0,0,1] (by decide +kernel)),(no_operator ⟨3,3,1,2,4,4⟩ [0,1,0] (by decide +kernel)),(no_operator ⟨3,3,1,2,4,4⟩ [1,0,0] (by decide +kernel))]
theorem fourCell268 : Four ⟨3,3,2,2,4,3⟩ :=
  rowProofs%[(no_operator ⟨3,3,2,2,4,3⟩ [0,0,2] (by decide +kernel)),(no_operator ⟨3,3,2,2,4,3⟩ [0,1,1] (by decide +kernel)),(no_operator ⟨3,3,2,2,4,3⟩ [0,2,0] (by decide +kernel)),(no_operator ⟨3,3,2,2,4,3⟩ [1,0,1] (by decide +kernel)),(no_operator ⟨3,3,2,2,4,3⟩ [1,1,0] (by decide +kernel)),(no_operator ⟨3,3,2,2,4,3⟩ [2,0,0] (by decide +kernel))]
theorem fourCell269 : Four ⟨3,2,0,3,4,7⟩ :=
  rowProofs%[(no_operator ⟨3,2,0,3,4,7⟩ [0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
