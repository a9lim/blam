import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0657
import Blc.SelfintCompact45.F0658
import Blc.SelfintCompact45.F0659
import Blc.SelfintCompact45.F0660
import Blc.SelfintCompact45.F0661
import Blc.SelfintCompact45.F0662
import Blc.SelfintCompact45.F0663
import Blc.SelfintCompact45.F0664
import Blc.SelfintCompact45.F0665
import Blc.SelfintCompact45.F0666
import Blc.SelfintCompact45.F0667
import Blc.SelfintCompact45.F0668
import Blc.SelfintCompact45.F0669
import Blc.SelfintCompact45.F0670
import Blc.SelfintCompact45.F0671
import Blc.SelfintCompact45.F0672
import Blc.SelfintCompact45.F0673
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell204 : Four ⟨1,2,0,5,5,3⟩ :=
  rowProofs%[(no_operator ⟨1,2,0,5,5,3⟩ [0,0] (by decide +kernel))]
theorem fourCell205 : Four ⟨1,3,0,5,4,3⟩ :=
  rowProofs%[(no_operator ⟨1,3,0,5,4,3⟩ [0,0,0] (by decide +kernel))]
theorem fourCell206 : Four ⟨1,2,0,6,4,5⟩ :=
  rowProofs%[(no_operator ⟨1,2,0,6,4,5⟩ [0,0] (by decide +kernel))]
theorem fourCell207 : Four ⟨1,2,1,6,4,4⟩ :=
  rowProofs%[rowProofs%[f5100,f5101,f5102,f5103,f5104,f5105,f5106,f5107,f5108,f5109,f5110,f5111,f5112,f5113,f5114,f5115,f5116,f5117,f5118,f5119,f5120,f5121,f5122,f5123,f5124,f5125,f5126,f5127,f5128,f5129,f5130,f5131,f5132,f5133,f5134],(no_operator ⟨1,2,1,6,4,4⟩ [1,0] (by decide +kernel))]
theorem fourCell208 : Four ⟨1,2,2,6,4,3⟩ :=
  rowProofs%[(no_operator ⟨1,2,2,6,4,3⟩ [1,1] (by decide +kernel))]
theorem fourCell209 : Four ⟨1,2,0,7,4,3⟩ :=
  rowProofs%[(no_operator ⟨1,2,0,7,4,3⟩ [0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
