import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14620 on (row false false k115 6 6 3 4 [0,2,1,3]) using bank tags [2,2,2,2,44,44,44,20,44,44,44,20,44,44,44,44,44,1,44,44,44,11,44,44,44,44,44,20,44,44,44,20,44,44,2,2,2,2,44,44,44,20,44,44,44,20,44,44,44,44,44,36,44,44,44,20,44,44]
tagSlices g14621 on (row false true k160 6 6 3 4 [0,2,1,3]) byParts (fun j => piece 12 j false true k160 6 6 3 4 [0,2,1,3]) byCover (pieces_cover 12 (by decide) false true k160 6 6 3 4 [0,2,1,3]) withHints bank eachTags[[],[13,12,13,11,13,1,13,2,13,12,13,1,1,12,1,20,1,1,1,2,1,1,1,1],[],[],[2,2,2,10,14,1,2,2,2,10,14,1],[],[],[],[],[2,2,2,9,14,1,2,2,2,9,14,1],[16,9,32,20,1,1,29,2,1,1,1,1,16,9,32,20,1,1,1,2,29,1,1,1],[1,12,1,20,1,1,1,2,1,1,1,1]] except []
certRow g14622 on (row false false k115 6 6 3 4 [0,2,2,2]) using bank tags [2,2,44,44,44,11,44,44,44,37,44,44,44,44,44,20,44,44,44,20,44,44,44,44,44,21,44,44,44,21,44,44,44,44,44,20,44,44,44,21,44,44,2,2,44,44,44,11,44,44,44,11,44,44,44,44,44,20,44,44,44,20,44,44,44,44,44,1,44,44,44,1,44,44]
tagSlices g14623 on (row false true k160 6 6 3 4 [0,2,2,2]) byParts (fun j => piece 12 j false true k160 6 6 3 4 [0,2,2,2]) byCover (pieces_cover 12 (by decide) false true k160 6 6 3 4 [0,2,2,2]) withHints bank eachTags[[11,12,1,20,1,1,12,2,1,1,1,1],[11,12,1,21,1,1,12,2,1,1,1,1,1,12,1,21,1,1,1,2,1,1,1,1],[2,2,2,11,14,1,14,12,14,11,14,1,14,2,14,12,14,1,1,12,1,20,1,1,1,2,1,1,1,1,1,12,1,20,1,1,1,2,1,1,1,1],[],[],[],[],[],[],[],[],[2,2,2,11,14,1,14,12,14,11,14,1,14,2,14,12,14,1]] except []
end Blc.SelfintSingleObject.Compact45
