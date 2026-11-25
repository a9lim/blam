import Blc.SelfintCachedCover45
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell132 : Four ⟨1,2,2,2,4,11⟩ :=
  rowProofs%[(no_operator ⟨1,2,2,2,4,11⟩ [1,1] (by decide +kernel))]
theorem fourCell133 : Four ⟨1,2,3,2,4,10⟩ :=
  rowProofs%[]
theorem fourCell134 : Four ⟨1,2,4,2,4,9⟩ :=
  rowProofs%[]
theorem fourCell135 : Four ⟨1,2,5,2,4,8⟩ :=
  rowProofs%[]
theorem fourCell136 : Four ⟨1,2,6,2,4,7⟩ :=
  rowProofs%[]
theorem fourCell137 : Four ⟨1,2,7,2,4,6⟩ :=
  rowProofs%[]
end Blc.SelfintSingleObject.Compact45
