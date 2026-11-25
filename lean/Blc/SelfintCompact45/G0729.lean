import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24031 on (row false true k317 5 5 2 4 [0,2,2,1]) byParts (fun j => piece 12 j false true k317 5 5 2 4 [0,2,2,1]) byCover (pieces_cover 12 (by decide) false true k317 5 5 2 4 [0,2,2,1]) withHints bank eachTags[[],[],[37,11,12,12,1,1,1,1,44,22,21,1,44,22,1,1,6,1,1,1,11,12,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1,1,1,1,44,22,20,1,44,22,1,1,6,1,1,1,21,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,21,1,44,22,1,1,6,1,1,1,21,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g24032 on (row false false k293 5 5 2 4 [0,2,3,0]) using bank tags []
certRow g24033 on (row false true k317 5 5 2 4 [0,2,3,0]) using bank tags []
certRow g24034 on (row false false k293 5 5 2 4 [0,3,0,2]) using bank tags []
certRow g24035 on (row false true k317 5 5 2 4 [0,3,0,2]) using bank tags []
certRow g24036 on (row false false k293 5 5 2 4 [0,3,1,1]) using bank tags []
certRow g24037 on (row false true k317 5 5 2 4 [0,3,1,1]) using bank tags []
certRow g24038 on (row false false k293 5 5 2 4 [0,3,2,0]) using bank tags []
certRow g24039 on (row false true k317 5 5 2 4 [0,3,2,0]) using bank tags []
certRow g24040 on (row false false k293 5 5 2 4 [0,4,0,1]) using bank tags []
certRow g24041 on (row false true k317 5 5 2 4 [0,4,0,1]) using bank tags []
certRow g24042 on (row false false k293 5 5 2 4 [0,4,1,0]) using bank tags []
certRow g24043 on (row false true k317 5 5 2 4 [0,4,1,0]) using bank tags []
theorem g24044 : BadRow (row false false k293 5 5 2 4 [0,5,0,0]) := sparse_row false false k293 5 5 2 4 [0,5,0,0] (by decide)
theorem g24045 : BadRow (row false true k317 5 5 2 4 [0,5,0,0]) := sparse_row false true k317 5 5 2 4 [0,5,0,0] (by decide)
certRow g24046 on (row false false k293 5 5 2 4 [1,0,0,4]) using bank tags []
certRow g24047 on (row false true k317 5 5 2 4 [1,0,0,4]) using bank tags []
certRow g24048 on (row false false k293 5 5 2 4 [1,0,1,3]) using bank tags []
certRow g24049 on (row false true k317 5 5 2 4 [1,0,1,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
