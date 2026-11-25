import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24068 on (row false false k293 5 5 2 4 [1,2,2,0]) byParts (fun j => piece 12 j false false k293 5 5 2 4 [1,2,2,0]) byCover (pieces_cover 12 (by decide) false false k293 5 5 2 4 [1,2,2,0]) withHints bank eachTags[[],[44,20,44,20,20,20,44,44,44,29,44,1,44,1,44,1,44,20,44,20,44,39,44,20,44,20,44,39,44,1,44,20,44,20,44,8,44,20,44,20,20,20,44,44,44,31,44,1,44,1,44,1,44,20,44,20,44,20,44,20,44,20,44,1,44,1,44,20,44,20,44,8],[44,20,44,58,58,21,44,44,44,29,44,1,44,20,44,39,44,58,44,23,44,39,44,20,44,58,44,16,44,20,44,20,44,36,44,8],[],[],[],[],[],[],[],[],[]] except []
tagSlices g24069 on (row false true k317 5 5 2 4 [1,2,2,0]) byParts (fun j => piece 12 j false true k317 5 5 2 4 [1,2,2,0]) byCover (pieces_cover 12 (by decide) false true k317 5 5 2 4 [1,2,2,0]) withHints bank eachTags[[],[19,37,11,11,1,1,1,1,44,22,1,1,44,22,1,1,6,1,1,1,37,11,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,44,22,1,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[37,11,12,12,1,1,1,1,44,22,20,1,44,22,58,39,6,1,1,1,11,12,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[],[]] except []
certRow g24070 on (row false false k293 5 5 2 4 [1,3,0,1]) using bank tags []
certRow g24071 on (row false true k317 5 5 2 4 [1,3,0,1]) using bank tags []
certRow g24072 on (row false false k293 5 5 2 4 [1,3,1,0]) using bank tags []
certRow g24073 on (row false true k317 5 5 2 4 [1,3,1,0]) using bank tags []
certRow g24074 on (row false false k293 5 5 2 4 [1,4,0,0]) using bank tags []
certRow g24075 on (row false true k317 5 5 2 4 [1,4,0,0]) using bank tags []
certRow g24076 on (row false false k293 5 5 2 4 [2,0,0,3]) using bank tags []
certRow g24077 on (row false true k317 5 5 2 4 [2,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
