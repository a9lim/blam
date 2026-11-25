import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24181 on (row false true k318 5 5 2 5 [0,1,2,2,0]) byParts (fun j => piece 12 j false true k318 5 5 2 5 [0,1,2,2,0]) byCover (pieces_cover 12 (by decide) false true k318 5 5 2 5 [0,1,2,2,0]) withHints bank eachTags[[],[19,37,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[19,37,1,1,1,1,20,1,1,1,1,1],[20,1,1,1,1,1,20,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[30,40,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[44,22,20,1,1,1,1,1,8,22,8,1,1,1,1,1,8,22,8,1,1,1,1,1],[]] except []
certRow g24182 on (row false false k294 5 5 2 5 [0,1,3,0,1]) using bank tags []
certRow g24183 on (row false true k318 5 5 2 5 [0,1,3,0,1]) using bank tags []
certRow g24184 on (row false false k294 5 5 2 5 [0,1,3,1,0]) using bank tags []
certRow g24185 on (row false true k318 5 5 2 5 [0,1,3,1,0]) using bank tags []
certRow g24186 on (row false false k294 5 5 2 5 [0,1,4,0,0]) using bank tags []
certRow g24187 on (row false true k318 5 5 2 5 [0,1,4,0,0]) using bank tags []
certRow g24188 on (row false false k294 5 5 2 5 [0,2,0,0,3]) using bank tags []
certRow g24189 on (row false true k318 5 5 2 5 [0,2,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
