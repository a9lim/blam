import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13376 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 4 [0,1,2,0]
certRow g13376s0 on (rg13376 0) using bank tags []
certRow g13376s1 on (rg13376 1) using bank tags [28,28,57,26,28,28,57,15,14,28,28,14]
certRow g13376s2 on (rg13376 2) using bank tags [28,28,57,1,28,28,57,1,1,28,28,1]
certRow g13376s3 on (rg13376 3) using bank tags [28,28,57,1,28,28,57,1,1,28,28,1]
certRow g13376s4 on (rg13376 4) using bank tags []
certRow g13376s5 on (rg13376 5) using bank tags [28,28,57,6,28,28,57,30,26,28,28,26,29,29,29,29,29,29,6,29,22,29,0,29,22,29,29,29,29,29,29,6,29,0,29,35,29,22,29,35,29,29,29,29,29,29,0,29,0,29,22,29,29,29,29,29] except [Floor44.e4836586950266,Floor44.e4816487845498,Floor44.e4818098458234,Floor44.e4816622063226]
certRow g13376s6 on (rg13376 6) using bank tags []
certRow g13376s7 on (rg13376 7) using bank tags []
certRow g13376s8 on (rg13376 8) using bank tags []
certRow g13376s9 on (rg13376 9) using bank tags []
certRow g13376s10 on (rg13376 10) using bank tags []
certRow g13376s11 on (rg13376 11) using bank tags []
theorem g13376 (hard : BadRow [Floor44.e4836586950266,Floor44.e4816487845498,Floor44.e4818098458234,Floor44.e4816622063226]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 4 [0,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 4 [0,1,2,0] (.cons (g13376s0) (.cons (g13376s1) (.cons (g13376s2) (.cons (g13376s3) (.cons (g13376s4) (.cons (g13376s5 (.cons (hard.get (by decide : Floor44.e4836586950266 ∈ [Floor44.e4836586950266,Floor44.e4816487845498,Floor44.e4818098458234,Floor44.e4816622063226])) (.cons (hard.get (by decide : Floor44.e4816487845498 ∈ [Floor44.e4836586950266,Floor44.e4816487845498,Floor44.e4818098458234,Floor44.e4816622063226])) (.cons (hard.get (by decide : Floor44.e4818098458234 ∈ [Floor44.e4836586950266,Floor44.e4816487845498,Floor44.e4818098458234,Floor44.e4816622063226])) (.cons (hard.get (by decide : Floor44.e4816622063226 ∈ [Floor44.e4836586950266,Floor44.e4816487845498,Floor44.e4818098458234,Floor44.e4816622063226])) .nil))))) (.cons (g13376s6) (.cons (g13376s7) (.cons (g13376s8) (.cons (g13376s9) (.cons (g13376s10) (.cons (g13376s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
