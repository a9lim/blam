import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0681
import Blc.SelfintCompact45.F0682
import Blc.SelfintCompact45.F0683
import Blc.SelfintCompact45.F0684
import Blc.SelfintCompact45.F0685
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell240 : Four ⟨2,2,1,3,5,4⟩ :=
  rowProofs%[(no_operator ⟨2,2,1,3,5,4⟩ [0,1] (by decide +kernel)),(no_operator ⟨2,2,1,3,5,4⟩ [1,0] (by decide +kernel))]
theorem fourCell241 : Four ⟨2,2,2,3,5,3⟩ :=
  rowProofs%[rowProofs%[f6625,f6626,f6627,f6628,f6629,f6630,f6631,f6632,f6633,f6634,f6635,f6636,f6637,f6638,f6639,f6640,f6641,f6642,f6643,f6644,f6645,f6646,f6647,f6648,f6649,f6650,f6651,f6652,f6653,f6654,f6655,f6656,f6657,f6658,f6659],(no_operator ⟨2,2,2,3,5,3⟩ [1,1] (by decide +kernel)),(no_operator ⟨2,2,2,3,5,3⟩ [2,0] (by decide +kernel))]
theorem fourCell242 : Four ⟨2,3,0,3,4,5⟩ :=
  rowProofs%[(no_operator ⟨2,3,0,3,4,5⟩ [0,0,0] (by decide +kernel))]
theorem fourCell243 : Four ⟨2,3,1,3,4,4⟩ :=
  rowProofs%[(no_operator ⟨2,3,1,3,4,4⟩ [0,0,1] (by decide +kernel)),(no_operator ⟨2,3,1,3,4,4⟩ [0,1,0] (by decide +kernel)),(no_operator ⟨2,3,1,3,4,4⟩ [1,0,0] (by decide +kernel))]
theorem fourCell244 : Four ⟨2,3,2,3,4,3⟩ :=
  rowProofs%[rowProofs%[f6863,f6864,f6865,f6866,f6867,f6868,f6869,f6870,f6871,f6872,f6873,f6874,f6875,f6876,f6877,f6878,f6879,f6880,f6881,f6882],rowProofs%[f6883,f6884,f6885,f6886,f6887,f6888,f6889,f6890,f6891,f6892,f6893,f6894,f6895,f6896,f6897,f6898,f6899,f6900,f6901,f6902],rowProofs%[f6903,f6904,f6905,f6906,f6907,f6908,f6909,f6910,f6911,f6912,f6913,f6914,f6915,f6916,f6917,f6918,f6919,f6920,f6921,f6922],(no_operator ⟨2,3,2,3,4,3⟩ [1,0,1] (by decide +kernel)),(no_operator ⟨2,3,2,3,4,3⟩ [1,1,0] (by decide +kernel)),(no_operator ⟨2,3,2,3,4,3⟩ [2,0,0] (by decide +kernel))]
theorem fourCell245 : Four ⟨2,2,0,4,4,7⟩ :=
  rowProofs%[(no_operator ⟨2,2,0,4,4,7⟩ [0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
