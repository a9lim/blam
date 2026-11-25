import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data07
import Blc.SelfintCompact45.Frames.Data11
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12017 on (row false true k139 6 4 2 4 [1,0,1,2]) using bank tags [2,2,14,2,2,14,2,2,14,2,2,14,2,2,14,32,3,1,3,17,1]
tagSlices g12018 on (row false false k94 6 4 2 4 [1,0,2,1]) byParts (fun j => piece 12 j false false k94 6 4 2 4 [1,0,2,1]) byCover (pieces_cover 12 (by decide) false false k94 6 4 2 4 [1,0,2,1]) withHints bank eachTags[[],[14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,33,2,2,10,2,2],[14,1,2,1,2,2,2,36,2,2,18,2,2],[14,1,2,1,2,2,2,36,2,2,1,2,2,14,1,2,1,2,2,2,20,2,2,36,2,2],[],[44,44,5,44,1,8,8,44,44,1,8,8,8,8,44,1,44,2,44,44,9,8,8,44,2,8,8,44,33],[],[],[],[],[],[]] except []
certRow g12019 on (row false true k139 6 4 2 4 [1,0,2,1]) using bank tags [2,2,14,2,2,14,2,2,14,2,2,14,2,2,14,33,3,33,3,17,1]
certRow g12020 on (row false false k94 6 4 2 4 [1,0,3,0]) using bank tags []
certRow g12021 on (row false true k139 6 4 2 4 [1,0,3,0]) using bank tags []
tagSlices g12022 on (row false false k94 6 4 2 4 [1,1,0,2]) byParts (fun j => piece 12 j false false k94 6 4 2 4 [1,1,0,2]) byCover (pieces_cover 12 (by decide) false false k94 6 4 2 4 [1,1,0,2]) withHints bank eachTags[[],[14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,33,2,2,10,2,2],[14,1,2,1,2,2,2,33,2,2,10,2,2],[14,1,2,1,2,2,2,33,2,2,10,2,2,14,1,2,1,2,2,2,33,2,2,10,2,2],[],[44,44,5,44,1,44,1,44,44,1,44,1,44,20,44,1,44,2,44,44,9,44,24,44,2,44,1,44,33,44,44,5,44,1,44,1,44,44,1,44,1,44,20,44,1,44,2,44,44,9,44,24,44,2,44,1,44,33],[],[],[],[],[],[]] except []
certRow g12023 on (row false true k139 6 4 2 4 [1,1,0,2]) using bank tags [2,2,14,2,2,14,2,2,14,2,2,14,2,2,14,35,3,35,3,17,1,17,3,20,3,1,1]
theorem g12024 : BadRow (row false false k94 6 4 2 4 [1,1,1,1]) := sparse_row false false k94 6 4 2 4 [1,1,1,1] (by decide)
theorem g12025 : BadRow (row false true k139 6 4 2 4 [1,1,1,1]) := sparse_row false true k139 6 4 2 4 [1,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
