import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g26206 : BadRow (row true false k331 6 3 3 6 [0,1,1,0,0,1]) := sparse_row true false k331 6 3 3 6 [0,1,1,0,0,1] (by decide)
theorem g26207 : BadRow (row true true k343 6 3 3 6 [0,1,1,0,0,1]) := sparse_row true true k343 6 3 3 6 [0,1,1,0,0,1] (by decide)
theorem g26208 : BadRow (row true false k331 6 3 3 6 [0,1,1,0,1,0]) := sparse_row true false k331 6 3 3 6 [0,1,1,0,1,0] (by decide)
theorem g26209 : BadRow (row true true k343 6 3 3 6 [0,1,1,0,1,0]) := sparse_row true true k343 6 3 3 6 [0,1,1,0,1,0] (by decide)
theorem g26210 : BadRow (row true false k331 6 3 3 6 [0,1,1,1,0,0]) := sparse_row true false k331 6 3 3 6 [0,1,1,1,0,0] (by decide)
theorem g26211 : BadRow (row true true k343 6 3 3 6 [0,1,1,1,0,0]) := sparse_row true true k343 6 3 3 6 [0,1,1,1,0,0] (by decide)
tagSlices g26212 on (row true false k331 6 3 3 6 [0,1,2,0,0,0]) byParts (fun j => piece 8 j true false k331 6 3 3 6 [0,1,2,0,0,0]) byCover (pieces_cover 8 (by decide) true false k331 6 3 3 6 [0,1,2,0,0,0]) withHints bank eachTags[[],[],[44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44],[],[],[44,44,44,44,44,44],[],[7,6,6,6,6,44,44,44,44,44,6]] except []
tagSlices g26213 on (row true true k343 6 3 3 6 [0,1,2,0,0,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [0,1,2,0,0,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [0,1,2,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26214 on (row true false k331 6 3 3 6 [0,2,0,0,0,1]) byParts (fun j => piece 8 j true false k331 6 3 3 6 [0,2,0,0,0,1]) byCover (pieces_cover 8 (by decide) true false k331 6 3 3 6 [0,2,0,0,0,1]) withHints bank eachTags[[],[],[44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44],[],[],[],[],[]] except []
tagSlices g26215 on (row true true k343 6 3 3 6 [0,2,0,0,0,1]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [0,2,0,0,0,1]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [0,2,0,0,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26216 on (row true false k331 6 3 3 6 [0,2,0,0,1,0]) byParts (fun j => piece 8 j true false k331 6 3 3 6 [0,2,0,0,1,0]) byCover (pieces_cover 8 (by decide) true false k331 6 3 3 6 [0,2,0,0,1,0]) withHints bank eachTags[[],[],[44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44],[],[],[44,44,44,44,44],[],[6,6,6,6,6,44,44,44,44,44]] except []
tagSlices g26217 on (row true true k343 6 3 3 6 [0,2,0,0,1,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [0,2,0,0,1,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [0,2,0,0,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
