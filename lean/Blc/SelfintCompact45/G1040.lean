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
theorem g26238 : BadRow (row true false k331 6 3 3 6 [1,0,1,0,1,0]) := sparse_row true false k331 6 3 3 6 [1,0,1,0,1,0] (by decide)
theorem g26239 : BadRow (row true true k343 6 3 3 6 [1,0,1,0,1,0]) := sparse_row true true k343 6 3 3 6 [1,0,1,0,1,0] (by decide)
theorem g26240 : BadRow (row true false k331 6 3 3 6 [1,0,1,1,0,0]) := sparse_row true false k331 6 3 3 6 [1,0,1,1,0,0] (by decide)
theorem g26241 : BadRow (row true true k343 6 3 3 6 [1,0,1,1,0,0]) := sparse_row true true k343 6 3 3 6 [1,0,1,1,0,0] (by decide)
tagSlices g26242 on (row true false k331 6 3 3 6 [1,0,2,0,0,0]) byParts (fun j => piece 12 j true false k331 6 3 3 6 [1,0,2,0,0,0]) byCover (pieces_cover 12 (by decide) true false k331 6 3 3 6 [1,0,2,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26243 on (row true true k343 6 3 3 6 [1,0,2,0,0,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [1,0,2,0,0,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [1,0,2,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g26244 : BadRow (row true false k331 6 3 3 6 [1,1,0,0,0,1]) := sparse_row true false k331 6 3 3 6 [1,1,0,0,0,1] (by decide)
theorem g26245 : BadRow (row true true k343 6 3 3 6 [1,1,0,0,0,1]) := sparse_row true true k343 6 3 3 6 [1,1,0,0,0,1] (by decide)
theorem g26246 : BadRow (row true false k331 6 3 3 6 [1,1,0,0,1,0]) := sparse_row true false k331 6 3 3 6 [1,1,0,0,1,0] (by decide)
theorem g26247 : BadRow (row true true k343 6 3 3 6 [1,1,0,0,1,0]) := sparse_row true true k343 6 3 3 6 [1,1,0,0,1,0] (by decide)
theorem g26248 : BadRow (row true false k331 6 3 3 6 [1,1,0,1,0,0]) := sparse_row true false k331 6 3 3 6 [1,1,0,1,0,0] (by decide)
theorem g26249 : BadRow (row true true k343 6 3 3 6 [1,1,0,1,0,0]) := sparse_row true true k343 6 3 3 6 [1,1,0,1,0,0] (by decide)
theorem g26250 : BadRow (row true false k331 6 3 3 6 [1,1,1,0,0,0]) := sparse_row true false k331 6 3 3 6 [1,1,1,0,0,0] (by decide)
theorem g26251 : BadRow (row true true k343 6 3 3 6 [1,1,1,0,0,0]) := sparse_row true true k343 6 3 3 6 [1,1,1,0,0,0] (by decide)
tagSlices g26252 on (row true false k331 6 3 3 6 [1,2,0,0,0,0]) byParts (fun j => piece 12 j true false k331 6 3 3 6 [1,2,0,0,0,0]) byCover (pieces_cover 12 (by decide) true false k331 6 3 3 6 [1,2,0,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26253 on (row true true k343 6 3 3 6 [1,2,0,0,0,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [1,2,0,0,0,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [1,2,0,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26254 on (row true false k331 6 3 3 6 [2,0,0,0,0,1]) byParts (fun j => piece 12 j true false k331 6 3 3 6 [2,0,0,0,0,1]) byCover (pieces_cover 12 (by decide) true false k331 6 3 3 6 [2,0,0,0,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26255 on (row true true k343 6 3 3 6 [2,0,0,0,0,1]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [2,0,0,0,0,1]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [2,0,0,0,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26256 on (row true false k331 6 3 3 6 [2,0,0,0,1,0]) byParts (fun j => piece 12 j true false k331 6 3 3 6 [2,0,0,0,1,0]) byCover (pieces_cover 12 (by decide) true false k331 6 3 3 6 [2,0,0,0,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26257 on (row true true k343 6 3 3 6 [2,0,0,0,1,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [2,0,0,0,1,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [2,0,0,0,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26258 on (row true false k331 6 3 3 6 [2,0,0,1,0,0]) byParts (fun j => piece 12 j true false k331 6 3 3 6 [2,0,0,1,0,0]) byCover (pieces_cover 12 (by decide) true false k331 6 3 3 6 [2,0,0,1,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26259 on (row true true k343 6 3 3 6 [2,0,0,1,0,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [2,0,0,1,0,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [2,0,0,1,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26260 on (row true false k331 6 3 3 6 [2,0,1,0,0,0]) byParts (fun j => piece 12 j true false k331 6 3 3 6 [2,0,1,0,0,0]) byCover (pieces_cover 12 (by decide) true false k331 6 3 3 6 [2,0,1,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g26261 on (row true true k343 6 3 3 6 [2,0,1,0,0,0]) byParts (fun j => piece 12 j true true k343 6 3 3 6 [2,0,1,0,0,0]) byCover (pieces_cover 12 (by decide) true true k343 6 3 3 6 [2,0,1,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
