import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow g12790 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [0,3,1,0,0]) byParts (fun i => ShellSplit.five 4 i 7 7 4 false 4 3 5 [0,3,1,0,0]) byCover (ShellSplit.five_cover 4 (by decide) 7 7 4 false 4 3 5 [0,3,1,0,0]) slices 4 withHints bank tags [] except []
certRow g12791 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [0,3,1,0,0]) using bank tags []
certRow g12792 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [0,4,0,0,0]) using bank tags []
certRow g12793 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [0,4,0,0,0]) using bank tags []
certRow g12794 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,0,0,3]) using bank tags []
certRow g12795 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,0,0,3]) using bank tags []
certRow g12796 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,0,1,2]) using bank tags [29,29]
certRow g12797 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,0,1,2]) using bank tags []
certRow g12798 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,0,2,1]) using bank tags [29,29]
certRow g12799 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,0,2,1]) using bank tags []
certRow g12800 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,0,3,0]) using bank tags []
certRow g12801 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,0,3,0]) using bank tags []
certRow g12802 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,1,0,2]) using bank tags [29,29,29,29]
certRow g12803 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,1,0,2]) using bank tags []
certRow g12804 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,1,1,1]) using bank tags []
certRow g12805 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,1,1,1]) using bank tags []
certRow g12806 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,1,2,0]) using bank tags [29,29,29,29]
certRow g12807 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,1,2,0]) using bank tags []
certRow g12808 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,2,0,1]) using bank tags [29,29,29,29]
certRow g12809 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,2,0,1]) using bank tags []
certRow g12810 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,2,1,0]) using bank tags [29,29,29,29]
certRow g12811 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,2,1,0]) using bank tags []
certRow g12812 on (Grammar43.fiveRow 7 7 4 false 4 3 5 [1,0,3,0,0]) using bank tags []
certRow g12813 on (Grammar43.fiveRow 7 7 4 true 4 3 5 [1,0,3,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
