import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0689
import Blc.SelfintCompact45.F0690
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell282 : Four ⟨4,2,2,2,4,5⟩ :=
  rowProofs%[(no_operator ⟨4,2,2,2,4,5⟩ [0,2] (by decide +kernel)),(no_operator ⟨4,2,2,2,4,5⟩ [1,1] (by decide +kernel)),(no_operator ⟨4,2,2,2,4,5⟩ [2,0] (by decide +kernel))]
theorem fourCell283 : Four ⟨4,2,3,2,4,4⟩ :=
  rowProofs%[(no_operator ⟨4,2,3,2,4,4⟩ [0,3] (by decide +kernel)),(no_operator ⟨4,2,3,2,4,4⟩ [1,2] (by decide +kernel)),(no_operator ⟨4,2,3,2,4,4⟩ [2,1] (by decide +kernel)),(no_operator ⟨4,2,3,2,4,4⟩ [3,0] (by decide +kernel))]
theorem fourCell284 : Four ⟨4,2,4,2,4,3⟩ :=
  rowProofs%[rowProofs%[f9099,f9100,f9101,f9102,f9103,f9104,f9105,f9106,f9107,f9108,f9109,f9110,f9111,f9112,f9113,f9114],(no_operator ⟨4,2,4,2,4,3⟩ [1,3] (by decide +kernel)),(no_operator ⟨4,2,4,2,4,3⟩ [2,2] (by decide +kernel)),(no_operator ⟨4,2,4,2,4,3⟩ [3,1] (by decide +kernel)),(no_operator ⟨4,2,4,2,4,3⟩ [4,0] (by decide +kernel))]
theorem fourCell285 : Four ⟨4,2,0,2,5,3⟩ :=
  rowProofs%[(no_operator ⟨4,2,0,2,5,3⟩ [0,0] (by decide +kernel))]
theorem fourCell286 : Four ⟨4,3,0,2,4,3⟩ :=
  rowProofs%[(no_operator ⟨4,3,0,2,4,3⟩ [0,0,0] (by decide +kernel))]
theorem fourCell287 : Four ⟨4,2,0,3,4,5⟩ :=
  rowProofs%[(no_operator ⟨4,2,0,3,4,5⟩ [0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
