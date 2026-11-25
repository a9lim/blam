import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25525 on (row false true k323 5 5 3 6 [0,4,0,1,0,0]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,4,0,1,0,0]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,4,0,1,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25526 on (row false false k299 5 5 3 6 [0,4,1,0,0,0]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,4,1,0,0,0]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,4,1,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25527 on (row false true k323 5 5 3 6 [0,4,1,0,0,0]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,4,1,0,0,0]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,4,1,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g25528 : BadRow (row false false k299 5 5 3 6 [0,5,0,0,0,0]) := sparse_row false false k299 5 5 3 6 [0,5,0,0,0,0] (by decide)
theorem g25529 : BadRow (row false true k323 5 5 3 6 [0,5,0,0,0,0]) := sparse_row false true k323 5 5 3 6 [0,5,0,0,0,0] (by decide)
tagSlices g25530 on (row false false k299 5 5 3 6 [1,0,0,0,0,4]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [1,0,0,0,0,4]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [1,0,0,0,0,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25531 on (row false true k323 5 5 3 6 [1,0,0,0,0,4]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,0,0,0,0,4]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,0,0,0,0,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25532 on (row false false k299 5 5 3 6 [1,0,0,0,1,3]) byParts (fun j => piece 8 j false false k299 5 5 3 6 [1,0,0,0,1,3]) byCover (pieces_cover 8 (by decide) false false k299 5 5 3 6 [1,0,0,0,1,3]) withHints bank eachTags[[1,10],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[20,20,20,20,1,1],[2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]] except []
tagSlices g25533 on (row false true k323 5 5 3 6 [1,0,0,0,1,3]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,0,0,0,1,3]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,0,0,0,1,3]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25534 on (row false false k299 5 5 3 6 [1,0,0,0,2,2]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [1,0,0,0,2,2]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [1,0,0,0,2,2]) withHints bank eachTags[[1,1,1,1,1],[],[1,1,20,20,1,1,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1],[],[1,1,2,1,2,1,1,1,1,1,1,1,1,2,1,1,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[20,20,8,20,8,20],[1,1,2,1,1,1,1,1,1,1,1,1,1,1,2,1,2,1,1,1,1,1,1],[],[1,1,2,1]] except []
tagSlices g25535 on (row false true k323 5 5 3 6 [1,0,0,0,2,2]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,0,0,0,2,2]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,0,0,0,2,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
