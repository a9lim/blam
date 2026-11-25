import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g18898 on (row false false k178 7 3 3 4 [0,1,0,2]) using bank tags [3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,33,6,6,3,6,6,6,6,33,6,6]
tagSlices g18899 on (row false true k214 7 3 3 4 [0,1,0,2]) byParts (fun j => piece 12 j false true k214 7 3 3 4 [0,1,0,2]) byCover (pieces_cover 12 (by decide) false true k214 7 3 3 4 [0,1,0,2]) withHints bank eachTags[[],[3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1],[3,13,1,1,6,6,6,9,6,1,3,13,1,1],[3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1],[3,13,1,1,6,6,6,33,6,1,33,13,1,1,3,13,1,1,6,6,6,33,6,1,33,13,1,1],[3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1],[],[],[],[],[],[]] except []
certRow g18900 on (row false false k178 7 3 3 4 [0,1,1,1]) using bank tags []
certRow g18901 on (row false true k214 7 3 3 4 [0,1,1,1]) using bank tags []
certRow g18902 on (row false false k178 7 3 3 4 [0,1,2,0]) using bank tags [3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,33,6,6]
certRow g18903 on (row false true k214 7 3 3 4 [0,1,2,0]) using bank tags [3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,33,6,1,33,13,1,1]
certRow g18904 on (row false false k178 7 3 3 4 [0,2,0,1]) using bank tags [3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,33,6,6,3,6,6,6,6,33,6,6]
end Blc.SelfintSingleObject.Compact45
