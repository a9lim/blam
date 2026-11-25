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
tagSlices g22262 on (row false false k256 8 3 5 4 [0,1,0,2]) byParts (fun j => piece 8 j false false k256 8 3 5 4 [0,1,0,2]) byCover (pieces_cover 8 (by decide) false false k256 8 3 5 4 [0,1,0,2]) withHints bank eachTags[[],[6,6,6,3,6,6,6,3],[6,6,6,3],[6,6,6,3,6,6,6,3],[6,6,6,3,6,6,6,3],[6,6,6,3,6,6,6,3],[],[]] except []
tagSlices g22263 on (row false true k271 8 3 5 4 [0,1,0,2]) byParts (fun j => piece 8 j false true k271 8 3 5 4 [0,1,0,2]) byCover (pieces_cover 8 (by decide) false true k271 8 3 5 4 [0,1,0,2]) withHints bank eachTags[[],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[],[]] except []
theorem g22264 : BadRow (row false false k256 8 3 5 4 [0,1,1,1]) := sparse_row false false k256 8 3 5 4 [0,1,1,1] (by decide)
theorem g22265 : BadRow (row false true k271 8 3 5 4 [0,1,1,1]) := sparse_row false true k271 8 3 5 4 [0,1,1,1] (by decide)
sliceRow g22266 on (row false false k256 8 3 5 4 [0,1,2,0]) byParts (fun j => piece 12 j false false k256 8 3 5 4 [0,1,2,0]) byCover (pieces_cover 12 (by decide) false false k256 8 3 5 4 [0,1,2,0]) slices 12 withHints bank tags [6,3] except []
tagSlices g22267 on (row false true k271 8 3 5 4 [0,1,2,0]) byParts (fun j => piece 8 j false true k271 8 3 5 4 [0,1,2,0]) byCover (pieces_cover 8 (by decide) false true k271 8 3 5 4 [0,1,2,0]) withHints bank eachTags[[],[6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1],[],[]] except []
end Blc.SelfintSingleObject.Compact45
