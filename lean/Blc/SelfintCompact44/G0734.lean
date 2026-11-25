import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13960 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [0,1,0,1,2]
certRow g13960s0 on (rg13960 0) using bank tags []
certRow g13960s1 on (rg13960 1) using bank tags [28,28,28,14,28,28,28,14,28,28,28,1,28,28,28,14,28,28,28,1]
certRow g13960s2 on (rg13960 2) using bank tags [28,28,28,1,28,28,28,1]
certRow g13960s3 on (rg13960 3) using bank tags [28,28,28,1,28,28,28,1]
certRow g13960s4 on (rg13960 4) using bank tags [28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1]
certRow g13960s5 on (rg13960 5) using bank tags []
certRow g13960s6 on (rg13960 6) using bank tags [28,28,28,15,28,28,28,15,28,28,28,1,28,28,28,15,28,28,28,1,1,29,29,1,29,1,29,1]
certRow g13960s7 on (rg13960 7) using bank tags []
certRow g13960s8 on (rg13960 8) using bank tags []
certRow g13960s9 on (rg13960 9) using bank tags []
certRow g13960s10 on (rg13960 10) using bank tags [1,29,29,8,29,1,29,0,6,29,29,6,29,6,29,1,6,29,29,6,29,6,29,1,0,29,29,6,29,0,29,1,0,29,29,6,29,0,29,1,0,29,29,6,29,0,29,1,19,19,19,29,32,19,19,29,28] except [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934]
certRow g13960s11 on (rg13960 11) using bank tags []
theorem g13960 (hard : BadRow [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [0,1,0,1,2] (.cons (g13960s0) (.cons (g13960s1) (.cons (g13960s2) (.cons (g13960s3) (.cons (g13960s4) (.cons (g13960s5) (.cons (g13960s6) (.cons (g13960s7) (.cons (g13960s8) (.cons (g13960s9) (.cons (g13960s10 (.cons (hard.get (by decide : Floor44.e4778693954414 ∈ [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934])) (.cons (hard.get (by decide : Floor44.e5609631469282 ∈ [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934])) (.cons (hard.get (by decide : Floor44.e4785155699950 ∈ [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934])) (.cons (hard.get (by decide : Floor44.e5609631463138 ∈ [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934])) (.cons (hard.get (by decide : Floor44.e4785155699566 ∈ [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934])) (.cons (hard.get (by decide : Floor44.e5609631373026 ∈ [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934])) (.cons (hard.get (by decide : Floor44.e4785155693934 ∈ [Floor44.e4778693954414,Floor44.e5609631469282,Floor44.e4785155699950,Floor44.e5609631463138,Floor44.e4785155699566,Floor44.e5609631373026,Floor44.e4785155693934])) .nil)))))))) (.cons (g13960s11) .nil))))))))))))
private abbrev rg13961 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [0,1,0,1,2]
certRow g13961s0 on (rg13961 0) using bank tags []
certRow g13961s1 on (rg13961 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13961s2 on (rg13961 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13961s3 on (rg13961 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13961s4 on (rg13961 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,27,57,1,1,29,1,29,1,1,1]
certRow g13961s5 on (rg13961 5) using bank tags []
certRow g13961s6 on (rg13961 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,1,1]
certRow g13961s7 on (rg13961 7) using bank tags []
certRow g13961s8 on (rg13961 8) using bank tags []
certRow g13961s9 on (rg13961 9) using bank tags []
certRow g13961s10 on (rg13961 10) using bank tags [1,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,19,12,19,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g13961s11 on (rg13961 11) using bank tags []
theorem g13961 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [0,1,0,1,2] (.cons (g13961s0) (.cons (g13961s1) (.cons (g13961s2) (.cons (g13961s3) (.cons (g13961s4) (.cons (g13961s5) (.cons (g13961s6) (.cons (g13961s7) (.cons (g13961s8) (.cons (g13961s9) (.cons (g13961s10) (.cons (g13961s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
