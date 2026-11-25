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
tagSlices g24707 on (row false true k319 5 5 2 6 [1,1,0,2,1,0]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,1,0,2,1,0]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,1,0,2,1,0]) withHints bank eachTags[[1,1,1,1,1,1,1],[2,2,2,2,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,2,2,2,2,1,1,1],[],[],[1,1,1,1,1,44,1,1,1,1,1],[1,1]] except []
certRow g24708 on (row false false k295 5 5 2 6 [1,1,0,3,0,0]) using bank tags []
certRow g24709 on (row false true k319 5 5 2 6 [1,1,0,3,0,0]) using bank tags []
certRow g24710 on (row false false k295 5 5 2 6 [1,1,1,0,0,2]) using bank tags []
certRow g24711 on (row false true k319 5 5 2 6 [1,1,1,0,0,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2]
theorem g24712 : BadRow (row false false k295 5 5 2 6 [1,1,1,0,1,1]) := sparse_row false false k295 5 5 2 6 [1,1,1,0,1,1] (by decide)
theorem g24713 : BadRow (row false true k319 5 5 2 6 [1,1,1,0,1,1]) := sparse_row false true k319 5 5 2 6 [1,1,1,0,1,1] (by decide)
certRow g24714 on (row false false k295 5 5 2 6 [1,1,1,0,2,0]) using bank tags []
tagSlices g24715 on (row false true k319 5 5 2 6 [1,1,1,0,2,0]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,1,1,0,2,0]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,1,1,0,2,0]) withHints bank eachTags[[],[2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,2,2,2,2,2,1,1],[],[],[1,1,1,1,1,44,1,44,1,1,1,1,1],[]] except []
theorem g24716 : BadRow (row false false k295 5 5 2 6 [1,1,1,1,0,1]) := sparse_row false false k295 5 5 2 6 [1,1,1,1,0,1] (by decide)
theorem g24717 : BadRow (row false true k319 5 5 2 6 [1,1,1,1,0,1]) := sparse_row false true k319 5 5 2 6 [1,1,1,1,0,1] (by decide)
theorem g24718 : BadRow (row false false k295 5 5 2 6 [1,1,1,1,1,0]) := sparse_row false false k295 5 5 2 6 [1,1,1,1,1,0] (by decide)
theorem g24719 : BadRow (row false true k319 5 5 2 6 [1,1,1,1,1,0]) := sparse_row false true k319 5 5 2 6 [1,1,1,1,1,0] (by decide)
certRow g24720 on (row false false k295 5 5 2 6 [1,1,1,2,0,0]) using bank tags []
certRow g24721 on (row false true k319 5 5 2 6 [1,1,1,2,0,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,1,1,1,1,2,2,2,1,2,2,2,1,1,1,44,1,1,1]
certRow g24722 on (row false false k295 5 5 2 6 [1,1,2,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
