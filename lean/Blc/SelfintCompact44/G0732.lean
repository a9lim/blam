import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13943 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [0,0,1,2,1]
certRow g13943s0 on (rg13943 0) using bank tags []
certRow g13943s1 on (rg13943 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13943s2 on (rg13943 2) using bank tags []
certRow g13943s3 on (rg13943 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13943s4 on (rg13943 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13943s5 on (rg13943 5) using bank tags []
certRow g13943s6 on (rg13943 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13943s7 on (rg13943 7) using bank tags [1,1,1,1,6,1,1,1,1,1,29,6,29,1,1,1]
certRow g13943s8 on (rg13943 8) using bank tags []
certRow g13943s9 on (rg13943 9) using bank tags []
certRow g13943s10 on (rg13943 10) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13943s11 on (rg13943 11) using bank tags []
theorem g13943 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,1,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [0,0,1,2,1] (.cons (g13943s0) (.cons (g13943s1) (.cons (g13943s2) (.cons (g13943s3) (.cons (g13943s4) (.cons (g13943s5) (.cons (g13943s6) (.cons (g13943s7) (.cons (g13943s8) (.cons (g13943s9) (.cons (g13943s10) (.cons (g13943s11) .nil))))))))))))
certRow g13944 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,1,3,0]) using bank tags []
certRow g13945 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,1,3,0]) using bank tags []
certRow g13946 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,2,0,2]) using bank tags []
certRow g13947 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,2,0,2]) using bank tags []
certRow g13948 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,2,1,1]) using bank tags [28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,14,28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,15,28,28,28,1,28,28,28,1,90,29,29,8,29,90,29,98,0,29,29,1,29,0,29,1,0,29,29,1,29,0,29,1,0,29,29,55,29,0,29,1] except [Floor44.e5609631442786,Floor44.e4785155698294,Floor44.e5609631415138,Floor44.e4785155696566,Floor44.e5609631365986,Floor44.e4785155693494]
end Blc.SelfintSingleObject.Compact44
