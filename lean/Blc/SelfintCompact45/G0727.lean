import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24021 on (row false true k317 5 5 2 4 [0,1,2,2]) byParts (fun j => piece 12 j false true k317 5 5 2 4 [0,1,2,2]) byCover (pieces_cover 12 (by decide) false true k317 5 5 2 4 [0,1,2,2]) withHints bank eachTags[[],[],[1,1,1,1,1,1,1,1,44,22,20,1,44,22,1,1,6,1,1,1,20,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,44,22,20,1,44,22,1,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,20,1,44,22,1,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g24022 on (row false false k293 5 5 2 4 [0,1,3,1]) using bank tags []
certRow g24023 on (row false true k317 5 5 2 4 [0,1,3,1]) using bank tags []
certRow g24024 on (row false false k293 5 5 2 4 [0,1,4,0]) using bank tags []
certRow g24025 on (row false true k317 5 5 2 4 [0,1,4,0]) using bank tags []
certRow g24026 on (row false false k293 5 5 2 4 [0,2,0,3]) using bank tags []
certRow g24027 on (row false true k317 5 5 2 4 [0,2,0,3]) using bank tags []
tagSlices g24028 on (row false false k293 5 5 2 4 [0,2,1,2]) byParts (fun j => piece 12 j false false k293 5 5 2 4 [0,2,1,2]) byCover (pieces_cover 12 (by decide) false false k293 5 5 2 4 [0,2,1,2]) withHints bank eachTags[[],[],[44,1,44,21,1,1,44,44,44,17,44,40,44,20,44,19,44,1,44,19,44,1,44,1,44,21,44,17,44,19,44,20,44,36,44,8],[44,1,44,20,1,1,44,44,44,31,44,21,44,20,44,20,44,1,44,30,44,19,44,1,44,20,44,1,44,40,44,20,44,30,44,8,44,1,44,20,1,1,44,44,44,17,44,40,44,20,44,20,44,1,44,1,44,1,44,1,44,20,44,1,44,37,44,41,44,36,44,8],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
