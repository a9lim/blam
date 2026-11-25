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
certRow g25266 on (row false false k298 5 5 3 5 [3,2,0,0,0]) using bank tags []
certRow g25268 on (row false false k298 5 5 3 5 [4,0,0,0,1]) using bank tags []
certRow g25270 on (row false false k298 5 5 3 5 [4,0,0,1,0]) using bank tags []
certRow g25272 on (row false false k298 5 5 3 5 [4,0,1,0,0]) using bank tags []
certRow g25274 on (row false false k298 5 5 3 5 [4,1,0,0,0]) using bank tags []
theorem g25276 : BadRow (row false false k298 5 5 3 5 [5,0,0,0,0]) := sparse_row false false k298 5 5 3 5 [5,0,0,0,0] (by decide)
theorem g25278 : BadRow (row false false k299 5 5 3 6 [0,0,0,0,0,5]) := sparse_row false false k299 5 5 3 6 [0,0,0,0,0,5] (by decide)
theorem g25279 : BadRow (row false true k323 5 5 3 6 [0,0,0,0,0,5]) := sparse_row false true k323 5 5 3 6 [0,0,0,0,0,5] (by decide)
tagSlices g25280 on (row false false k299 5 5 3 6 [0,0,0,0,1,4]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,0,0,0,1,4]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,0,0,0,1,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25281 on (row false true k323 5 5 3 6 [0,0,0,0,1,4]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,0,0,1,4]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,0,0,1,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25282 on (row false false k299 5 5 3 6 [0,0,0,0,2,3]) byParts (fun j => piece 8 j false false k299 5 5 3 6 [0,0,0,0,2,3]) byCover (pieces_cover 8 (by decide) false false k299 5 5 3 6 [0,0,0,0,2,3]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,1,1,1,1,1,1,1,1,1,1,8,8,44,0,44,0,8,8,8,8],[2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2],[2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]] except [Floor45.e9692869570014]
tagSlices g25283 on (row false true k323 5 5 3 6 [0,0,0,0,2,3]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,0,0,2,3]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,0,0,2,3]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25284 on (row false false k299 5 5 3 6 [0,0,0,0,3,2]) byParts (fun j => piece 8 j false false k299 5 5 3 6 [0,0,0,0,3,2]) byCover (pieces_cover 8 (by decide) false false k299 5 5 3 6 [0,0,0,0,3,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,1,1,1,1,1,1,1,1,1,1,8,8,44,0,44,0,8,8,8,8],[2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2],[2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]] except [Floor45.e9692869570030]
tagSlices g25285 on (row false true k323 5 5 3 6 [0,0,0,0,3,2]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,0,0,3,2]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,0,0,3,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25286 on (row false false k299 5 5 3 6 [0,0,0,0,4,1]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,0,0,0,4,1]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,0,0,0,4,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25287 on (row false true k323 5 5 3 6 [0,0,0,0,4,1]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,0,0,4,1]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,0,0,4,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g25288 : BadRow (row false false k299 5 5 3 6 [0,0,0,0,5,0]) := sparse_row false false k299 5 5 3 6 [0,0,0,0,5,0] (by decide)
theorem g25289 : BadRow (row false true k323 5 5 3 6 [0,0,0,0,5,0]) := sparse_row false true k323 5 5 3 6 [0,0,0,0,5,0] (by decide)
tagSlices g25290 on (row false false k299 5 5 3 6 [0,0,0,1,0,4]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,0,0,1,0,4]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,0,0,1,0,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25291 on (row false true k323 5 5 3 6 [0,0,0,1,0,4]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,0,0,1,0,4]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,0,0,1,0,4]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
