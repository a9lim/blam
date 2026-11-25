import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow g11854 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [5,0,0,0,1]) byParts (fun i => Split43.five 12 i 7 6 6 false 6 4 5 [5,0,0,0,1]) byCover (Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [5,0,0,0,1]) slices 12 withHints bank tags [] except []
end Blc.SelfintSingleObject.Compact44
