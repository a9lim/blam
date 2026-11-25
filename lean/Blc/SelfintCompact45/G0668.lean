import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g23048 : BadRow (row false false k285 5 4 2 4 [1,1,1,1]) := sparse_row false false k285 5 4 2 4 [1,1,1,1] (by decide)
theorem g23049 : BadRow (row false true k309 5 4 2 4 [1,1,1,1]) := sparse_row false true k309 5 4 2 4 [1,1,1,1] (by decide)
certRow g23050 on (row false false k285 5 4 2 4 [1,1,2,0]) using bank tags [2,2,12,20,2,2,12,40,37,2,2,37,2,2,12,20,2,2,12,40,37,2,2,37,2,2,12,0,2,2,12,0,20,2,2,0,44,44,44,44,44,44,1,44,1,44,20,44,20,44,44,44,44,44,44,1,44,1,44,20,44,20,44,20,44,44,44,44,44,44,20,44,20,44,20,44,44,44,44,44] except [Floor45.e9570093201018,Floor45.e9570160309882,Floor45.e9555933230714]
tagSlices g23051 on (row false true k309 5 4 2 4 [1,1,2,0]) byParts (fun j => piece 24 j false true k309 5 4 2 4 [1,1,2,0]) byCover (pieces_cover 24 (by decide) false true k309 5 4 2 4 [1,1,2,0]) withHints bank eachTags[[],[2,14,2,14,2,14,36,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,1,11,19,1,1,12,19,1,37,37,1,1,12,1,1,37,19,1,1,12,37,1,1,1,2,14,2,14,2,14,36,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,1,11,19,1,1,12,37,1,37,1,1,1,12,1,1,37,30,1,1,12,37,1,1,1],[2,14,2,14,2,14,36,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,0,11,0,1,1,12,19,1,1,37,1,1,12,1,0,1,20,1,1,12,1,1,1,1],[],[],[6,19,10,12,6,1,20,1,6,1,1,1,6,11,2,14,6,1,1,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,20,22,20,22,20,22,20,22,20,1,1,1,1,28,1,20,1,22,20,20,30,22,20,1,1,1,1,20,1,20,1,20,1,20,1,20,1,1,1,1,1,1,1,1,1,20,1,1,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except [Floor45.e2393202849402,Floor45.e2385149785722,Floor45.e2394880571002]
end Blc.SelfintSingleObject.Compact45
