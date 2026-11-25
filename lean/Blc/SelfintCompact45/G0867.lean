import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25442 on (row false false k299 5 5 3 6 [0,1,2,0,1,1]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,1,2,0,1,1]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,1,2,0,1,1]) withHints bank eachTags[[],[2,2],[1,1,1,1,1,1,10,10,10,10,10,10,10,10,10,10,10,10,10,10,20,59,8,49,8,20,8,20,48,20,20,8,28,28,28,28,20,8,8,0,0,173,0],[],[2,2,2,2,2],[0,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,1,1,1,1,1,1,1,1],[2,2,2,2,2],[],[2,2,2,2,2,1,1,1,1,1,2,2,1,1,1,1,1,1]] except [Floor45.e9633082750490,Floor45.e9692715710902,Floor45.e9692715703990,Floor45.e9690034371190]
tagSlices g25443 on (row false true k323 5 5 3 6 [0,1,2,0,1,1]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,1,2,0,1,1]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,1,2,0,1,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
