import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24653 on (row false true k319 5 5 2 6 [1,0,1,0,1,2]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,0,1,0,1,2]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,0,1,0,1,2]) withHints bank eachTags[[],[1,1,1,1,1,44,1,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,44,1,1,12],[],[],[],[12,1]] except []
certRow g24654 on (row false false k295 5 5 2 6 [1,0,1,0,2,1]) using bank tags []
tagSlices g24655 on (row false true k319 5 5 2 6 [1,0,1,0,2,1]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,0,1,0,2,1]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,0,1,0,2,1]) withHints bank eachTags[[],[1,1,1,1,1,44,1,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,44,1,1,12,1,1],[],[],[2,2,2,2,2,2,2,1,1,1,1],[12,1]] except []
certRow g24656 on (row false false k295 5 5 2 6 [1,0,1,0,3,0]) using bank tags []
certRow g24657 on (row false true k319 5 5 2 6 [1,0,1,0,3,0]) using bank tags []
certRow g24658 on (row false false k295 5 5 2 6 [1,0,1,1,0,2]) using bank tags []
tagSlices g24659 on (row false true k319 5 5 2 6 [1,0,1,1,0,2]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,0,1,1,0,2]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,0,1,1,0,2]) withHints bank eachTags[[],[1,1,1,1,1,44,1,44,1,1,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,44,1,44,1,1,1,12,12],[],[],[],[12,1,12,1]] except []
certRow g24660 on (row false false k295 5 5 2 6 [1,0,1,1,1,1]) using bank tags []
certRow g24661 on (row false true k319 5 5 2 6 [1,0,1,1,1,1]) using bank tags []
certRow g24662 on (row false false k295 5 5 2 6 [1,0,1,1,2,0]) using bank tags []
certRow g24663 on (row false true k319 5 5 2 6 [1,0,1,1,2,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,44,1,1,12,1,1,1,44,1,1,12,1,1,1,1]
certRow g24664 on (row false false k295 5 5 2 6 [1,0,1,2,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
