import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23185 on (row false true k310 5 4 2 5 [1,2,1,0,0]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [1,2,1,0,0]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [1,2,1,0,0]) withHints bank eachTags[[],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,1,14,1,2,2,2,27,14,1],[],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,20,14,1],[],[20,10,22,20,20,1,10,9,1,1,1,1,20,10,21,20,20,1,10,9,1,1,1,1,30,10,28,20,20,1,10,9,1,1,1,1],[19,1,21,20,20,1,10,1,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1],[],[],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[]] except []
certRow g23186 on (row false false k286 5 4 2 5 [1,3,0,0,0]) using bank tags []
certRow g23187 on (row false true k310 5 4 2 5 [1,3,0,0,0]) using bank tags []
certRow g23188 on (row false false k286 5 4 2 5 [2,0,0,0,2]) using bank tags []
certRow g23189 on (row false true k310 5 4 2 5 [2,0,0,0,2]) using bank tags []
certRow g23190 on (row false false k286 5 4 2 5 [2,0,0,1,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
tagSlices g23191 on (row false true k310 5 4 2 5 [2,0,0,1,1]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [2,0,0,1,1]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [2,0,0,1,1]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[2,2,2,11,14,1,2,2,2,20,14,1],[2,2,2,11,14,1,2,2,2,11,14,1],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[],[],[],[],[],[],[]] except []
certRow g23192 on (row false false k286 5 4 2 5 [2,0,0,2,0]) using bank tags []
certRow g23193 on (row false true k310 5 4 2 5 [2,0,0,2,0]) using bank tags []
certRow g23194 on (row false false k286 5 4 2 5 [2,0,1,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
end Blc.SelfintSingleObject.Compact45
