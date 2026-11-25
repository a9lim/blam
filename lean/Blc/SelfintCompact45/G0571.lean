import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22268 on (row false false k256 8 3 5 4 [0,2,0,1]) byParts (fun j => piece 8 j false false k256 8 3 5 4 [0,2,0,1]) byCover (pieces_cover 8 (by decide) false false k256 8 3 5 4 [0,2,0,1]) withHints bank eachTags[[],[6,6,6,3,6,6,6,3],[6,6,6,3],[6,6,6,3,6,6,6,3],[6,6,6,3,6,6,6,3],[6,6,6,3,6,6,6,3],[],[]] except []
tagSlices g22269 on (row false true k271 8 3 5 4 [0,2,0,1]) byParts (fun j => piece 8 j false true k271 8 3 5 4 [0,2,0,1]) byCover (pieces_cover 8 (by decide) false true k271 8 3 5 4 [0,2,0,1]) withHints bank eachTags[[],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[],[]] except []
certRow g22270 on (row false false k256 8 3 5 4 [0,2,1,0]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
tagSlices g22271 on (row false true k271 8 3 5 4 [0,2,1,0]) byParts (fun j => piece 8 j false true k271 8 3 5 4 [0,2,1,0]) byCover (pieces_cover 8 (by decide) false true k271 8 3 5 4 [0,2,1,0]) withHints bank eachTags[[],[6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1],[6,13,1,1,1],[],[]] except []
certRow g22272 on (row false false k256 8 3 5 4 [0,3,0,0]) using bank tags []
certRow g22273 on (row false true k271 8 3 5 4 [0,3,0,0]) using bank tags []
certRow g22274 on (row false false k256 8 3 5 4 [1,0,0,2]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
end Blc.SelfintSingleObject.Compact45
