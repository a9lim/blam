import Blc.SelfintCompact44.SiblingSplit
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow g11872 on (Grammar43.fiveRow 7 7 4 false 3 2 3 [1,0,2]) byParts (fun i => SiblingSplit.five 48 i 7 7 4 false 3 2 3 [1,0,2]) byCover (SiblingSplit.five_cover 48 (by decide) 7 7 4 false 3 2 3 [1,0,2]) slices 48 withHints bank tags [3, 60] except []
end Blc.SelfintSingleObject.Compact44
