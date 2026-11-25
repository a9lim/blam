import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19324 on (row false false k187 7 4 2 4 [1,0,2,1]) using bank tags [2,2,2,2,33,61,2,2,10,2,2,2,2,33,61,2,2,10,2,2,2,2,36,61,2,2,18,2,2,2,2,36,61,2,2,20,2,2,2,2,20,61,2,2,36,44,44,33,8,44,44,44,44,44,44,44,44,44,9,8,8,44,2,44,61,44,44,44,44,44,44,44,3,44,33,44,2,44,44,44,44]
certRow g19325 on (row false true k223 7 4 2 4 [1,0,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,6]
certRow g19326 on (row false false k187 7 4 2 4 [1,0,3,0]) using bank tags []
certRow g19327 on (row false true k223 7 4 2 4 [1,0,3,0]) using bank tags []
tagSlices g19328 on (row false false k187 7 4 2 4 [1,1,0,2]) byParts (fun j => piece 12 j false false k187 7 4 2 4 [1,1,0,2]) byCover (pieces_cover 12 (by decide) false false k187 7 4 2 4 [1,1,0,2]) withHints bank eachTags[[],[2,2,2,2,33,61,2,2,10,2,2,2,2,33,61,2,2,10],[2,2,2,2,33,61,2,2,10],[2,2,2,2,33,61,2,2,10,2,2,2,2,33,61,2,2,10],[],[44,44,33,24,44,44,44,44,44,44,44,44,44,9,44,24,44,2,44,61,44,44,44,44,44,44,44,3,44,33,44,2,44,44,44,44,44,44,33,24,44,44,44,44,44,44,44,44,44,9,44,24,44,2,44,61,44,44,44,44,44,44,44,3,44,33,44,2,44,44,44,44],[],[],[],[],[],[]] except []
certRow g19329 on (row false true k223 7 4 2 4 [1,1,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,6,44,22,1,1,1,6]
theorem g19330 : BadRow (row false false k187 7 4 2 4 [1,1,1,1]) := sparse_row false false k187 7 4 2 4 [1,1,1,1] (by decide)
theorem g19331 : BadRow (row false true k223 7 4 2 4 [1,1,1,1]) := sparse_row false true k223 7 4 2 4 [1,1,1,1] (by decide)
certRow g19332 on (row false false k187 7 4 2 4 [1,1,2,0]) using bank tags [2,2,2,2,33,61,2,2,10,2,2,2,2,33,61,2,2,10,2,2,2,2,33,61,2,2,10,44,44,33,24,44,44,44,44,44,44,44,44,44,9,44,24,44,2,44,61,44,44,44,44,44,44,44,3,44,33,44,2,44,44,44,44]
certRow g19333 on (row false true k223 7 4 2 4 [1,1,2,0]) using bank tags [1,1,1,1,1,1,44,22,1,1,1,6]
end Blc.SelfintSingleObject.Compact45
