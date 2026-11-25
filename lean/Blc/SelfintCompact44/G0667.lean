import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13368 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 4 [0,0,2,1]
certRow g13368s0 on (rg13368 0) using bank tags []
certRow g13368s1 on (rg13368 1) using bank tags [28,28,57,1,28,28,57,1,1,28,28,1]
certRow g13368s2 on (rg13368 2) using bank tags []
certRow g13368s3 on (rg13368 3) using bank tags [28,28,57,1,28,28,57,1,1,28,28,1,28,28,57,1,28,28,57,1,1,28,28,1]
certRow g13368s4 on (rg13368 4) using bank tags []
certRow g13368s5 on (rg13368 5) using bank tags [28,28,57,90,28,28,57,1,1,28,28,1,29,29,29,29,29,29,1,29,0,29,0,29,109,29,29,29,29,29,29,1,29,0,29,172,29,109,29,90,29,29,29,29,29,29,0,29,0,29,95,29,29,29,29,29] except [Floor44.e4816454290294,Floor44.e4836586949494,Floor44.e4816487844726,Floor44.e4818098457462,Floor44.e4816622062454]
certRow g13368s6 on (rg13368 6) using bank tags []
certRow g13368s7 on (rg13368 7) using bank tags []
certRow g13368s8 on (rg13368 8) using bank tags []
certRow g13368s9 on (rg13368 9) using bank tags []
certRow g13368s10 on (rg13368 10) using bank tags []
certRow g13368s11 on (rg13368 11) using bank tags []
theorem g13368 (hard : BadRow [Floor44.e4816454290294,Floor44.e4836586949494,Floor44.e4816487844726,Floor44.e4818098457462,Floor44.e4816622062454]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 4 [0,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 4 [0,0,2,1] (.cons (g13368s0) (.cons (g13368s1) (.cons (g13368s2) (.cons (g13368s3) (.cons (g13368s4) (.cons (g13368s5 (.cons (hard.get (by decide : Floor44.e4816454290294 ∈ [Floor44.e4816454290294,Floor44.e4836586949494,Floor44.e4816487844726,Floor44.e4818098457462,Floor44.e4816622062454])) (.cons (hard.get (by decide : Floor44.e4836586949494 ∈ [Floor44.e4816454290294,Floor44.e4836586949494,Floor44.e4816487844726,Floor44.e4818098457462,Floor44.e4816622062454])) (.cons (hard.get (by decide : Floor44.e4816487844726 ∈ [Floor44.e4816454290294,Floor44.e4836586949494,Floor44.e4816487844726,Floor44.e4818098457462,Floor44.e4816622062454])) (.cons (hard.get (by decide : Floor44.e4818098457462 ∈ [Floor44.e4816454290294,Floor44.e4836586949494,Floor44.e4816487844726,Floor44.e4818098457462,Floor44.e4816622062454])) (.cons (hard.get (by decide : Floor44.e4816622062454 ∈ [Floor44.e4816454290294,Floor44.e4836586949494,Floor44.e4816487844726,Floor44.e4818098457462,Floor44.e4816622062454])) .nil)))))) (.cons (g13368s6) (.cons (g13368s7) (.cons (g13368s8) (.cons (g13368s9) (.cons (g13368s10) (.cons (g13368s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
