import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g26447 on (row true true k347 6 3 4 6 [0,1,0,2,0,0]) byParts (fun j => piece 48 j true true k347 6 3 4 6 [0,1,0,2,0,0]) byCover (pieces_cover 48 (by decide) true true k347 6 3 4 6 [0,1,0,2,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22,22],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g26448 on (row true false k335 6 3 4 6 [0,1,1,0,0,1]) using bank tags []
certRow g26449 on (row true true k347 6 3 4 6 [0,1,1,0,0,1]) using bank tags []
certRow g26450 on (row true false k335 6 3 4 6 [0,1,1,0,1,0]) using bank tags []
certRow g26451 on (row true true k347 6 3 4 6 [0,1,1,0,1,0]) using bank tags []
certRow g26452 on (row true false k335 6 3 4 6 [0,1,1,1,0,0]) using bank tags []
certRow g26453 on (row true true k347 6 3 4 6 [0,1,1,1,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
