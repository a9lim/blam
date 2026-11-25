import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22618 on (row false false k278 5 3 2 5 [2,0,1,0,0]) byParts (fun j => piece 12 j false false k278 5 3 2 5 [2,0,1,0,0]) byCover (pieces_cover 12 (by decide) false false k278 5 3 2 5 [2,0,1,0,0]) withHints bank eachTags[[],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2],[14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2],[],[],[],[],[],[],[]] except []
certRow g22620 on (row false false k278 5 3 2 5 [2,1,0,0,0]) using bank tags [14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2,14,1,2,9,2,2]
theorem g22622 : BadRow (row false false k278 5 3 2 5 [3,0,0,0,0]) := sparse_row false false k278 5 3 2 5 [3,0,0,0,0] (by decide)
theorem g22978 : BadRow (row false false k284 5 4 2 3 [0,0,4]) := sparse_row false false k284 5 4 2 3 [0,0,4] (by decide)
certRow g22980 on (row false false k284 5 4 2 3 [0,1,3]) using bank tags []
certRow g22982 on (row false false k284 5 4 2 3 [0,2,2]) using bank tags []
certRow g22984 on (row false false k284 5 4 2 3 [0,3,1]) using bank tags []
theorem g22986 : BadRow (row false false k284 5 4 2 3 [0,4,0]) := sparse_row false false k284 5 4 2 3 [0,4,0] (by decide)
certRow g22988 on (row false false k284 5 4 2 3 [1,0,3]) using bank tags []
certRow g22990 on (row false false k284 5 4 2 3 [1,1,2]) using bank tags []
certRow g22992 on (row false false k284 5 4 2 3 [1,2,1]) using bank tags []
certRow g22994 on (row false false k284 5 4 2 3 [1,3,0]) using bank tags []
certRow g22996 on (row false false k284 5 4 2 3 [2,0,2]) using bank tags []
certRow g22998 on (row false false k284 5 4 2 3 [2,1,1]) using bank tags []
certRow g23000 on (row false false k284 5 4 2 3 [2,2,0]) using bank tags []
certRow g23002 on (row false false k284 5 4 2 3 [3,0,1]) using bank tags []
certRow g23004 on (row false false k284 5 4 2 3 [3,1,0]) using bank tags []
theorem g23006 : BadRow (row false false k284 5 4 2 3 [4,0,0]) := sparse_row false false k284 5 4 2 3 [4,0,0] (by decide)
theorem g23008 : BadRow (row false false k285 5 4 2 4 [0,0,0,4]) := sparse_row false false k285 5 4 2 4 [0,0,0,4] (by decide)
theorem g23009 : BadRow (row false true k309 5 4 2 4 [0,0,0,4]) := sparse_row false true k309 5 4 2 4 [0,0,0,4] (by decide)
end Blc.SelfintSingleObject.Compact45
