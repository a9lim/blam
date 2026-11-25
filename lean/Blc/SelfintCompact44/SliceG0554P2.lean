import Blc.SelfintCompact44.SiblingSplit
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g11879 : BadRow (Grammar43.fiveRow 7 7 4 true 3 2 3 [2,0,1]) := SiblingSplit.public_linear 7 7 4 3 2 3 [2,0,1] (by decide +kernel)
end Blc.SelfintSingleObject.Compact44
