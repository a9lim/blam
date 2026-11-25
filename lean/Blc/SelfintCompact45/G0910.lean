import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25618 on (row false false k299 5 5 3 6 [1,1,0,3,0,0]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [1,1,0,3,0,0]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [1,1,0,3,0,0]) withHints bank eachTags[[2,2,2,2,2,2,2],[2,2,2,2],[],[],[2,2],[20,20],[2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,1,1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,20,20,20,20,20,1,1,20,20]] except []
tagSlices g25619 on (row false true k323 5 5 3 6 [1,1,0,3,0,0]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,1,0,3,0,0]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,1,0,3,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25620 on (row false false k299 5 5 3 6 [1,1,1,0,0,2]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [1,1,1,0,0,2]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [1,1,1,0,0,2]) withHints bank eachTags[[],[2,2],[8,8,8,8,8,8,8,8,8,8,8,8,8,8,8],[],[2,2,2,2,2,2,2,2,2],[],[1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[39,39,23,23,23,8,8,1,8,1,27,8,1,8,10,10,10,10,10,1,1,1,1,1,20,20,20,20,1,1,1,1,1,1,1,1,1,1,1,20,20,20,20,20,44,20,44,20,44,20,44,20,44,20],[2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2]] except []
tagSlices g25621 on (row false true k323 5 5 3 6 [1,1,1,0,0,2]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,1,1,0,0,2]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,1,1,0,0,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g25622 on (row false false k299 5 5 3 6 [1,1,1,0,1,1]) using bank tags []
certRow g25623 on (row false true k323 5 5 3 6 [1,1,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
