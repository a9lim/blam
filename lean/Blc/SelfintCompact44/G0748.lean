import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14010 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,0,1,2,0]
certRow g14010s0 on (rg14010 0) using bank tags []
certRow g14010s1 on (rg14010 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14010s2 on (rg14010 2) using bank tags [28,28,28,22,28,28,28,16]
certRow g14010s3 on (rg14010 3) using bank tags [28,28,28,13,28,28,28,0] except [Floor44.e4778689418874]
certRow g14010s4 on (rg14010 4) using bank tags [28,28,28,13,28,28,28,13,28,28,28,6,28,28,28,13,28,28,28,0] except [Floor44.e4778689394106]
certRow g14010s5 on (rg14010 5) using bank tags []
certRow g14010s6 on (rg14010 6) using bank tags [35,29,29,13,29,35,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,1,29,6,29,6]
certRow g14010s7 on (rg14010 7) using bank tags [0,29,29,6,29,0,29,0] except [Floor44.e5609323944866,Floor44.e4785136479674,Floor44.e4778694028730]
certRow g14010s8 on (rg14010 8) using bank tags []
certRow g14010s9 on (rg14010 9) using bank tags []
certRow g14010s10 on (rg14010 10) using bank tags [22,29,29,13,29,22,29,6]
certRow g14010s11 on (rg14010 11) using bank tags []
theorem g14010 (hard : BadRow [Floor44.e4778689418874,Floor44.e4778689394106,Floor44.e5609323944866,Floor44.e4785136479674,Floor44.e4778694028730]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,0,1,2,0] (.cons (g14010s0) (.cons (g14010s1) (.cons (g14010s2) (.cons (g14010s3 (.cons (hard.get (by decide : Floor44.e4778689418874 ∈ [Floor44.e4778689418874,Floor44.e4778689394106,Floor44.e5609323944866,Floor44.e4785136479674,Floor44.e4778694028730])) .nil)) (.cons (g14010s4 (.cons (hard.get (by decide : Floor44.e4778689394106 ∈ [Floor44.e4778689418874,Floor44.e4778689394106,Floor44.e5609323944866,Floor44.e4785136479674,Floor44.e4778694028730])) .nil)) (.cons (g14010s5) (.cons (g14010s6) (.cons (g14010s7 (.cons (hard.get (by decide : Floor44.e5609323944866 ∈ [Floor44.e4778689418874,Floor44.e4778689394106,Floor44.e5609323944866,Floor44.e4785136479674,Floor44.e4778694028730])) (.cons (hard.get (by decide : Floor44.e4785136479674 ∈ [Floor44.e4778689418874,Floor44.e4778689394106,Floor44.e5609323944866,Floor44.e4785136479674,Floor44.e4778694028730])) (.cons (hard.get (by decide : Floor44.e4778694028730 ∈ [Floor44.e4778689418874,Floor44.e4778689394106,Floor44.e5609323944866,Floor44.e4785136479674,Floor44.e4778694028730])) .nil)))) (.cons (g14010s8) (.cons (g14010s9) (.cons (g14010s10) (.cons (g14010s11) .nil))))))))))))
private abbrev rg14011 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,0,1,2,0]
certRow g14011s0 on (rg14011 0) using bank tags []
certRow g14011s1 on (rg14011 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14011s2 on (rg14011 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14011s3 on (rg14011 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14011s4 on (rg14011 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14011s5 on (rg14011 5) using bank tags []
certRow g14011s6 on (rg14011 6) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1]
certRow g14011s7 on (rg14011 7) using bank tags [6,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14011s8 on (rg14011 8) using bank tags []
certRow g14011s9 on (rg14011 9) using bank tags []
certRow g14011s10 on (rg14011 10) using bank tags [1,1,1,1,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,26,26,1,1,29,1,29,1,1,1]
certRow g14011s11 on (rg14011 11) using bank tags []
theorem g14011 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,0,1,2,0] (.cons (g14011s0) (.cons (g14011s1) (.cons (g14011s2) (.cons (g14011s3) (.cons (g14011s4) (.cons (g14011s5) (.cons (g14011s6) (.cons (g14011s7) (.cons (g14011s8) (.cons (g14011s9) (.cons (g14011s10) (.cons (g14011s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
