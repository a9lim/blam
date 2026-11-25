import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g20720 on (row false false k202 7 5 3 4 [1,1,0,3]) byParts (fun j => piece 12 j false false k202 7 5 3 4 [1,1,0,3]) byCover (pieces_cover 12 (by decide) false false k202 7 5 3 4 [1,1,0,3]) withHints bank eachTags[[],[2,2,2,3,2,2,2,3,2,2,2,10,2,2,2,10],[2,2,2,3],[2,2,2,3,2,2,2,3],[20,44,44,44,44,44,44,9,44,20,44,2,20,44,44,44,44,44,44,9,44,20,44,2,24,44,44,44,44,44,44,9,44,24,44,2,24,44,44,44,44,44,44,9,44,24,44,2],[],[],[],[],[2,2,2,10,2,2,2,10],[],[2,2,2,10]] except []
certRow g20721 on (row false true k238 7 5 3 4 [1,1,0,3]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20722 on (row false false k202 7 5 3 4 [1,1,1,2]) using bank tags [2,2,2,10,2,2,2,23,2,2,2,9,2,2,2,10,2,2,2,10,2,2,2,0,24,44,44,44,44,44,44,9,44,24,44,2] except [Floor45.e9553350157166]
certRow g20723 on (row false true k238 7 5 3 4 [1,1,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20724 on (row false false k202 7 5 3 4 [1,1,2,1]) using bank tags [2,2,2,10,2,2,2,10,2,2,2,10,2,2,2,18,2,2,2,36,24,44,44,44,44,44,44,9,44,24,44,2]
certRow g20725 on (row false true k238 7 5 3 4 [1,1,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20726 on (row false false k202 7 5 3 4 [1,1,3,0]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,10,2,2,2,9,23,44,44,44,44,44,44,9,44,23,44,2]
certRow g20727 on (row false true k238 7 5 3 4 [1,1,3,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g20728 on (row false false k202 7 5 3 4 [1,2,0,2]) using bank tags [6,6,6,35,6,6,6,1,6,6,6,20,6,6,6,1,6,6,6,1,2,2,2,10,2,2,2,10,2,2,2,20,2,2,2,10,2,2,2,23,2,2,2,36,2,2,2,10,48,44,44,44,44,44,44,9,44,48,44,2,8,44,44,44,44,44,44,9,8,8,44,2]
certRow g20729 on (row false true k238 7 5 3 4 [1,2,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
end Blc.SelfintSingleObject.Compact45
