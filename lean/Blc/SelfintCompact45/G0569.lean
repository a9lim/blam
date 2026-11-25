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
certRow g22244 on (row false false k255 8 3 5 3 [1,1,1]) using bank tags []
certRow g22246 on (row false false k255 8 3 5 3 [1,2,0]) using bank tags [61,2,8]
certRow g22248 on (row false false k255 8 3 5 3 [2,0,1]) using bank tags [61,2,8,61,2,8]
certRow g22250 on (row false false k255 8 3 5 3 [2,1,0]) using bank tags [61,2,8]
certRow g22252 on (row false false k255 8 3 5 3 [3,0,0]) using bank tags []
tagSlices g22254 on (row false false k256 8 3 5 4 [0,0,0,3]) byParts (fun j => piece 12 j false false k256 8 3 5 4 [0,0,0,3]) byCover (pieces_cover 12 (by decide) false false k256 8 3 5 4 [0,0,0,3]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g22255 on (row false true k271 8 3 5 4 [0,0,0,3]) byParts (fun j => piece 12 j false true k271 8 3 5 4 [0,0,0,3]) byCover (pieces_cover 12 (by decide) false true k271 8 3 5 4 [0,0,0,3]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g22256 on (row false false k256 8 3 5 4 [0,0,1,2]) byParts (fun j => piece 12 j false false k256 8 3 5 4 [0,0,1,2]) byCover (pieces_cover 12 (by decide) false false k256 8 3 5 4 [0,0,1,2]) slices 12 withHints bank tags [6,3] except []
tagSlices g22257 on (row false true k271 8 3 5 4 [0,0,1,2]) byParts (fun j => piece 8 j false true k271 8 3 5 4 [0,0,1,2]) byCover (pieces_cover 8 (by decide) false true k271 8 3 5 4 [0,0,1,2]) withHints bank eachTags[[],[6,13,1,1,1],[],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1],[],[]] except []
sliceRow g22258 on (row false false k256 8 3 5 4 [0,0,2,1]) byParts (fun j => piece 12 j false false k256 8 3 5 4 [0,0,2,1]) byCover (pieces_cover 12 (by decide) false false k256 8 3 5 4 [0,0,2,1]) slices 12 withHints bank tags [6,3] except []
tagSlices g22259 on (row false true k271 8 3 5 4 [0,0,2,1]) byParts (fun j => piece 8 j false true k271 8 3 5 4 [0,0,2,1]) byCover (pieces_cover 8 (by decide) false true k271 8 3 5 4 [0,0,2,1]) withHints bank eachTags[[],[6,13,1,1,1],[],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1],[],[]] except []
tagSlices g22260 on (row false false k256 8 3 5 4 [0,0,3,0]) byParts (fun j => piece 12 j false false k256 8 3 5 4 [0,0,3,0]) byCover (pieces_cover 12 (by decide) false false k256 8 3 5 4 [0,0,3,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g22261 on (row false true k271 8 3 5 4 [0,0,3,0]) byParts (fun j => piece 12 j false true k271 8 3 5 4 [0,0,3,0]) byCover (pieces_cover 12 (by decide) false true k271 8 3 5 4 [0,0,3,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
