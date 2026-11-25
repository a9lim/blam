import Blc.SelfintCachedCover45
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell294 : Four ⟨5,2,0,3,4,3⟩ :=
  rowProofs%[(no_operator ⟨5,2,0,3,4,3⟩ [0,0] (by decide +kernel))]
theorem fourCell295 : Four ⟨6,2,0,2,4,3⟩ :=
  rowProofs%[(no_operator ⟨6,2,0,2,4,3⟩ [0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
