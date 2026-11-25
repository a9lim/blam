import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26169 on (row true true k343 6 3 3 6 [0,0,0,2,0,1]) byParts (fun j => piece 8 j true true k343 6 3 3 6 [0,0,0,2,0,1]) byCover (pieces_cover 8 (by decide) true true k343 6 3 3 6 [0,0,0,2,0,1]) withHints bank eachTags[[],[],[],[],[11,11,1,1,12,12,1,1,12,12,14,14,14,14,14,14,14,14,14,14,1,1,1,1],[],[],[]] except []
tagSlices g26170 on (row true false k331 6 3 3 6 [0,0,0,2,1,0]) byParts (fun j => piece 8 j true false k331 6 3 3 6 [0,0,0,2,1,0]) byCover (pieces_cover 8 (by decide) true false k331 6 3 3 6 [0,0,0,2,1,0]) withHints bank eachTags[[],[],[44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,6,6,6,6,44,44,6,6,6,44,44,44,6,6,6,6,6,44,44,6,6,6,6],[],[44,44,44,44,44,44,44,44,44,44],[44,44,44,44,44,44],[],[6,6,6,6,44,6,6,6,44,44]] except []
sliceRow g26171 on (row true true k343 6 3 3 6 [0,0,0,2,1,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [0,0,0,2,1,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [0,0,0,2,1,0]) slices 12 withHints bank tags [14,1,12] except []
tagSlices g26172 on (row true false k331 6 3 3 6 [0,0,0,3,0,0]) byParts (fun j => piece 12 j true false k331 6 3 3 6 [0,0,0,3,0,0]) byCover (pieces_cover 12 (by decide) true false k331 6 3 3 6 [0,0,0,3,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26173 on (row true true k343 6 3 3 6 [0,0,0,3,0,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [0,0,0,3,0,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [0,0,0,3,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26174 on (row true false k331 6 3 3 6 [0,0,1,0,0,2]) byParts (fun j => piece 8 j true false k331 6 3 3 6 [0,0,1,0,0,2]) byCover (pieces_cover 8 (by decide) true false k331 6 3 3 6 [0,0,1,0,0,2]) withHints bank eachTags[[],[],[44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,6,6,6,6,6,44,44,44,44,44,6,6,6,6,6,44,44,44,44,44],[],[44,44,44,44,44],[],[],[]] except []
sliceRow g26175 on (row true true k343 6 3 3 6 [0,0,1,0,0,2]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [0,0,1,0,0,2]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [0,0,1,0,0,2]) slices 12 withHints bank tags [14,1,11,12] except []
certRow g26176 on (row true false k331 6 3 3 6 [0,0,1,0,1,1]) using bank tags []
certRow g26177 on (row true true k343 6 3 3 6 [0,0,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
