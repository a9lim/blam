import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24092 on (row false false k293 5 5 2 4 [2,2,1,0]) byParts (fun j => piece 12 j false false k293 5 5 2 4 [2,2,1,0]) byCover (pieces_cover 12 (by decide) false false k293 5 5 2 4 [2,2,1,0]) withHints bank eachTags[[],[44,20,44,20,1,1,44,44,44,1,44,88,44,20,44,20,44,1,44,1,44,48,44,20,44,20,44,20,44,27,44,20,44,48,65,8,44,20,44,20,1,1,44,44,44,1,44,88,44,20,44,20,44,1,44,1,44,48,44,20,44,20,44,20,44,27,44,20,44,48,65,8],[8,8,8,8,8,8,8,8,8,8,44,20,8,8,44,20,8,8,8,8,44,99,8,8,8,8,8,8,44,48,8,8,44,75,8,8],[],[],[],[],[],[],[],[],[]] except []
tagSlices g24093 on (row false true k317 5 5 2 4 [2,2,1,0]) byParts (fun j => piece 12 j false true k317 5 5 2 4 [2,2,1,0]) byCover (pieces_cover 12 (by decide) false true k317 5 5 2 4 [2,2,1,0]) withHints bank eachTags[[],[18,37,11,11,1,1,1,1,44,22,1,1,44,22,1,1,6,1,1,1,36,11,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,18,37,11,11,1,1,1,1,44,22,1,1,44,22,1,1,6,1,1,1,36,11,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[8,1,1,1,1,1,1,1,8,22,8,1,8,22,8,1,6,1,1,1,8,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[],[]] except []
certRow g24094 on (row false false k293 5 5 2 4 [2,3,0,0]) using bank tags []
certRow g24095 on (row false true k317 5 5 2 4 [2,3,0,0]) using bank tags []
certRow g24096 on (row false false k293 5 5 2 4 [3,0,0,2]) using bank tags []
certRow g24097 on (row false true k317 5 5 2 4 [3,0,0,2]) using bank tags []
certRow g24098 on (row false false k293 5 5 2 4 [3,0,1,1]) using bank tags []
certRow g24099 on (row false true k317 5 5 2 4 [3,0,1,1]) using bank tags []
certRow g24100 on (row false false k293 5 5 2 4 [3,0,2,0]) using bank tags []
certRow g24101 on (row false true k317 5 5 2 4 [3,0,2,0]) using bank tags []
certRow g24102 on (row false false k293 5 5 2 4 [3,1,0,1]) using bank tags []
certRow g24103 on (row false true k317 5 5 2 4 [3,1,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
