import Blc.SelfintCachedCover45
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell276 : Four ⟨3,2,0,4,4,5⟩ :=
  rowProofs%[(no_operator ⟨3,2,0,4,4,5⟩ [0,0] (by decide +kernel))]
theorem fourCell277 : Four ⟨3,2,1,4,4,4⟩ :=
  rowProofs%[(no_operator ⟨3,2,1,4,4,4⟩ [0,1] (by decide +kernel)),(no_operator ⟨3,2,1,4,4,4⟩ [1,0] (by decide +kernel))]
theorem fourCell278 : Four ⟨3,2,2,4,4,3⟩ :=
  rowProofs%[(no_operator ⟨3,2,2,4,4,3⟩ [0,2] (by decide +kernel)),(no_operator ⟨3,2,2,4,4,3⟩ [1,1] (by decide +kernel)),(no_operator ⟨3,2,2,4,4,3⟩ [2,0] (by decide +kernel))]
theorem fourCell279 : Four ⟨3,2,0,5,4,3⟩ :=
  rowProofs%[(no_operator ⟨3,2,0,5,4,3⟩ [0,0] (by decide +kernel))]
theorem fourCell280 : Four ⟨4,2,0,2,4,7⟩ :=
  rowProofs%[(no_operator ⟨4,2,0,2,4,7⟩ [0,0] (by decide +kernel))]
theorem fourCell281 : Four ⟨4,2,1,2,4,6⟩ :=
  rowProofs%[(no_operator ⟨4,2,1,2,4,6⟩ [0,1] (by decide +kernel)),(no_operator ⟨4,2,1,2,4,6⟩ [1,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
