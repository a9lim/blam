import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13936 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,0,4,0]) using bank tags []
certRow g13937 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,0,4,0]) using bank tags []
certRow g13938 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,1,0,3]) using bank tags []
certRow g13939 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,1,0,3]) using bank tags []
certRow g13940 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,1,1,2]) using bank tags [28,28,28,1,28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,14,28,28,28,1,28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,15,28,28,28,1,6,29,29,1,29,6,29,1,0,29,29,1,29,0,29,1,0,29,29,55,29,0,29,1] except [Floor44.e5609631413986,Floor44.e4785155696494,Floor44.e5609631364834,Floor44.e4785155693422]
certRow g13941 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,1,1,2]) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13942 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,1,2,1]) using bank tags [28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,0,29,29,8,29,0,29,0,6,29,29,1,29,6,29,1,0,29,29,1,29,0,29,1,0,29,29,55,29,0,29,1] except [Floor44.e5609319937890,Floor44.e4785136229238,Floor44.e4778693778294,Floor44.e5609631414114,Floor44.e4785155696502,Floor44.e5609631364962,Floor44.e4785155693430]
end Blc.SelfintSingleObject.Compact44
