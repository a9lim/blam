import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14151 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,0,1,2,0]) using bank tags [1,1,1,1,29,1,29,1,29,1,1,1,1,1,29,1,29,1,29,1,29,1,29,1]
certRow g14152 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,0,2,0,1]) using bank tags []
private abbrev rg14153 (i : Nat) := Split43.five 8 i 8 5 4 true 4 2 6 [0,1,0,2,0,1]
certRow g14153s0 on (rg14153 0) using bank tags [29,6,29,6]
certRow g14153s1 on (rg14153 1) using bank tags [1,1,1,1,1,1,1,29,1,29,1]
certRow g14153s2 on (rg14153 2) using bank tags []
certRow g14153s3 on (rg14153 3) using bank tags [1,1,1,1,1,1,1,29,1,29,1,29,1,29,1]
certRow g14153s4 on (rg14153 4) using bank tags []
certRow g14153s5 on (rg14153 5) using bank tags []
certRow g14153s6 on (rg14153 6) using bank tags [6,6,6,6,6,29,6,29,0] except [Floor44.e1211541583318]
certRow g14153s7 on (rg14153 7) using bank tags [29,1,29,1,29,1,29,1]
theorem g14153 (hard : BadRow [Floor44.e1211541583318]) : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 4 true 4 2 6 [0,1,0,2,0,1] (.cons (g14153s0) (.cons (g14153s1) (.cons (g14153s2) (.cons (g14153s3) (.cons (g14153s4) (.cons (g14153s5) (.cons (g14153s6 (.cons (hard.get (by decide : Floor44.e1211541583318 ∈ [Floor44.e1211541583318])) .nil)) (.cons (g14153s7) .nil))))))))
certRow g14154 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,0,2,1,0]) using bank tags []
certRow g14155 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,0,2,1,0]) using bank tags [1,1,1,1,29,1,29,1,29,1,1,1,1,1,29,1,29,1,29,1,29,6,29,6,29,1,29,1,29,6,29,6]
certRow g14156 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,0,3,0,0]) using bank tags []
certRow g14157 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,0,3,0,0]) using bank tags []
certRow g14158 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,1,0,0,2]) using bank tags []
certRow g14159 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,1,0,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g14160 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,1,0,1,1]) using bank tags []
certRow g14161 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,1,0,1,1]) using bank tags []
certRow g14162 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,1,0,2,0]) using bank tags []
certRow g14163 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,1,0,2,0]) using bank tags [1,1,1,1,1,29,1,29,1,1,1,1,1,1,29,1,29,1,29,1,29,1]
certRow g14164 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,1,1,0,1]) using bank tags []
certRow g14165 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,1,1,0,1]) using bank tags []
certRow g14166 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,1,1,1,0]) using bank tags []
certRow g14167 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,1,1,1,0]) using bank tags []
certRow g14168 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,1,2,0,0]) using bank tags []
certRow g14169 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,1,1,2,0,0]) using bank tags [1,1,1,29,1,1,1,1,29,1,29,1]
certRow g14170 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,1,2,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
