import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24251 on (row false true k318 5 5 2 5 [1,0,2,2,0]) byParts (fun j => piece 12 j false true k318 5 5 2 5 [1,0,2,2,0]) byCover (pieces_cover 12 (by decide) false true k318 5 5 2 5 [1,0,2,2,0]) withHints bank eachTags[[],[19,37,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[19,37,1,1,1,1,20,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[]] except []
certRow g24252 on (row false false k294 5 5 2 5 [1,0,3,0,1]) using bank tags []
certRow g24253 on (row false true k318 5 5 2 5 [1,0,3,0,1]) using bank tags []
certRow g24254 on (row false false k294 5 5 2 5 [1,0,3,1,0]) using bank tags []
certRow g24255 on (row false true k318 5 5 2 5 [1,0,3,1,0]) using bank tags []
certRow g24256 on (row false false k294 5 5 2 5 [1,0,4,0,0]) using bank tags []
certRow g24257 on (row false true k318 5 5 2 5 [1,0,4,0,0]) using bank tags []
certRow g24258 on (row false false k294 5 5 2 5 [1,1,0,0,3]) using bank tags []
certRow g24259 on (row false true k318 5 5 2 5 [1,1,0,0,3]) using bank tags []
tagSlices g24260 on (row false false k294 5 5 2 5 [1,1,0,1,2]) byParts (fun j => piece 12 j false false k294 5 5 2 5 [1,1,0,1,2]) byCover (pieces_cover 12 (by decide) false false k294 5 5 2 5 [1,1,0,1,2]) withHints bank eachTags[[],[2,2,2,37,2,2,2,37,2,2,2,1,2,2,2,37,2,2,2,1],[2,2,2,20,2,2,2,20],[2,2,2,28,2,2,2,20],[2,2,2,30,2,2,2,20,2,2,2,20,2,2,2,0,2,2,2,20],[],[20,44,44,20,44,20,44,20,20,44,44,54,44,20,44,20,20,44,44,20,44,20,44,30,20,44,44,54,44,20,44,20,20,44,44,54,44,20,44,20,44,21,44,44,40,44,21,44,2],[],[],[],[8,8,8,44,48,8,8,44,2],[]] except [Floor45.e9557378833774]
end Blc.SelfintSingleObject.Compact45
