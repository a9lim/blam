import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8926 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,1,1,3,0]) using bank tags []
certRow g8927 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,1,1,3,0]) using bank tags []
certRow g8928 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,1,2,0,2]) using bank tags []
certRow g8929 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,1,2,0,2]) using bank tags [28]
certRow g8930 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,1,2,1,1]) using bank tags []
certRow g8931 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,1,2,1,1]) using bank tags []
certRow g8932 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,1,2,2,0]) using bank tags []
certRow g8933 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,1,2,2,0]) using bank tags []
certRow g8934 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,1,3,0,1]) using bank tags []
certRow g8935 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,1,3,0,1]) using bank tags []
certRow g8936 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,1,3,1,0]) using bank tags []
certRow g8937 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,1,3,1,0]) using bank tags []
certRow g8938 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,1,4,0,0]) using bank tags []
certRow g8939 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,1,4,0,0]) using bank tags []
certRow g8940 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,2,0,0,3]) using bank tags []
certRow g8941 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,2,0,0,3]) using bank tags []
certRow g8942 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,2,0,1,2]) using bank tags []
certRow g8943 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,2,0,1,2]) using bank tags [28,28,28,28,29,48]
certRow g8944 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,2,0,2,1]) using bank tags []
certRow g8945 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,2,0,2,1]) using bank tags [28,28,29,48]
certRow g8946 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,2,0,3,0]) using bank tags []
certRow g8947 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,2,0,3,0]) using bank tags []
certRow g8948 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [0,2,1,0,2]) using bank tags []
certRow g8949 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [0,2,1,0,2]) using bank tags [28,28,28,28,28,29,48,29,48]
end Blc.SelfintSingleObject.Compact44
