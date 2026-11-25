import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0673
import Blc.SelfintCompact45.F0674
import Blc.SelfintCompact45.F0675
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell216 : Four ⟨2,2,6,2,4,5⟩ :=
  rowProofs%[]
theorem fourCell217 : Four ⟨2,2,7,2,4,4⟩ :=
  rowProofs%[]
theorem fourCell218 : Four ⟨2,2,8,2,4,3⟩ :=
  rowProofs%[]
theorem fourCell219 : Four ⟨2,2,0,2,5,7⟩ :=
  rowProofs%[(no_operator ⟨2,2,0,2,5,7⟩ [0,0] (by decide +kernel))]
theorem fourCell220 : Four ⟨2,2,1,2,5,6⟩ :=
  rowProofs%[(no_operator ⟨2,2,1,2,5,6⟩ [0,1] (by decide +kernel)),(no_operator ⟨2,2,1,2,5,6⟩ [1,0] (by decide +kernel))]
theorem fourCell221 : Four ⟨2,2,2,2,5,5⟩ :=
  rowProofs%[rowProofs%[f5336,f5337,f5338,f5339,f5340,f5341,f5342,f5343,f5344,f5345,f5346,f5347,f5348,f5349,f5350,f5351,f5352,f5353,f5354,f5355,f5356,f5357,f5358,f5359,f5360,f5361,f5362,f5363,f5364,f5365,f5366,f5367,f5368,f5369,f5370,f5371,f5372,f5373,f5374,f5375,f5376,f5377,f5378,f5379,f5380,f5381,f5382,f5383,f5384,f5385,f5386],(no_operator ⟨2,2,2,2,5,5⟩ [1,1] (by decide +kernel)),(no_operator ⟨2,2,2,2,5,5⟩ [2,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
