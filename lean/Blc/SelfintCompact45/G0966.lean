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
tagSlices g25851 on (row true true k338 6 3 2 5 [0,0,1,0,2]) byParts (fun j => piece 12 j true true k338 6 3 2 5 [0,0,1,0,2]) byCover (pieces_cover 12 (by decide) true true k338 6 3 2 5 [0,0,1,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,44,22,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[1,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1],[]] except []
theorem g25852 : BadRow (row true false k326 6 3 2 5 [0,0,1,1,1]) := sparse_row true false k326 6 3 2 5 [0,0,1,1,1] (by decide)
theorem g25853 : BadRow (row true true k338 6 3 2 5 [0,0,1,1,1]) := sparse_row true true k338 6 3 2 5 [0,0,1,1,1] (by decide)
tagSlices g25854 on (row true false k326 6 3 2 5 [0,0,1,2,0]) byParts (fun j => piece 12 j true false k326 6 3 2 5 [0,0,1,2,0]) byCover (pieces_cover 12 (by decide) true false k326 6 3 2 5 [0,0,1,2,0]) withHints bank eachTags[[],[2,2,2,9,2,2,2,9,2,2,2,9],[2,2,2,9],[2,2,2,9,2,2,2,9],[2,2,2,9,2,2,2,9,2,2,2,9,44,8,8,61,2,44,44,44,44,44,44,27,8,8,44,2],[],[2,2,2,10,2,2,2,10,2,2,2,10,2,2,2,37],[2,2,2,0,44,44,0,61,2,44,44,44,44,44,44,24,44,0,44,2],[],[],[2,2,2,0,44,24,44,44,44,44,44,44,10,44,24,44,3,44,24,44,44,44,44,44,44,10,44,24,44,3,44,24,44,44,44,44,44,44,10,44,24,44,3,44,8,44,44,44,44,44,44,10,8,8,44,3,44,44,0,61,2,44,44,44,44,44,44,18,44,0,44,2],[]] except [Floor45.e9553352338874,Floor45.e11219193523842,Floor45.e9569467116986,Floor45.e9553352396410,Floor45.e11219310452354,Floor45.e9569468943994]
certRow g25855 on (row true true k338 6 3 2 5 [0,0,1,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
end Blc.SelfintSingleObject.Compact45
