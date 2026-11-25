import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g18905 on (row false true k214 7 3 3 4 [0,2,0,1]) byParts (fun j => piece 12 j false true k214 7 3 3 4 [0,2,0,1]) byCover (pieces_cover 12 (by decide) false true k214 7 3 3 4 [0,2,0,1]) withHints bank eachTags[[],[3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1],[3,13,1,1,6,6,6,9,6,1,3,13,1,1],[3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1],[3,13,1,1,6,6,6,33,6,1,33,13,1,1,3,13,1,1,6,6,6,33,6,1,33,13,1,1],[3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1],[],[],[],[],[],[]] except []
certRow g18906 on (row false false k178 7 3 3 4 [0,2,1,0]) using bank tags [3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,33,6,6]
certRow g18907 on (row false true k214 7 3 3 4 [0,2,1,0]) using bank tags [3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,33,6,1,33,13,1,1]
theorem g18908 : BadRow (row false false k178 7 3 3 4 [0,3,0,0]) := sparse_row false false k178 7 3 3 4 [0,3,0,0] (by decide)
theorem g18909 : BadRow (row false true k214 7 3 3 4 [0,3,0,0]) := sparse_row false true k214 7 3 3 4 [0,3,0,0] (by decide)
certRow g18910 on (row false false k178 7 3 3 4 [1,0,0,2]) using bank tags [3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6]
certRow g18911 on (row false true k214 7 3 3 4 [1,0,0,2]) using bank tags [3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1]
theorem g18912 : BadRow (row false false k178 7 3 3 4 [1,0,1,1]) := sparse_row false false k178 7 3 3 4 [1,0,1,1] (by decide)
theorem g18913 : BadRow (row false true k214 7 3 3 4 [1,0,1,1]) := sparse_row false true k214 7 3 3 4 [1,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
