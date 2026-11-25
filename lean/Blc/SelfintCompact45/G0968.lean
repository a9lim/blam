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
tagSlices g25857 on (row true true k338 6 3 2 5 [0,0,2,0,1]) byParts (fun j => piece 12 j true true k338 6 3 2 5 [0,0,2,0,1]) byCover (pieces_cover 12 (by decide) true true k338 6 3 2 5 [0,0,2,0,1]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,44,22,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[1,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1],[]] except []
tagSlices g25858 on (row true false k326 6 3 2 5 [0,0,2,1,0]) byParts (fun j => piece 12 j true false k326 6 3 2 5 [0,0,2,1,0]) byCover (pieces_cover 12 (by decide) true false k326 6 3 2 5 [0,0,2,1,0]) withHints bank eachTags[[],[2,2,2,9,2,2,2,9,2,2,2,9],[2,2,2,9],[2,2,2,9,2,2,2,9],[2,2,2,9,2,2,2,9,2,2,2,9,44,8,8,61,2,44,44,44,44,44,44,52,8,8,44,2],[],[2,2,2,10,2,2,2,10,2,2,2,10,2,2,2,37],[2,2,2,0,44,44,0,61,2,44,44,44,44,44,44,24,44,0,44,2],[],[],[2,2,2,48,44,24,44,44,44,44,44,44,10,44,24,44,3,44,18,44,44,44,44,44,44,10,44,18,44,3,44,18,44,44,44,44,44,44,10,44,18,44,3,44,8,44,44,44,44,44,44,10,8,8,44,3,44,44,0,61,2,44,44,44,44,44,44,18,44,0,44,2],[]] except [Floor45.e9553352338906,Floor45.e11219193525890,Floor45.e9569467117018,Floor45.e11219310464642,Floor45.e9569468944186]
certRow g25859 on (row true true k338 6 3 2 5 [0,0,2,1,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
theorem g25860 : BadRow (row true false k326 6 3 2 5 [0,0,3,0,0]) := sparse_row true false k326 6 3 2 5 [0,0,3,0,0] (by decide)
theorem g25861 : BadRow (row true true k338 6 3 2 5 [0,0,3,0,0]) := sparse_row true true k338 6 3 2 5 [0,0,3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
