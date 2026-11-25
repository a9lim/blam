import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14704 on (row false false k115 6 6 3 4 [2,1,2,1]) using bank tags [2,2,2,2,2,2,44,44,44,26,44,44,44,19,44,44,44,44,44,1,44,44,44,1,44,44,2,2,44,44,44,26,44,44,44,10,44,44,44,44,44,10,44,44,44,10,44,44,2,2,44,44,44,10,44,44,44,10,44,44]
tagSlices g14705 on (row false true k160 6 6 3 4 [2,1,2,1]) byParts (fun j => piece 12 j false true k160 6 6 3 4 [2,1,2,1]) byCover (pieces_cover 12 (by decide) false true k160 6 6 3 4 [2,1,2,1]) withHints bank eachTags[[2,9,2,10,2,1,2,2,2,12,2,1],[],[2,2,2,1,14,1,2,9,2,10,2,1,2,2,2,12,2,1],[],[],[],[],[],[],[2,2,2,9,14,1,2,2,2,9,14,1,2,2,2,11,14,1,12,9,12,37,12,1,12,2,12,11,12,1,1,9,1,1,1,1,1,2,1,1,1,1],[],[2,2,2,1,14,1,6,9,6,10,6,1,6,2,6,12,6,1]] except []
certRow g14706 on (row false false k115 6 6 3 4 [2,1,3,0]) using bank tags [44,44,44,20,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44]
certRow g14707 on (row false true k160 6 6 3 4 [2,1,3,0]) using bank tags [19,9,1,1,1,1,11,2,1,1,1,1,1,9,1,1,1,1,1,2,1,1,1,1]
certRow g14708 on (row false false k115 6 6 3 4 [2,2,0,2]) using bank tags [44,44,44,20,44,44,44,18,44,44,44,44,44,20,44,44,44,18,44,44,44,44,8,8,44,44,8,8,44,44,44,44,44,10,44,44,44,10,44,44,44,44,44,20,44,44,44,23,44,44,44,44,8,8,44,44,8,8,44,44,44,44,44,10,44,44,44,10,44,44]
end Blc.SelfintSingleObject.Compact45
