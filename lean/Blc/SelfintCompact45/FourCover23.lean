import Blc.SelfintCachedCover45
import Blc.SelfintCompact45.F0586
import Blc.SelfintRowCoverNotation
import Blc.SelfintSize45Profiles
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar Grammar43 Fast45
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell138 : Four ⟨1,2,8,2,4,5⟩ :=
  rowProofs%[]
theorem fourCell139 : Four ⟨1,2,9,2,4,4⟩ :=
  rowProofs%[]
theorem fourCell140 : Four ⟨1,2,10,2,4,3⟩ :=
  rowProofs%[]
theorem fourCell141 : Four ⟨1,2,0,2,5,9⟩ :=
  rowProofs%[(no_operator ⟨1,2,0,2,5,9⟩ [0,0] (by decide +kernel))]
theorem fourCell142 : Four ⟨1,2,1,2,5,8⟩ :=
  rowProofs%[rowProofs%[f1917,f1918,f1919,f1920,f1921,f1922,f1923,f1924,f1925,f1926,f1927,f1928,f1929,f1930,f1931],(no_operator ⟨1,2,1,2,5,8⟩ [1,0] (by decide +kernel))]
theorem fourCell143 : Four ⟨1,2,2,2,5,7⟩ :=
  rowProofs%[(no_operator ⟨1,2,2,2,5,7⟩ [1,1] (by decide +kernel))]
end Blc.SelfintSingleObject.Compact45
