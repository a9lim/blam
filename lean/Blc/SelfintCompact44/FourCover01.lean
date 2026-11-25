import Blc.SelfintCompact44.F0000
import Blc.SelfintProfileGrid
import Blc.SelfintRowCoverNotation
namespace Blc.SelfintSingleObject.Compact44
open OperandGrammar SourceRefutations Grammar43
set_option maxRecDepth 32000
set_option Elab.async false
theorem fourCell8 : Four ⟨0,2,8,2,4,6⟩ :=
  rowProofs%[]
theorem fourCell9 : Four ⟨0,2,9,2,4,5⟩ :=
  rowProofs%[]
theorem fourCell10 : Four ⟨0,2,10,2,4,4⟩ :=
  rowProofs%[]
theorem fourCell11 : Four ⟨0,2,11,2,4,3⟩ :=
  rowProofs%[]
theorem fourCell12 : Four ⟨0,2,0,2,5,10⟩ :=
  rowProofs%[rowProofs%[f0]]
theorem fourCell13 : Four ⟨0,2,1,2,5,9⟩ :=
  rowProofs%[]
theorem fourCell14 : Four ⟨0,2,2,2,5,8⟩ :=
  rowProofs%[]
theorem fourCell15 : Four ⟨0,2,3,2,5,7⟩ :=
  rowProofs%[]
end Blc.SelfintSingleObject.Compact44
