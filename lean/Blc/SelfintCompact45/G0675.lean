import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g23090 on (row false false k286 5 4 2 5 [0,0,1,1,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44]
tagSlices g23091 on (row false true k310 5 4 2 5 [0,0,1,1,2]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [0,0,1,1,2]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [0,0,1,1,2]) withHints bank eachTags[[],[2,2,2,21,14,1,2,2,2,11,14,1,2,2,2,21,14,1],[],[2,2,2,50,14,1,2,2,2,21,14,1],[2,2,2,11,14,1,2,2,2,21,14,1,2,2,2,11,14,1,2,2,2,21,14,1,2,2,2,21,14,1],[],[2,2,2,20,14,1,2,2,2,37,14,1,2,2,2,21,14,1],[],[],[],[29,1,1,1,1,1,32,1,1,1,1,1,31,1,1,1,1,1,32,1,1,1,1,1,29,1,1,1,1,1,32,1,1,1,1,1],[]] except []
certRow g23092 on (row false false k286 5 4 2 5 [0,0,1,2,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44]
tagSlices g23093 on (row false true k310 5 4 2 5 [0,0,1,2,1]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [0,0,1,2,1]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [0,0,1,2,1]) withHints bank eachTags[[],[2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,20,14,1],[],[2,2,2,21,14,1,2,2,2,20,14,1],[2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,21,14,1,2,2,2,20,14,1],[],[2,2,2,20,14,1,2,2,2,21,14,1,2,2,2,21,14,1],[20,20,20,1,20,20,20,1,20,1,20,1,29,9,1,1,1,1,32,2,1,1,1,1],[],[],[54,1,1,1,20,1,32,1,1,1,1,1,53,1,1,1,1,1,32,1,1,1,1,1,29,1,1,1,1,1,32,1,1,1,1,1],[]] except []
certRow g23094 on (row false false k286 5 4 2 5 [0,0,1,3,0]) using bank tags []
certRow g23095 on (row false true k310 5 4 2 5 [0,0,1,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
