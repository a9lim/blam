import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22287 on (row false true k271 8 3 5 4 [2,0,0,1]) byParts (fun j => piece 8 j false true k271 8 3 5 4 [2,0,0,1]) byCover (pieces_cover 8 (by decide) false true k271 8 3 5 4 [2,0,0,1]) withHints bank eachTags[[],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[],[],[],[]] except []
sliceRow g22288 on (row false false k256 8 3 5 4 [2,0,1,0]) byParts (fun j => piece 12 j false false k256 8 3 5 4 [2,0,1,0]) byCover (pieces_cover 12 (by decide) false false k256 8 3 5 4 [2,0,1,0]) slices 12 withHints bank tags [6,3] except []
tagSlices g22289 on (row false true k271 8 3 5 4 [2,0,1,0]) byParts (fun j => piece 8 j false true k271 8 3 5 4 [2,0,1,0]) byCover (pieces_cover 8 (by decide) false true k271 8 3 5 4 [2,0,1,0]) withHints bank eachTags[[],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[],[],[],[]] except []
sliceRow g22290 on (row false false k256 8 3 5 4 [2,1,0,0]) byParts (fun j => piece 12 j false false k256 8 3 5 4 [2,1,0,0]) byCover (pieces_cover 12 (by decide) false false k256 8 3 5 4 [2,1,0,0]) slices 12 withHints bank tags [6,3] except []
sliceRow g22291 on (row false true k271 8 3 5 4 [2,1,0,0]) byParts (fun j => piece 12 j false true k271 8 3 5 4 [2,1,0,0]) byCover (pieces_cover 12 (by decide) false true k271 8 3 5 4 [2,1,0,0]) slices 12 withHints bank tags [1,6,13] except []
theorem g22292 : BadRow (row false false k256 8 3 5 4 [3,0,0,0]) := sparse_row false false k256 8 3 5 4 [3,0,0,0] (by decide)
theorem g22293 : BadRow (row false true k271 8 3 5 4 [3,0,0,0]) := sparse_row false true k271 8 3 5 4 [3,0,0,0] (by decide)
theorem g22294 : BadRow (row false false k257 8 3 5 5 [0,0,0,0,3]) := sparse_row false false k257 8 3 5 5 [0,0,0,0,3] (by decide)
end Blc.SelfintSingleObject.Compact45
