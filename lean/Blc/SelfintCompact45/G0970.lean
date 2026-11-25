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
tagSlices g25866 on (row true false k326 6 3 2 5 [0,1,0,2,0]) byParts (fun j => piece 24 j true false k326 6 3 2 5 [0,1,0,2,0]) byCover (pieces_cover 24 (by decide) true false k326 6 3 2 5 [0,1,0,2,0]) withHints bank eachTags[[],[2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9],[2,2,2,9,2,2,2,9],[2,2,2,9,2,2,2,9],[2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9],[],[2,2,2,10,2,2,2,10,2,2,2,10,2,2,2,10,2,2,2,10],[],[],[],[],[],[],[],[],[],[],[],[],[2,2,2,0,2,2,2,0,44,44,0,61,2,44,44,44,44,44,44,24,44,0,44,2,44,44,0,61,2,44,44,44,44,44,44,24,44,0,44,2],[],[],[44,23,44,44,44,44,44,44,10,44,23,44,3,44,23,44,44,44,44,44,44,10,44,23,44,3,44,95,44,44,44,44,44,44,10,44,95,44,3,44,27,44,44,44,44,44,44,10,44,27,44,3,44,72,44,44,44,44,44,44,10,44,72,44,3],[]] except [Floor45.e9553352341946,Floor45.e9553352339130,Floor45.e11219193720450,Floor45.e9569467120058,Floor45.e11219193540226,Floor45.e9569467117242]
certRow g25867 on (row true true k338 6 3 2 5 [0,1,0,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
theorem g25868 : BadRow (row true false k326 6 3 2 5 [0,1,1,0,1]) := sparse_row true false k326 6 3 2 5 [0,1,1,0,1] (by decide)
theorem g25869 : BadRow (row true true k338 6 3 2 5 [0,1,1,0,1]) := sparse_row true true k338 6 3 2 5 [0,1,1,0,1] (by decide)
theorem g25870 : BadRow (row true false k326 6 3 2 5 [0,1,1,1,0]) := sparse_row true false k326 6 3 2 5 [0,1,1,1,0] (by decide)
theorem g25871 : BadRow (row true true k338 6 3 2 5 [0,1,1,1,0]) := sparse_row true true k338 6 3 2 5 [0,1,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
