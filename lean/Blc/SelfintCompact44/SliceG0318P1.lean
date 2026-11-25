import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow g7621 on (Grammar43.fiveRow 7 6 6 true 3 2 3 [2,1,0]) byParts (fun i => ShellSplit.five 12 i 7 6 6 true 3 2 3 [2,1,0]) byCover (ShellSplit.five_cover 12 (by decide) 7 6 6 true 3 2 3 [2,1,0]) slices 12 withHints bank tags [] except []
end Blc.SelfintSingleObject.Compact44
