import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25402 on (row false false k299 5 5 3 6 [0,1,0,1,1,2]) byParts (fun j => piece 8 j false false k299 5 5 3 6 [0,1,0,1,1,2]) byCover (pieces_cover 8 (by decide) false false k299 5 5 3 6 [0,1,0,1,1,2]) withHints bank eachTags[[2,2,2,2,2,2],[2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,10,10,10,10,10,10,10,10,10,10,10,10,10,10,20,20,20,20,20,20,20,20,20,20],[],[2,2,2,2,37,1,1],[],[2,2,2,2],[]] except []
tagSlices g25403 on (row false true k323 5 5 3 6 [0,1,0,1,1,2]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,1,0,1,1,2]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,1,0,1,1,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25404 on (row false false k299 5 5 3 6 [0,1,0,1,2,1]) byParts (fun j => piece 8 j false false k299 5 5 3 6 [0,1,0,1,2,1]) byCover (pieces_cover 8 (by decide) false false k299 5 5 3 6 [0,1,0,1,2,1]) withHints bank eachTags[[2,2,2,2,2,2],[2,2],[2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,1,1,1,10,10,10,10,10,10,10,10,10,10,10,10,10,10,20,20,20,20,20,20,20,20,20,0,0],[],[2,2,1,37,1,1],[],[2,2,2,2],[1,1,1,1,1,2,1,1,1]] except [Floor45.e9633080768026,Floor45.e9692715703158]
tagSlices g25405 on (row false true k323 5 5 3 6 [0,1,0,1,2,1]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,1,0,1,2,1]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,1,0,1,2,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
