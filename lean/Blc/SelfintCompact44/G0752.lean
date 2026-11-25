import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14018 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,1,0,0,2]
certRow g14018s0 on (rg14018 0) using bank tags []
certRow g14018s1 on (rg14018 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14018s2 on (rg14018 2) using bank tags [28,28,28,13,28,28,28,13]
certRow g14018s3 on (rg14018 3) using bank tags [28,28,28,13,28,28,28,13]
certRow g14018s4 on (rg14018 4) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14018s5 on (rg14018 5) using bank tags []
certRow g14018s6 on (rg14018 6) using bank tags [6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27,6,29,29,13,29,6,29,27]
certRow g14018s7 on (rg14018 7) using bank tags []
certRow g14018s8 on (rg14018 8) using bank tags []
certRow g14018s9 on (rg14018 9) using bank tags []
certRow g14018s10 on (rg14018 10) using bank tags []
certRow g14018s11 on (rg14018 11) using bank tags []
theorem g14018 : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,1,0,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,1,0,0,2] (.cons (g14018s0) (.cons (g14018s1) (.cons (g14018s2) (.cons (g14018s3) (.cons (g14018s4) (.cons (g14018s5) (.cons (g14018s6) (.cons (g14018s7) (.cons (g14018s8) (.cons (g14018s9) (.cons (g14018s10) (.cons (g14018s11) .nil))))))))))))
private abbrev rg14019 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,1,0,0,2]
certRow g14019s0 on (rg14019 0) using bank tags []
certRow g14019s1 on (rg14019 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14019s2 on (rg14019 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14019s3 on (rg14019 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14019s4 on (rg14019 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14019s5 on (rg14019 5) using bank tags []
certRow g14019s6 on (rg14019 6) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1]
certRow g14019s7 on (rg14019 7) using bank tags []
certRow g14019s8 on (rg14019 8) using bank tags []
certRow g14019s9 on (rg14019 9) using bank tags []
certRow g14019s10 on (rg14019 10) using bank tags [28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1]
certRow g14019s11 on (rg14019 11) using bank tags []
theorem g14019 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,1,0,0,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,1,0,0,2] (.cons (g14019s0) (.cons (g14019s1) (.cons (g14019s2) (.cons (g14019s3) (.cons (g14019s4) (.cons (g14019s5) (.cons (g14019s6) (.cons (g14019s7) (.cons (g14019s8) (.cons (g14019s9) (.cons (g14019s10) (.cons (g14019s11) .nil))))))))))))
certRow g14020 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,1,0,1,1]) using bank tags []
certRow g14021 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
