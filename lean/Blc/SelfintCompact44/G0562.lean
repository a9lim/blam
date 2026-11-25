import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow g12022 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,1,0,2]) byParts (fun i => ShellSplit.five 4 i 7 7 4 false 3 3 4 [0,1,0,2]) byCover (ShellSplit.five_cover 4 (by decide) 7 7 4 false 3 3 4 [0,1,0,2]) slices 4 withHints bank tags [3, 20, 27, 48] except []
certRow g12023 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,1,0,2]) using bank tags [3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1]
certRow g12024 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,1,1,1]) using bank tags []
certRow g12025 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,1,1,1]) using bank tags []
certRow g12026 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,1,2,0]) using bank tags [3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,20,3,3,20]
certRow g12027 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,1,2,0]) using bank tags [3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1]
certRow g12028 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,2,0,1]) using bank tags [3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,20,3,3,20,3,3,3,3,20,3,3,20]
certRow g12029 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,2,0,1]) using bank tags [3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1]
certRow g12030 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,2,1,0]) using bank tags [3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,20,3,3,20]
certRow g12031 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,2,1,0]) using bank tags [3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1]
end Blc.SelfintSingleObject.Compact44
