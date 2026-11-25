import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0685
import Blc.SelfintCompact45.F0686
import Blc.SelfintCompact45.F0687
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell246 : Four ⟨2,2,1,4,4,6⟩ :=
  rowProofs%[(no_operator ⟨2,2,1,4,4,6⟩ [0,1] (by decide +kernel)),(no_operator ⟨2,2,1,4,4,6⟩ [1,0] (by decide +kernel))]
theorem fourCell247 : Four ⟨2,2,2,4,4,5⟩ :=
  rowProofs%[rowProofs%[f7199,f7200,f7201,f7202,f7203,f7204,f7205,f7206,f7207,f7208,f7209,f7210,f7211,f7212,f7213,f7214,f7215,f7216,f7217,f7218,f7219,f7220,f7221,f7222,f7223,f7224,f7225,f7226,f7227,f7228,f7229,f7230,f7231,f7232,f7233,f7234,f7235,f7236,f7237,f7238,f7239,f7240,f7241,f7242,f7243,f7244,f7245,f7246,f7247,f7248,f7249,f7250],(no_operator ⟨2,2,2,4,4,5⟩ [1,1] (by decide +kernel)),(no_operator ⟨2,2,2,4,4,5⟩ [2,0] (by decide +kernel))]
theorem fourCell248 : Four ⟨2,2,3,4,4,4⟩ :=
  rowProofs%[(no_operator ⟨2,2,3,4,4,4⟩ [1,2] (by decide +kernel)),(no_operator ⟨2,2,3,4,4,4⟩ [2,1] (by decide +kernel))]
theorem fourCell249 : Four ⟨2,2,4,4,4,3⟩ :=
  rowProofs%[(no_operator ⟨2,2,4,4,4,3⟩ [2,2] (by decide +kernel))]
theorem fourCell250 : Four ⟨2,2,0,4,5,3⟩ :=
  rowProofs%[(no_operator ⟨2,2,0,4,5,3⟩ [0,0] (by decide +kernel))]
theorem fourCell251 : Four ⟨2,3,0,4,4,3⟩ :=
  rowProofs%[(no_operator ⟨2,3,0,4,4,3⟩ [0,0,0] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
