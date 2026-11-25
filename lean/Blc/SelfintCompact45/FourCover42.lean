import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0687
import Blc.SelfintCompact45.F0688
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell252 : Four ⟨2,2,0,5,4,5⟩ :=
  rowProofs%[(no_operator ⟨2,2,0,5,4,5⟩ [0,0] (by decide +kernel))]
theorem fourCell253 : Four ⟨2,2,1,5,4,4⟩ :=
  rowProofs%[(no_operator ⟨2,2,1,5,4,4⟩ [0,1] (by decide +kernel)),(no_operator ⟨2,2,1,5,4,4⟩ [1,0] (by decide +kernel))]
theorem fourCell254 : Four ⟨2,2,2,5,4,3⟩ :=
  rowProofs%[rowProofs%[f7626,f7627,f7628,f7629,f7630,f7631,f7632,f7633,f7634,f7635,f7636,f7637,f7638,f7639,f7640,f7641,f7642,f7643,f7644,f7645],(no_operator ⟨2,2,2,5,4,3⟩ [1,1] (by decide +kernel)),(no_operator ⟨2,2,2,5,4,3⟩ [2,0] (by decide +kernel))]
theorem fourCell255 : Four ⟨2,2,0,6,4,3⟩ :=
  rowProofs%[(no_operator ⟨2,2,0,6,4,3⟩ [0,0] (by decide +kernel))]
theorem fourCell256 : Four ⟨3,2,0,2,4,9⟩ :=
  rowProofs%[(no_operator ⟨3,2,0,2,4,9⟩ [0,0] (by decide +kernel))]
theorem fourCell257 : Four ⟨3,2,1,2,4,8⟩ :=
  rowProofs%[(no_operator ⟨3,2,1,2,4,8⟩ [0,1] (by decide +kernel)),(no_operator ⟨3,2,1,2,4,8⟩ [1,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
