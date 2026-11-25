import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24273 on (row false true k318 5 5 2 5 [1,1,2,0,1]) byParts (fun j => piece 24 j false true k318 5 5 2 5 [1,1,2,0,1]) byCover (pieces_cover 24 (by decide) false true k318 5 5 2 5 [1,1,2,0,1]) withHints bank eachTags[[],[2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[],[20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,44,22,28,1,1,1,1,1,8,22,8,1,1,1,1,1],[],[],[],[8,22,8,1,1,1,1,1,8,22,8,1,1,1,1,1],[],[],[],[],[],[],[],[],[44,22,20,1,1,1,1,1],[],[],[2,14,1,1,12,1,1,2,14,1,1,12,1,1,2,14,1,1,12,1,1,2,14,1,1,12,1,1,2,14,1,1,12,1,1,30,30,1,1,44,1,44,1,1,1,1,1,1,1,44,1,44,1,1,1],[]] except []
certRow g24274 on (row false false k294 5 5 2 5 [1,1,2,1,0]) using bank tags [2,2,2,37,2,2,2,37,2,2,2,1,2,2,2,37,2,2,2,1,2,2,2,0,2,2,2,0,2,2,2,21,2,2,2,48,20,44,44,20,44,20,44,20,20,44,44,30,44,20,44,20,20,44,44,20,44,20,44,48,44,0,44,44,27,44,0,44,2,8,8,8,44,48,8,8,44,2] except [Floor45.e9557379043130,Floor45.e9557379042266,Floor45.e11218696860578,Floor45.e9570276020026]
end Blc.SelfintSingleObject.Compact45
