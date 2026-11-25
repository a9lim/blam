import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g20304 on (row false false k199 7 5 2 4 [1,0,0,4]) using bank tags []
certRow g20305 on (row false true k235 7 5 2 4 [1,0,0,4]) using bank tags []
certRow g20306 on (row false false k199 7 5 2 4 [1,0,1,3]) using bank tags []
certRow g20307 on (row false true k235 7 5 2 4 [1,0,1,3]) using bank tags []
tagSlices g20308 on (row false false k199 7 5 2 4 [1,0,2,2]) byParts (fun j => piece 12 j false false k199 7 5 2 4 [1,0,2,2]) byCover (pieces_cover 12 (by decide) false false k199 7 5 2 4 [1,0,2,2]) withHints bank eachTags[[],[44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61,44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61],[44,25,44,44,44,44,44,44,44,44,44,44,12,44,25,44,2,44,61],[44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61,44,25,44,44,44,44,44,44,44,44,44,44,12,44,25,44,2,44,61],[],[],[],[],[],[],[],[]] except []
certRow g20309 on (row false true k235 7 5 2 4 [1,0,2,2]) using bank tags [44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
certRow g20310 on (row false false k199 7 5 2 4 [1,0,3,1]) using bank tags []
certRow g20311 on (row false true k235 7 5 2 4 [1,0,3,1]) using bank tags []
certRow g20312 on (row false false k199 7 5 2 4 [1,0,4,0]) using bank tags []
certRow g20313 on (row false true k235 7 5 2 4 [1,0,4,0]) using bank tags []
certRow g20314 on (row false false k199 7 5 2 4 [1,1,0,3]) using bank tags []
certRow g20315 on (row false true k235 7 5 2 4 [1,1,0,3]) using bank tags []
certRow g20316 on (row false false k199 7 5 2 4 [1,1,1,2]) using bank tags []
certRow g20317 on (row false true k235 7 5 2 4 [1,1,1,2]) using bank tags []
certRow g20318 on (row false false k199 7 5 2 4 [1,1,2,1]) using bank tags []
certRow g20319 on (row false true k235 7 5 2 4 [1,1,2,1]) using bank tags []
certRow g20320 on (row false false k199 7 5 2 4 [1,1,3,0]) using bank tags []
certRow g20321 on (row false true k235 7 5 2 4 [1,1,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
