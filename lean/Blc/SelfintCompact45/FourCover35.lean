import Blc.SelfintCachedCover45
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell210 : Four ⟨2,2,0,2,4,11⟩ :=
  rowProofs%[(no_operator ⟨2,2,0,2,4,11⟩ [0,0] (by decide +kernel))]
theorem fourCell211 : Four ⟨2,2,1,2,4,10⟩ :=
  rowProofs%[(no_operator ⟨2,2,1,2,4,10⟩ [0,1] (by decide +kernel)),(no_operator ⟨2,2,1,2,4,10⟩ [1,0] (by decide +kernel))]
theorem fourCell212 : Four ⟨2,2,2,2,4,9⟩ :=
  rowProofs%[rowProofs%[],(no_operator ⟨2,2,2,2,4,9⟩ [1,1] (by decide +kernel)),(no_operator ⟨2,2,2,2,4,9⟩ [2,0] (by decide +kernel))]
theorem fourCell213 : Four ⟨2,2,3,2,4,8⟩ :=
  rowProofs%[(no_operator ⟨2,2,3,2,4,8⟩ [1,2] (by decide +kernel)),(no_operator ⟨2,2,3,2,4,8⟩ [2,1] (by decide +kernel))]
theorem fourCell214 : Four ⟨2,2,4,2,4,7⟩ :=
  rowProofs%[(no_operator ⟨2,2,4,2,4,7⟩ [2,2] (by decide +kernel))]
theorem fourCell215 : Four ⟨2,2,5,2,4,6⟩ :=
  rowProofs%[]
end Blc.SelfintSingleObject.Compact45
