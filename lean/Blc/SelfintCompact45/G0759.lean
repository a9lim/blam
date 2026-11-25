import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24197 on (row false true k318 5 5 2 5 [0,2,1,0,2]) byParts (fun j => piece 24 j false true k318 5 5 2 5 [0,2,1,0,2]) byCover (pieces_cover 24 (by decide) false true k318 5 5 2 5 [0,2,1,0,2]) withHints bank eachTags[[],[20,1,1,1,1,1,20,1,1,1,1,1,37,11,1,1,1,1,37,11,1,1,1,1,20,1,1,1,1,1],[20,1,1,1,1,1,20,1,1,1,1,1],[20,1,1,1,1,1,20,1,1,1,1,1],[20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1,20,1,1,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,37,11,1,1,1,1,2,14,1,1,12,37,1,2,14,1,1,12,40,1],[],[],[],[2,14,1,1,12,0,1,2,14,1,1,12,20,1],[],[],[],[],[],[],[],[],[2,14,1,1,12,40,1],[],[],[44,22,28,1,1,1,1,1,44,22,28,1,1,1,1,1,8,22,8,1,1,1,1,1,44,22,28,1,1,1,1,1,8,22,8,1,1,1,1,1,1,1,1,1,44,1,44,1,1,1,1,1,1,1,44,1,44,1,1,1],[]] except [Floor45.e2393382522478]
certRow g24198 on (row false false k294 5 5 2 5 [0,2,1,1,1]) using bank tags [2,2,2,37,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1]
certRow g24199 on (row false true k318 5 5 2 5 [0,2,1,1,1]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
end Blc.SelfintSingleObject.Compact45
