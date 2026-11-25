import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25878 on (row true false k326 6 3 2 5 [0,2,1,0,0]) byParts (fun j => piece 12 j true false k326 6 3 2 5 [0,2,1,0,0]) byCover (pieces_cover 12 (by decide) true false k326 6 3 2 5 [0,2,1,0,0]) withHints bank eachTags[[],[2,2,2,9,2,2,2,9,2,2,2,9],[2,2,2,9,2,2,2,9],[2,2,2,9],[2,2,2,9,2,2,2,9,2,2,2,9],[],[2,2,2,10,2,2,2,10,2,2,2,10],[2,2,2,0,44,44,0,61,2,44,44,44,44,44,44,24,44,0,44,2],[],[],[44,28,44,44,44,44,44,44,10,44,28,44,3,44,28,44,44,44,44,44,44,10,44,28,44,3,44,0,44,44,44,44,44,44,10,44,0,44,3],[]] except [Floor45.e9553352342762,Floor45.e11219193772674,Floor45.e9569467120874,Floor45.e11219262978690,Floor45.e9569468202218]
certRow g25879 on (row true true k338 6 3 2 5 [0,2,1,0,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
theorem g25880 : BadRow (row true false k326 6 3 2 5 [0,3,0,0,0]) := sparse_row true false k326 6 3 2 5 [0,3,0,0,0] (by decide)
theorem g25881 : BadRow (row true true k338 6 3 2 5 [0,3,0,0,0]) := sparse_row true true k338 6 3 2 5 [0,3,0,0,0] (by decide)
certRow g25882 on (row true false k326 6 3 2 5 [1,0,0,0,2]) using bank tags [2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9]
certRow g25883 on (row true true k338 6 3 2 5 [1,0,0,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem g25884 : BadRow (row true false k326 6 3 2 5 [1,0,0,1,1]) := sparse_row true false k326 6 3 2 5 [1,0,0,1,1] (by decide)
theorem g25885 : BadRow (row true true k338 6 3 2 5 [1,0,0,1,1]) := sparse_row true true k338 6 3 2 5 [1,0,0,1,1] (by decide)
certRow g25886 on (row true false k326 6 3 2 5 [1,0,0,2,0]) using bank tags [2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9]
certRow g25887 on (row true true k338 6 3 2 5 [1,0,0,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem g25888 : BadRow (row true false k326 6 3 2 5 [1,0,1,0,1]) := sparse_row true false k326 6 3 2 5 [1,0,1,0,1] (by decide)
theorem g25889 : BadRow (row true true k338 6 3 2 5 [1,0,1,0,1]) := sparse_row true true k338 6 3 2 5 [1,0,1,0,1] (by decide)
theorem g25890 : BadRow (row true false k326 6 3 2 5 [1,0,1,1,0]) := sparse_row true false k326 6 3 2 5 [1,0,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
