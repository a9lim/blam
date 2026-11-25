import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data17
import Blc.SelfintCompact45.Frames.Data20
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g21339 : BadRow (row false true k242 7 5 4 5 [1,1,1,1,1]) := sparse_row false true k242 7 5 4 5 [1,1,1,1,1] (by decide)
sliceRow g21340 on (row false false k206 7 5 4 5 [1,1,1,2,0]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,1,1,2,0]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,1,1,2,0]) slices 12 withHints bank tags [6] except []
sliceRow g21341 on (row false true k242 7 5 4 5 [1,1,1,2,0]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,1,1,2,0]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,1,1,2,0]) slices 12 withHints bank tags [6] except []
sliceRow g21342 on (row false false k206 7 5 4 5 [1,1,2,0,1]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,1,2,0,1]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,1,2,0,1]) slices 12 withHints bank tags [6] except []
sliceRow g21343 on (row false true k242 7 5 4 5 [1,1,2,0,1]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,1,2,0,1]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,1,2,0,1]) slices 12 withHints bank tags [6] except []
sliceRow g21344 on (row false false k206 7 5 4 5 [1,1,2,1,0]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,1,2,1,0]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,1,2,1,0]) slices 12 withHints bank tags [6] except []
sliceRow g21345 on (row false true k242 7 5 4 5 [1,1,2,1,0]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,1,2,1,0]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,1,2,1,0]) slices 12 withHints bank tags [6] except []
tagSlices g21346 on (row false false k206 7 5 4 5 [1,1,3,0,0]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,1,3,0,0]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,1,3,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g21347 on (row false true k242 7 5 4 5 [1,1,3,0,0]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,1,3,0,0]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,1,3,0,0]) slices 12 withHints bank tags [6] except []
tagSlices g21348 on (row false false k206 7 5 4 5 [1,2,0,0,2]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,2,0,0,2]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,2,0,0,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g21349 on (row false true k242 7 5 4 5 [1,2,0,0,2]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,2,0,0,2]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,2,0,0,2]) slices 12 withHints bank tags [6] except []
sliceRow g21350 on (row false false k206 7 5 4 5 [1,2,0,1,1]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,2,0,1,1]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,2,0,1,1]) slices 12 withHints bank tags [6] except []
sliceRow g21351 on (row false true k242 7 5 4 5 [1,2,0,1,1]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,2,0,1,1]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,2,0,1,1]) slices 12 withHints bank tags [6] except []
tagSlices g21352 on (row false false k206 7 5 4 5 [1,2,0,2,0]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,2,0,2,0]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,2,0,2,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g21353 on (row false true k242 7 5 4 5 [1,2,0,2,0]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,2,0,2,0]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,2,0,2,0]) slices 12 withHints bank tags [6] except []
sliceRow g21354 on (row false false k206 7 5 4 5 [1,2,1,0,1]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,2,1,0,1]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,2,1,0,1]) slices 12 withHints bank tags [6] except []
sliceRow g21355 on (row false true k242 7 5 4 5 [1,2,1,0,1]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,2,1,0,1]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,2,1,0,1]) slices 12 withHints bank tags [6] except []
tagSlices g21356 on (row false false k206 7 5 4 5 [1,2,1,1,0]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,2,1,1,0]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,2,1,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g21357 on (row false true k242 7 5 4 5 [1,2,1,1,0]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,2,1,1,0]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,2,1,1,0]) slices 12 withHints bank tags [6] except []
tagSlices g21358 on (row false false k206 7 5 4 5 [1,2,2,0,0]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,2,2,0,0]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,2,2,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g21359 on (row false true k242 7 5 4 5 [1,2,2,0,0]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,2,2,0,0]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,2,2,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g21360 on (row false false k206 7 5 4 5 [1,3,0,0,1]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,3,0,0,1]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,3,0,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g21361 on (row false true k242 7 5 4 5 [1,3,0,0,1]) byParts (fun j => piece 12 j false true k242 7 5 4 5 [1,3,0,0,1]) byCover (pieces_cover 12 (by decide) false true k242 7 5 4 5 [1,3,0,0,1]) slices 12 withHints bank tags [6] except []
tagSlices g21362 on (row false false k206 7 5 4 5 [1,3,0,1,0]) byParts (fun j => piece 12 j false false k206 7 5 4 5 [1,3,0,1,0]) byCover (pieces_cover 12 (by decide) false false k206 7 5 4 5 [1,3,0,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
