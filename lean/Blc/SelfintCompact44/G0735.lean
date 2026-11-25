import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13962 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [0,1,0,2,1]
certRow g13962s0 on (rg13962 0) using bank tags []
certRow g13962s1 on (rg13962 1) using bank tags [28,28,28,14,28,28,28,14,28,28,28,1,28,28,28,1,28,28,28,32]
certRow g13962s2 on (rg13962 2) using bank tags [28,28,28,1,28,28,28,1]
certRow g13962s3 on (rg13962 3) using bank tags [28,28,28,1,28,28,28,1]
certRow g13962s4 on (rg13962 4) using bank tags [28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1,28,28,28,1]
certRow g13962s5 on (rg13962 5) using bank tags []
certRow g13962s6 on (rg13962 6) using bank tags [28,28,28,26,28,28,28,15,28,28,28,1,28,28,28,1,28,28,28,26,1,29,29,31,29,1,29,1]
certRow g13962s7 on (rg13962 7) using bank tags [6,29,29,8,29,6,29,6,6,29,29,8,29,6,29,40]
certRow g13962s8 on (rg13962 8) using bank tags []
certRow g13962s9 on (rg13962 9) using bank tags []
certRow g13962s10 on (rg13962 10) using bank tags [1,29,29,8,29,1,29,6,35,29,29,6,29,35,29,1,35,29,29,6,29,35,29,1,0,29,29,6,29,0,29,1,0,29,29,6,29,0,29,1,0,29,29,6,29,0,29,1,19,19,19,29,32,19,19,29,28] except [Floor44.e5609631469410,Floor44.e4785155699958,Floor44.e5609631463266,Floor44.e4785155699574,Floor44.e5609631373154,Floor44.e4785155693942]
certRow g13962s11 on (rg13962 11) using bank tags []
theorem g13962 (hard : BadRow [Floor44.e5609631469410,Floor44.e4785155699958,Floor44.e5609631463266,Floor44.e4785155699574,Floor44.e5609631373154,Floor44.e4785155693942]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [0,1,0,2,1] (.cons (g13962s0) (.cons (g13962s1) (.cons (g13962s2) (.cons (g13962s3) (.cons (g13962s4) (.cons (g13962s5) (.cons (g13962s6) (.cons (g13962s7) (.cons (g13962s8) (.cons (g13962s9) (.cons (g13962s10 (.cons (hard.get (by decide : Floor44.e5609631469410 ∈ [Floor44.e5609631469410,Floor44.e4785155699958,Floor44.e5609631463266,Floor44.e4785155699574,Floor44.e5609631373154,Floor44.e4785155693942])) (.cons (hard.get (by decide : Floor44.e4785155699958 ∈ [Floor44.e5609631469410,Floor44.e4785155699958,Floor44.e5609631463266,Floor44.e4785155699574,Floor44.e5609631373154,Floor44.e4785155693942])) (.cons (hard.get (by decide : Floor44.e5609631463266 ∈ [Floor44.e5609631469410,Floor44.e4785155699958,Floor44.e5609631463266,Floor44.e4785155699574,Floor44.e5609631373154,Floor44.e4785155693942])) (.cons (hard.get (by decide : Floor44.e4785155699574 ∈ [Floor44.e5609631469410,Floor44.e4785155699958,Floor44.e5609631463266,Floor44.e4785155699574,Floor44.e5609631373154,Floor44.e4785155693942])) (.cons (hard.get (by decide : Floor44.e5609631373154 ∈ [Floor44.e5609631469410,Floor44.e4785155699958,Floor44.e5609631463266,Floor44.e4785155699574,Floor44.e5609631373154,Floor44.e4785155693942])) (.cons (hard.get (by decide : Floor44.e4785155693942 ∈ [Floor44.e5609631469410,Floor44.e4785155699958,Floor44.e5609631463266,Floor44.e4785155699574,Floor44.e5609631373154,Floor44.e4785155693942])) .nil))))))) (.cons (g13962s11) .nil))))))))))))
private abbrev rg13963 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [0,1,0,2,1]
certRow g13963s0 on (rg13963 0) using bank tags []
certRow g13963s1 on (rg13963 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13963s2 on (rg13963 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13963s3 on (rg13963 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13963s4 on (rg13963 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,27,57,1,1,29,1,29,1,1,1]
certRow g13963s5 on (rg13963 5) using bank tags []
certRow g13963s6 on (rg13963 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,1,1]
certRow g13963s7 on (rg13963 7) using bank tags [1,1,1,1,6,1,1,1,1,1,6,1,6,1,1,1,29,6,29,6,1,1,6,1,1,1,29,6,29,6,1,1]
certRow g13963s8 on (rg13963 8) using bank tags []
certRow g13963s9 on (rg13963 9) using bank tags []
certRow g13963s10 on (rg13963 10) using bank tags [1,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,19,12,19,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g13963s11 on (rg13963 11) using bank tags []
theorem g13963 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [0,1,0,2,1] (.cons (g13963s0) (.cons (g13963s1) (.cons (g13963s2) (.cons (g13963s3) (.cons (g13963s4) (.cons (g13963s5) (.cons (g13963s6) (.cons (g13963s7) (.cons (g13963s8) (.cons (g13963s9) (.cons (g13963s10) (.cons (g13963s11) .nil))))))))))))
certRow g13964 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,0,3,0]) using bank tags []
certRow g13965 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
