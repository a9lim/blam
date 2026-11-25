import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g24723 on (row false true k319 5 5 2 6 [1,1,2,0,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,30,30,30,11,2,2,2,1]
certRow g24724 on (row false false k295 5 5 2 6 [1,1,2,0,1,0]) using bank tags []
tagSlices g24725 on (row false true k319 5 5 2 6 [1,1,2,0,1,0]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,1,2,0,1,0]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,1,2,0,1,0]) withHints bank eachTags[[1,1,1,1],[2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,2,2,2,2,2,1,1],[],[],[1,1,1,1,1,44,1,44,1,1,1,1,1,1],[]] except []
certRow g24726 on (row false false k295 5 5 2 6 [1,1,2,1,0,0]) using bank tags []
certRow g24727 on (row false true k319 5 5 2 6 [1,1,2,1,0,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,1,1,1,1,2,2,2,1,2,2,2,1,1,1,44,1,1,1]
certRow g24728 on (row false false k295 5 5 2 6 [1,1,3,0,0,0]) using bank tags []
certRow g24729 on (row false true k319 5 5 2 6 [1,1,3,0,0,0]) using bank tags []
certRow g24730 on (row false false k295 5 5 2 6 [1,2,0,0,0,2]) using bank tags []
certRow g24731 on (row false true k319 5 5 2 6 [1,2,0,0,0,2]) using bank tags []
certRow g24732 on (row false false k295 5 5 2 6 [1,2,0,0,1,1]) using bank tags []
certRow g24733 on (row false true k319 5 5 2 6 [1,2,0,0,1,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g24734 on (row false false k295 5 5 2 6 [1,2,0,0,2,0]) using bank tags []
certRow g24735 on (row false true k319 5 5 2 6 [1,2,0,0,2,0]) using bank tags []
certRow g24736 on (row false false k295 5 5 2 6 [1,2,0,1,0,1]) using bank tags []
certRow g24737 on (row false true k319 5 5 2 6 [1,2,0,1,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,20,30,30,30,39,11,11,2,2,2,2,2,1,1]
certRow g24738 on (row false false k295 5 5 2 6 [1,2,0,1,1,0]) using bank tags []
certRow g24739 on (row false true k319 5 5 2 6 [1,2,0,1,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,20,20,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g24740 on (row false false k295 5 5 2 6 [1,2,0,2,0,0]) using bank tags []
certRow g24741 on (row false true k319 5 5 2 6 [1,2,0,2,0,0]) using bank tags []
certRow g24742 on (row false false k295 5 5 2 6 [1,2,1,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
