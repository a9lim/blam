import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0688
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell258 : Four ⟨3,2,2,2,4,7⟩ :=
  rowProofs%[(no_operator ⟨3,2,2,2,4,7⟩ [0,2] (by decide +kernel)),(no_operator ⟨3,2,2,2,4,7⟩ [1,1] (by decide +kernel)),(no_operator ⟨3,2,2,2,4,7⟩ [2,0] (by decide +kernel))]
theorem fourCell259 : Four ⟨3,2,3,2,4,6⟩ :=
  rowProofs%[rowProofs%[f7720,f7721,f7722,f7723,f7724,f7725,f7726,f7727,f7728,f7729],(no_operator ⟨3,2,3,2,4,6⟩ [1,2] (by decide +kernel)),(no_operator ⟨3,2,3,2,4,6⟩ [2,1] (by decide +kernel)),(no_operator ⟨3,2,3,2,4,6⟩ [3,0] (by decide +kernel))]
theorem fourCell260 : Four ⟨3,2,4,2,4,5⟩ :=
  rowProofs%[(no_operator ⟨3,2,4,2,4,5⟩ [1,3] (by decide +kernel)),(no_operator ⟨3,2,4,2,4,5⟩ [2,2] (by decide +kernel)),(no_operator ⟨3,2,4,2,4,5⟩ [3,1] (by decide +kernel))]
theorem fourCell261 : Four ⟨3,2,5,2,4,4⟩ :=
  rowProofs%[(no_operator ⟨3,2,5,2,4,4⟩ [2,3] (by decide +kernel)),(no_operator ⟨3,2,5,2,4,4⟩ [3,2] (by decide +kernel))]
theorem fourCell262 : Four ⟨3,2,6,2,4,3⟩ :=
  rowProofs%[(no_operator ⟨3,2,6,2,4,3⟩ [3,3] (by decide +kernel))]
theorem fourCell263 : Four ⟨3,2,0,2,5,5⟩ :=
  rowProofs%[(no_operator ⟨3,2,0,2,5,5⟩ [0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
