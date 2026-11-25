import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0688
import Blc.SelfintCompact45.F0689
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell270 : Four ⟨3,2,1,3,4,6⟩ :=
  rowProofs%[(no_operator ⟨3,2,1,3,4,6⟩ [0,1] (by decide +kernel)),(no_operator ⟨3,2,1,3,4,6⟩ [1,0] (by decide +kernel))]
theorem fourCell271 : Four ⟨3,2,2,3,4,5⟩ :=
  rowProofs%[(no_operator ⟨3,2,2,3,4,5⟩ [0,2] (by decide +kernel)),(no_operator ⟨3,2,2,3,4,5⟩ [1,1] (by decide +kernel)),(no_operator ⟨3,2,2,3,4,5⟩ [2,0] (by decide +kernel))]
theorem fourCell272 : Four ⟨3,2,3,3,4,4⟩ :=
  rowProofs%[rowProofs%[f8510,f8511,f8512,f8513,f8514,f8515,f8516,f8517,f8518,f8519,f8520,f8521,f8522,f8523,f8524,f8525,f8526,f8527,f8528,f8529,f8530,f8531,f8532,f8533,f8534,f8535,f8536,f8537,f8538,f8539,f8540],(no_operator ⟨3,2,3,3,4,4⟩ [1,2] (by decide +kernel)),(no_operator ⟨3,2,3,3,4,4⟩ [2,1] (by decide +kernel)),(no_operator ⟨3,2,3,3,4,4⟩ [3,0] (by decide +kernel))]
theorem fourCell273 : Four ⟨3,2,4,3,4,3⟩ :=
  rowProofs%[(no_operator ⟨3,2,4,3,4,3⟩ [1,3] (by decide +kernel)),(no_operator ⟨3,2,4,3,4,3⟩ [2,2] (by decide +kernel)),(no_operator ⟨3,2,4,3,4,3⟩ [3,1] (by decide +kernel))]
theorem fourCell274 : Four ⟨3,2,0,3,5,3⟩ :=
  rowProofs%[(no_operator ⟨3,2,0,3,5,3⟩ [0,0] (by decide +kernel))]
theorem fourCell275 : Four ⟨3,3,0,3,4,3⟩ :=
  rowProofs%[(no_operator ⟨3,3,0,3,4,3⟩ [0,0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
