import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13410 on (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,0,3,0]) using bank tags []
certRow g13411 on (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,0,3,0]) using bank tags []
private abbrev rg13412 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 5 [0,0,1,0,2]
certRow g13412s0 on (rg13412 0) using bank tags []
certRow g13412s1 on (rg13412 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g13412s2 on (rg13412 2) using bank tags [28,28,28,28]
certRow g13412s3 on (rg13412 3) using bank tags [28,28,28,28]
certRow g13412s4 on (rg13412 4) using bank tags [28,28,28,28,28,28,28,28,28,28,29,29,19,19,29,29,19,19,29,29,29,29,19,19,29,29,19,19,29,29]
certRow g13412s5 on (rg13412 5) using bank tags []
certRow g13412s6 on (rg13412 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13412s7 on (rg13412 7) using bank tags []
certRow g13412s8 on (rg13412 8) using bank tags []
certRow g13412s9 on (rg13412 9) using bank tags []
certRow g13412s10 on (rg13412 10) using bank tags [28,28,28,28,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,19,19,29,29,19,19,29,29,29,29,19,19,29,29,19,19,29,29,29,29,29,0,29,29,29,0,29,29,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817624501870,Floor44.e4818161372782,Floor44.e4817624501166,Floor44.e4818161372078]
certRow g13412s11 on (rg13412 11) using bank tags []
theorem g13412 (hard : BadRow [Floor44.e4817624501870,Floor44.e4818161372782,Floor44.e4817624501166,Floor44.e4818161372078]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,1,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 5 [0,0,1,0,2] (.cons (g13412s0) (.cons (g13412s1) (.cons (g13412s2) (.cons (g13412s3) (.cons (g13412s4) (.cons (g13412s5) (.cons (g13412s6) (.cons (g13412s7) (.cons (g13412s8) (.cons (g13412s9) (.cons (g13412s10 (.cons (hard.get (by decide : Floor44.e4817624501870 ∈ [Floor44.e4817624501870,Floor44.e4818161372782,Floor44.e4817624501166,Floor44.e4818161372078])) (.cons (hard.get (by decide : Floor44.e4818161372782 ∈ [Floor44.e4817624501870,Floor44.e4818161372782,Floor44.e4817624501166,Floor44.e4818161372078])) (.cons (hard.get (by decide : Floor44.e4817624501166 ∈ [Floor44.e4817624501870,Floor44.e4818161372782,Floor44.e4817624501166,Floor44.e4818161372078])) (.cons (hard.get (by decide : Floor44.e4818161372078 ∈ [Floor44.e4817624501870,Floor44.e4818161372782,Floor44.e4817624501166,Floor44.e4818161372078])) .nil))))) (.cons (g13412s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
