import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data14
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g17755 on (row false true k170 6 7 3 5 [5,1,1,0,0]) using bank tags []
certRow g17756 on (row false false k125 6 7 3 5 [5,2,0,0,0]) using bank tags []
certRow g17757 on (row false true k170 6 7 3 5 [5,2,0,0,0]) using bank tags []
certRow g17758 on (row false false k125 6 7 3 5 [6,0,0,0,1]) using bank tags []
certRow g17759 on (row false true k170 6 7 3 5 [6,0,0,0,1]) using bank tags []
certRow g17760 on (row false false k125 6 7 3 5 [6,0,0,1,0]) using bank tags []
certRow g17761 on (row false true k170 6 7 3 5 [6,0,0,1,0]) using bank tags []
certRow g17762 on (row false false k125 6 7 3 5 [6,0,1,0,0]) using bank tags []
certRow g17763 on (row false true k170 6 7 3 5 [6,0,1,0,0]) using bank tags []
certRow g17764 on (row false false k125 6 7 3 5 [6,1,0,0,0]) using bank tags []
certRow g17765 on (row false true k170 6 7 3 5 [6,1,0,0,0]) using bank tags []
certRow g17766 on (row false false k125 6 7 3 5 [7,0,0,0,0]) using bank tags []
certRow g17767 on (row false true k170 6 7 3 5 [7,0,0,0,0]) using bank tags []
certRow g18080 on (row false false k128 6 7 4 5 [0,0,0,0,7]) using bank tags []
certRow g18082 on (row false false k128 6 7 4 5 [0,0,0,1,6]) using bank tags []
certRow g18084 on (row false false k128 6 7 4 5 [0,0,0,2,5]) using bank tags []
tagSlices g18086 on (row false false k128 6 7 4 5 [0,0,0,3,4]) byParts (fun j => piece 8 j false false k128 6 7 4 5 [0,0,0,3,4]) byCover (pieces_cover 8 (by decide) false false k128 6 7 4 5 [0,0,0,3,4]) withHints bank eachTags[[],[],[2,2,2,2,2,2],[2,2,2,2],[2,2,2,2],[2,2],[2,2,2,2],[2,2,2,2,20,20,1,1]] except []
tagSlices g18088 on (row false false k128 6 7 4 5 [0,0,0,4,3]) byParts (fun j => piece 8 j false false k128 6 7 4 5 [0,0,0,4,3]) byCover (pieces_cover 8 (by decide) false false k128 6 7 4 5 [0,0,0,4,3]) withHints bank eachTags[[],[],[2,2,2,2,2,2],[2,2,2,2],[2,2,2,2],[2,2],[2,2,2,2],[2,2,2,2,20,20,1,1]] except []
certRow g18090 on (row false false k128 6 7 4 5 [0,0,0,5,2]) using bank tags []
certRow g18092 on (row false false k128 6 7 4 5 [0,0,0,6,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
