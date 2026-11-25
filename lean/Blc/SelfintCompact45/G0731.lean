import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24051 on (row false true k317 5 5 2 4 [1,0,2,2]) byParts (fun j => piece 24 j false true k317 5 5 2 4 [1,0,2,2]) byCover (pieces_cover 24 (by decide) false true k317 5 5 2 4 [1,0,2,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,44,22,1,1,44,22,1,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,44,22,1,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,44,22,20,1,44,22,20,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,44,22,1,1,44,22,20,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,44,22,20,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g24052 on (row false false k293 5 5 2 4 [1,0,3,1]) using bank tags []
certRow g24053 on (row false true k317 5 5 2 4 [1,0,3,1]) using bank tags []
certRow g24054 on (row false false k293 5 5 2 4 [1,0,4,0]) using bank tags []
certRow g24055 on (row false true k317 5 5 2 4 [1,0,4,0]) using bank tags []
certRow g24056 on (row false false k293 5 5 2 4 [1,1,0,3]) using bank tags []
certRow g24057 on (row false true k317 5 5 2 4 [1,1,0,3]) using bank tags []
certRow g24058 on (row false false k293 5 5 2 4 [1,1,1,2]) using bank tags []
certRow g24059 on (row false true k317 5 5 2 4 [1,1,1,2]) using bank tags []
certRow g24060 on (row false false k293 5 5 2 4 [1,1,2,1]) using bank tags []
certRow g24061 on (row false true k317 5 5 2 4 [1,1,2,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
