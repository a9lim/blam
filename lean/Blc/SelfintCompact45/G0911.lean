import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25624 on (row false false k299 5 5 3 6 [1,1,1,0,2,0]) byParts (fun j => piece 24 j false false k299 5 5 3 6 [1,1,1,0,2,0]) byCover (pieces_cover 24 (by decide) false false k299 5 5 3 6 [1,1,1,0,2,0]) withHints bank eachTags[[],[],[8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8],[],[],[],[],[],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2],[],[2,2,2,2],[],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[],[39,39,23,23,23,8,8,1,8,1,27,8,1,8,10,10,10,10,10,1,1,1,1,1,1,1,1,1,20,20,20,20,20,20,20,1,1,1,1,1,1,20,20,20,20,20,44,20,44,20,44,20,44,20,44,20,44,20,44,20,44,20,36,36],[1,1,1,1,1,44,20,44,20,8,8,8,8],[],[27,27,8,48,8,2,2,1,89,89,8,8]] except []
tagSlices g25625 on (row false true k323 5 5 3 6 [1,1,1,0,2,0]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,1,1,0,2,0]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,1,1,0,2,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g25626 on (row false false k299 5 5 3 6 [1,1,1,1,0,1]) using bank tags []
certRow g25627 on (row false true k323 5 5 3 6 [1,1,1,1,0,1]) using bank tags []
certRow g25628 on (row false false k299 5 5 3 6 [1,1,1,1,1,0]) using bank tags []
certRow g25629 on (row false true k323 5 5 3 6 [1,1,1,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
