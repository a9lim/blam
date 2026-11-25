import Blc.SelfintCachedCover45
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell288 : Four ⟨4,2,1,3,4,4⟩ :=
  rowProofs%[(no_operator ⟨4,2,1,3,4,4⟩ [0,1] (by decide +kernel)),(no_operator ⟨4,2,1,3,4,4⟩ [1,0] (by decide +kernel))]
theorem fourCell289 : Four ⟨4,2,2,3,4,3⟩ :=
  rowProofs%[(no_operator ⟨4,2,2,3,4,3⟩ [0,2] (by decide +kernel)),(no_operator ⟨4,2,2,3,4,3⟩ [1,1] (by decide +kernel)),(no_operator ⟨4,2,2,3,4,3⟩ [2,0] (by decide +kernel))]
theorem fourCell290 : Four ⟨4,2,0,4,4,3⟩ :=
  rowProofs%[(no_operator ⟨4,2,0,4,4,3⟩ [0,0] (by decide +kernel))]
theorem fourCell291 : Four ⟨5,2,0,2,4,5⟩ :=
  rowProofs%[(no_operator ⟨5,2,0,2,4,5⟩ [0,0] (by decide +kernel))]
theorem fourCell292 : Four ⟨5,2,1,2,4,4⟩ :=
  rowProofs%[(no_operator ⟨5,2,1,2,4,4⟩ [0,1] (by decide +kernel)),(no_operator ⟨5,2,1,2,4,4⟩ [1,0] (by decide +kernel))]
theorem fourCell293 : Four ⟨5,2,2,2,4,3⟩ :=
  rowProofs%[(no_operator ⟨5,2,2,2,4,3⟩ [0,2] (by decide +kernel)),(no_operator ⟨5,2,2,2,4,3⟩ [1,1] (by decide +kernel)),(no_operator ⟨5,2,2,2,4,3⟩ [2,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
