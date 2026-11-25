import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13437 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 5 [0,2,0,0,1]
certRow g13437s0 on (rg13437 0) using bank tags []
certRow g13437s1 on (rg13437 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13437s2 on (rg13437 2) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13437s3 on (rg13437 3) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13437s4 on (rg13437 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13437s5 on (rg13437 5) using bank tags []
certRow g13437s6 on (rg13437 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1]
certRow g13437s7 on (rg13437 7) using bank tags []
certRow g13437s8 on (rg13437 8) using bank tags []
certRow g13437s9 on (rg13437 9) using bank tags []
certRow g13437s10 on (rg13437 10) using bank tags [17,1,1,6,6,1,6,1,1,1,1,1,17,1,1,6,6,1,6,1,1,1,1,1,13,1,11,6,13,1,12,1,14,1,1,1,13,1,11,6,13,1,6,1,14,1,1,1,13,1,11,6,13,1,12,1,14,1,1,1]
certRow g13437s11 on (rg13437 11) using bank tags []
theorem g13437 : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,2,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 5 [0,2,0,0,1] (.cons (g13437s0) (.cons (g13437s1) (.cons (g13437s2) (.cons (g13437s3) (.cons (g13437s4) (.cons (g13437s5) (.cons (g13437s6) (.cons (g13437s7) (.cons (g13437s8) (.cons (g13437s9) (.cons (g13437s10) (.cons (g13437s11) .nil))))))))))))
private abbrev rg13438 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 5 [0,2,0,1,0]
certRow g13438s0 on (rg13438 0) using bank tags []
certRow g13438s1 on (rg13438 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g13438s2 on (rg13438 2) using bank tags [28,28,28,28]
certRow g13438s3 on (rg13438 3) using bank tags [28,28,28,28]
certRow g13438s4 on (rg13438 4) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g13438s5 on (rg13438 5) using bank tags []
certRow g13438s6 on (rg13438 6) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g13438s7 on (rg13438 7) using bank tags [28,28,28,28,29,29,29,0,29,29,29,0,29,29,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817622678746,Floor44.e4818159549658,Floor44.e4817622675290,Floor44.e4818159546202]
certRow g13438s8 on (rg13438 8) using bank tags []
certRow g13438s9 on (rg13438 9) using bank tags []
certRow g13438s10 on (rg13438 10) using bank tags [29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29]
certRow g13438s11 on (rg13438 11) using bank tags []
theorem g13438 (hard : BadRow [Floor44.e4817622678746,Floor44.e4818159549658,Floor44.e4817622675290,Floor44.e4818159546202]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,2,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 5 [0,2,0,1,0] (.cons (g13438s0) (.cons (g13438s1) (.cons (g13438s2) (.cons (g13438s3) (.cons (g13438s4) (.cons (g13438s5) (.cons (g13438s6) (.cons (g13438s7 (.cons (hard.get (by decide : Floor44.e4817622678746 ∈ [Floor44.e4817622678746,Floor44.e4818159549658,Floor44.e4817622675290,Floor44.e4818159546202])) (.cons (hard.get (by decide : Floor44.e4818159549658 ∈ [Floor44.e4817622678746,Floor44.e4818159549658,Floor44.e4817622675290,Floor44.e4818159546202])) (.cons (hard.get (by decide : Floor44.e4817622675290 ∈ [Floor44.e4817622678746,Floor44.e4818159549658,Floor44.e4817622675290,Floor44.e4818159546202])) (.cons (hard.get (by decide : Floor44.e4818159546202 ∈ [Floor44.e4817622678746,Floor44.e4818159549658,Floor44.e4817622675290,Floor44.e4818159546202])) .nil))))) (.cons (g13438s8) (.cons (g13438s9) (.cons (g13438s10) (.cons (g13438s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
