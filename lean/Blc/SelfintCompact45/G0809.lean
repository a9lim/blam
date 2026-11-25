import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24677 on (row false true k319 5 5 2 6 [1,0,2,1,0,1]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,0,2,1,0,1]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,0,2,1,0,1]) withHints bank eachTags[[20,39,20,39,39,12],[1,1,1,1,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1],[],[],[2,2,2,2,1,1,1],[]] except []
certRow g24678 on (row false false k295 5 5 2 6 [1,0,2,1,1,0]) using bank tags []
certRow g24679 on (row false true k319 5 5 2 6 [1,0,2,1,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,20,20,1,1,1,1,1,1,1,1]
certRow g24680 on (row false false k295 5 5 2 6 [1,0,2,2,0,0]) using bank tags []
certRow g24681 on (row false true k319 5 5 2 6 [1,0,2,2,0,0]) using bank tags []
certRow g24682 on (row false false k295 5 5 2 6 [1,0,3,0,0,1]) using bank tags []
certRow g24683 on (row false true k319 5 5 2 6 [1,0,3,0,0,1]) using bank tags []
certRow g24684 on (row false false k295 5 5 2 6 [1,0,3,0,1,0]) using bank tags []
certRow g24685 on (row false true k319 5 5 2 6 [1,0,3,0,1,0]) using bank tags []
certRow g24686 on (row false false k295 5 5 2 6 [1,0,3,1,0,0]) using bank tags []
certRow g24687 on (row false true k319 5 5 2 6 [1,0,3,1,0,0]) using bank tags []
certRow g24688 on (row false false k295 5 5 2 6 [1,0,4,0,0,0]) using bank tags []
certRow g24689 on (row false true k319 5 5 2 6 [1,0,4,0,0,0]) using bank tags []
certRow g24690 on (row false false k295 5 5 2 6 [1,1,0,0,0,3]) using bank tags []
certRow g24691 on (row false true k319 5 5 2 6 [1,1,0,0,0,3]) using bank tags []
certRow g24692 on (row false false k295 5 5 2 6 [1,1,0,0,1,2]) using bank tags []
certRow g24693 on (row false true k319 5 5 2 6 [1,1,0,0,1,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,2,2,2,2,1,1,2,2,2,2,1,1,1]
certRow g24694 on (row false false k295 5 5 2 6 [1,1,0,0,2,1]) using bank tags []
certRow g24695 on (row false true k319 5 5 2 6 [1,1,0,0,2,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,2,2,2,2,1,1,2,2,2,2,1,1,1,2,2,2,2,2]
certRow g24696 on (row false false k295 5 5 2 6 [1,1,0,0,3,0]) using bank tags []
certRow g24697 on (row false true k319 5 5 2 6 [1,1,0,0,3,0]) using bank tags []
certRow g24698 on (row false false k295 5 5 2 6 [1,1,0,1,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
