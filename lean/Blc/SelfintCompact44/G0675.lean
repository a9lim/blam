import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13380 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 4 [0,2,1,0]
certRow g13380s0 on (rg13380 0) using bank tags []
certRow g13380s1 on (rg13380 1) using bank tags [28,28,57,14,28,28,57,14,26,28,28,15]
certRow g13380s2 on (rg13380 2) using bank tags [28,28,57,1,28,28,57,1,1,28,28,1]
certRow g13380s3 on (rg13380 3) using bank tags [28,28,57,1,28,28,57,1,1,28,28,1]
certRow g13380s4 on (rg13380 4) using bank tags []
certRow g13380s5 on (rg13380 5) using bank tags [28,28,57,30,28,28,57,32,31,28,28,32,29,29,29,29,29,29,6,29,0,29,0,29,22,29,29,29,29,29,29,22,29,0,29,35,29,35,29,35,29,29,29,29,29,29,0,29,0,29,35,29,29,29,29,29] except [Floor44.e4816454291258,Floor44.e4836586950458,Floor44.e4816487845690,Floor44.e4818098458426,Floor44.e4816622063418]
certRow g13380s6 on (rg13380 6) using bank tags []
certRow g13380s7 on (rg13380 7) using bank tags []
certRow g13380s8 on (rg13380 8) using bank tags []
certRow g13380s9 on (rg13380 9) using bank tags []
certRow g13380s10 on (rg13380 10) using bank tags []
certRow g13380s11 on (rg13380 11) using bank tags []
theorem g13380 (hard : BadRow [Floor44.e4816454291258,Floor44.e4836586950458,Floor44.e4816487845690,Floor44.e4818098458426,Floor44.e4816622063418]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 4 [0,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 4 [0,2,1,0] (.cons (g13380s0) (.cons (g13380s1) (.cons (g13380s2) (.cons (g13380s3) (.cons (g13380s4) (.cons (g13380s5 (.cons (hard.get (by decide : Floor44.e4816454291258 ∈ [Floor44.e4816454291258,Floor44.e4836586950458,Floor44.e4816487845690,Floor44.e4818098458426,Floor44.e4816622063418])) (.cons (hard.get (by decide : Floor44.e4836586950458 ∈ [Floor44.e4816454291258,Floor44.e4836586950458,Floor44.e4816487845690,Floor44.e4818098458426,Floor44.e4816622063418])) (.cons (hard.get (by decide : Floor44.e4816487845690 ∈ [Floor44.e4816454291258,Floor44.e4836586950458,Floor44.e4816487845690,Floor44.e4818098458426,Floor44.e4816622063418])) (.cons (hard.get (by decide : Floor44.e4818098458426 ∈ [Floor44.e4816454291258,Floor44.e4836586950458,Floor44.e4816487845690,Floor44.e4818098458426,Floor44.e4816622063418])) (.cons (hard.get (by decide : Floor44.e4816622063418 ∈ [Floor44.e4816454291258,Floor44.e4836586950458,Floor44.e4816487845690,Floor44.e4818098458426,Floor44.e4816622063418])) .nil)))))) (.cons (g13380s6) (.cons (g13380s7) (.cons (g13380s8) (.cons (g13380s9) (.cons (g13380s10) (.cons (g13380s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
