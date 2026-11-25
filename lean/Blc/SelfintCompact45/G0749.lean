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
certRow g24154 on (row false false k294 5 5 2 5 [0,0,4,1,0]) using bank tags []
certRow g24155 on (row false true k318 5 5 2 5 [0,0,4,1,0]) using bank tags []
theorem g24156 : BadRow (row false false k294 5 5 2 5 [0,0,5,0,0]) := sparse_row false false k294 5 5 2 5 [0,0,5,0,0] (by decide)
theorem g24157 : BadRow (row false true k318 5 5 2 5 [0,0,5,0,0]) := sparse_row false true k318 5 5 2 5 [0,0,5,0,0] (by decide)
certRow g24158 on (row false false k294 5 5 2 5 [0,1,0,0,4]) using bank tags []
certRow g24159 on (row false true k318 5 5 2 5 [0,1,0,0,4]) using bank tags []
certRow g24160 on (row false false k294 5 5 2 5 [0,1,0,1,3]) using bank tags []
certRow g24161 on (row false true k318 5 5 2 5 [0,1,0,1,3]) using bank tags []
tagSlices g24162 on (row false false k294 5 5 2 5 [0,1,0,2,2]) byParts (fun j => piece 24 j false false k294 5 5 2 5 [0,1,0,2,2]) byCover (pieces_cover 24 (by decide) false false k294 5 5 2 5 [0,1,0,2,2]) withHints bank eachTags[[],[1,44,44,11,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,11,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9],[1,44,44,11,44,1,44,9,1,44,44,17,44,1,44,9],[1,44,44,11,44,1,44,9,1,44,44,11,44,1,44,9],[1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9],[],[1,44,44,1,44,1,44,1,1,44,44,17,44,1,44,1,1,44,44,1,44,1,44,1,1,44,44,17,44,1,44,1,1,44,44,17,44,1,44,1],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[44,21,44,44,30,44,21,44,2,44,21,44,44,40,44,21,44,2,44,0,44,44,39,44,0,44,2,44,0,44,44,39,44,0,44,2,44,0,44,44,30,44,0,44,2],[]] except [Floor45.e11219262938850,Floor45.e9570311399918,Floor45.e11219262926562,Floor45.e9570311399150,Floor45.e11219262746338,Floor45.e9570311387886]
end Blc.SelfintSingleObject.Compact45
