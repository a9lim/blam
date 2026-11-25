import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23023 on (row false true k309 5 4 2 4 [0,1,2,1]) byParts (fun j => piece 12 j false true k309 5 4 2 4 [0,1,2,1]) byCover (pieces_cover 12 (by decide) false true k309 5 4 2 4 [0,1,2,1]) withHints bank eachTags[[],[],[2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,20,11,1,1,1,12,1,20,21,21,1,1,12,1,20,20,20,1,1,12,1,1,1,1],[2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,21,11,1,1,1,12,1,1,21,36,1,1,12,1,20,20,21,1,1,12,1,1,1,1,2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,21,11,1,1,1,12,1,1,21,20,1,1,12,1,21,20,20,1,1,12,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g23024 on (row false false k285 5 4 2 4 [0,1,3,0]) using bank tags []
certRow g23025 on (row false true k309 5 4 2 4 [0,1,3,0]) using bank tags []
certRow g23026 on (row false false k285 5 4 2 4 [0,2,0,2]) using bank tags []
certRow g23027 on (row false true k309 5 4 2 4 [0,2,0,2]) using bank tags []
certRow g23028 on (row false false k285 5 4 2 4 [0,2,1,1]) using bank tags [2,2,12,1,2,2,12,1,1,2,2,1,2,2,12,1,2,2,12,1,1,2,2,1,2,2,12,1,2,2,12,1,1,2,2,1]
tagSlices g23029 on (row false true k309 5 4 2 4 [0,2,1,1]) byParts (fun j => piece 12 j false true k309 5 4 2 4 [0,2,1,1]) byCover (pieces_cover 12 (by decide) false true k309 5 4 2 4 [0,2,1,1]) withHints bank eachTags[[],[],[2,14,2,14,2,14,37,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,20,11,1,1,1,12,37,20,20,36,1,1,12,1,20,20,20,1,1,12,1,1,1,1],[2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,21,11,1,1,1,12,1,20,20,36,1,1,12,1,20,1,20,1,1,12,1,1,1,1,2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,20,11,1,1,1,12,1,20,20,36,1,1,12,1,20,1,41,1,1,12,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g23030 on (row false false k285 5 4 2 4 [0,2,2,0]) using bank tags []
certRow g23031 on (row false true k309 5 4 2 4 [0,2,2,0]) using bank tags []
certRow g23032 on (row false false k285 5 4 2 4 [0,3,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
