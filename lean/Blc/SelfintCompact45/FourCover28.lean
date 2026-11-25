import Blc.SelfintCachedCover45
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell168 : Four ⟨1,2,4,3,4,7⟩ :=
  rowProofs%[]
theorem fourCell169 : Four ⟨1,2,5,3,4,6⟩ :=
  rowProofs%[]
theorem fourCell170 : Four ⟨1,2,6,3,4,5⟩ :=
  rowProofs%[]
theorem fourCell171 : Four ⟨1,2,7,3,4,4⟩ :=
  rowProofs%[]
theorem fourCell172 : Four ⟨1,2,8,3,4,3⟩ :=
  rowProofs%[]
theorem fourCell173 : Four ⟨1,2,0,3,5,7⟩ :=
  rowProofs%[(no_operator ⟨1,2,0,3,5,7⟩ [0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
