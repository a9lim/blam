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
tagSlices g25313 on (row false true k323 5 5 3 6 [0,0,0,3,2,0]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,0,3,2,0]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,0,3,2,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25314 on (row false false k299 5 5 3 6 [0,0,0,4,0,1]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,0,0,4,0,1]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,0,0,4,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25315 on (row false true k323 5 5 3 6 [0,0,0,4,0,1]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,0,4,0,1]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,0,4,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25316 on (row false false k299 5 5 3 6 [0,0,0,4,1,0]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,0,0,4,1,0]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,0,0,4,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25317 on (row false true k323 5 5 3 6 [0,0,0,4,1,0]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,0,4,1,0]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,0,4,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g25318 : BadRow (row false false k299 5 5 3 6 [0,0,0,5,0,0]) := sparse_row false false k299 5 5 3 6 [0,0,0,5,0,0] (by decide)
theorem g25319 : BadRow (row false true k323 5 5 3 6 [0,0,0,5,0,0]) := sparse_row false true k323 5 5 3 6 [0,0,0,5,0,0] (by decide)
tagSlices g25320 on (row false false k299 5 5 3 6 [0,0,1,0,0,4]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,0,1,0,0,4]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,0,1,0,0,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25321 on (row false true k323 5 5 3 6 [0,0,1,0,0,4]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,1,0,0,4]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,1,0,0,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25322 on (row false false k299 5 5 3 6 [0,0,1,0,1,3]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,0,1,0,1,3]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,0,1,0,1,3]) withHints bank eachTags[[],[2,2,2,2],[2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,20,20,20,20,20,8,8,8,8,44,0,8,8,44,0,44,20,44,0,44,20],[2,2,2,2],[],[],[],[2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1],[2,2,2,2],[8,8,8,8,8,8,8,8],[2,2,2,2]] except [Floor45.e9692721452766,Floor45.e9692869695966]
tagSlices g25323 on (row false true k323 5 5 3 6 [0,0,1,0,1,3]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,1,0,1,3]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,1,0,1,3]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25324 on (row false false k299 5 5 3 6 [0,0,1,0,2,2]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,0,1,0,2,2]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,0,1,0,2,2]) withHints bank eachTags[[20,20,20,20,20,2,2,2,2,1,1,1,1,1,20,20,20,20,20,20,44,20,20,44,20,20,44,20,20,44,20,20,44,20],[],[28,28,20,20,20,20,20,20,20,20,20,20,20,20,20,20,1,1,1,1,1,1,1,44,1,44,1,1,1,1,44,1,1,44,1,44,1,21,20,20,20,20,20,20,20,20,20,289,20,21,20,21],[],[20,20,21,21,20,20,20,1,1,1,1,1,1,1,1,1,1],[],[20,20,20,20,20,2,2,2,1,2,1,1,2,2,2,20,1,1,20,20,2,2,21,1,1,21,21,1,21,21],[2,2],[2,2,1,1,2,2,2,1,2,1,1],[1,1,2,2,2,1,2,1,1],[8,8,8,8,8,8,8,8,8,8],[]] except []
end Blc.SelfintSingleObject.Compact45
