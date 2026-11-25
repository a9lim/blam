import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0675
import Blc.SelfintCompact45.F0676
import Blc.SelfintCompact45.F0677
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell222 : Four ⟨2,2,3,2,5,4⟩ :=
  rowProofs%[(no_operator ⟨2,2,3,2,5,4⟩ [1,2] (by decide +kernel)),(no_operator ⟨2,2,3,2,5,4⟩ [2,1] (by decide +kernel))]
theorem fourCell223 : Four ⟨2,2,4,2,5,3⟩ :=
  rowProofs%[(no_operator ⟨2,2,4,2,5,3⟩ [2,2] (by decide +kernel))]
theorem fourCell224 : Four ⟨2,2,0,2,6,3⟩ :=
  rowProofs%[(no_operator ⟨2,2,0,2,6,3⟩ [0,0] (by decide +kernel))]
theorem fourCell225 : Four ⟨2,3,0,2,4,7⟩ :=
  rowProofs%[(no_operator ⟨2,3,0,2,4,7⟩ [0,0,0] (by decide +kernel))]
theorem fourCell226 : Four ⟨2,3,1,2,4,6⟩ :=
  rowProofs%[(no_operator ⟨2,3,1,2,4,6⟩ [0,0,1] (by decide +kernel)),(no_operator ⟨2,3,1,2,4,6⟩ [0,1,0] (by decide +kernel)),(no_operator ⟨2,3,1,2,4,6⟩ [1,0,0] (by decide +kernel))]
theorem fourCell227 : Four ⟨2,3,2,2,4,5⟩ :=
  rowProofs%[rowProofs%[f5693,f5694,f5695,f5696,f5697,f5698,f5699,f5700,f5701,f5702,f5703,f5704,f5705,f5706,f5707,f5708],rowProofs%[f5709,f5710,f5711,f5712,f5713,f5714,f5715,f5716,f5717,f5718,f5719,f5720,f5721,f5722,f5723,f5724],rowProofs%[f5725,f5726,f5727,f5728,f5729,f5730,f5731,f5732,f5733,f5734,f5735,f5736,f5737,f5738,f5739,f5740],(no_operator ⟨2,3,2,2,4,5⟩ [1,0,1] (by decide +kernel)),(no_operator ⟨2,3,2,2,4,5⟩ [1,1,0] (by decide +kernel)),(no_operator ⟨2,3,2,2,4,5⟩ [2,0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
