import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13428 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 5 [0,1,0,2,0]
certRow g13428s0 on (rg13428 0) using bank tags []
certRow g13428s1 on (rg13428 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g13428s2 on (rg13428 2) using bank tags [28,28,28,28]
certRow g13428s3 on (rg13428 3) using bank tags [28,28,28,28]
certRow g13428s4 on (rg13428 4) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g13428s5 on (rg13428 5) using bank tags []
certRow g13428s6 on (rg13428 6) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g13428s7 on (rg13428 7) using bank tags [28,28,28,28,29,29,29,0,29,29,29,0,29,29,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817622677946,Floor44.e4818159548858,Floor44.e4817622675130,Floor44.e4818159546042]
certRow g13428s8 on (rg13428 8) using bank tags []
certRow g13428s9 on (rg13428 9) using bank tags []
certRow g13428s10 on (rg13428 10) using bank tags [29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29,29,29,29,1,29,29,29,6,29,29]
certRow g13428s11 on (rg13428 11) using bank tags []
theorem g13428 (hard : BadRow [Floor44.e4817622677946,Floor44.e4818159548858,Floor44.e4817622675130,Floor44.e4818159546042]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,1,0,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 5 [0,1,0,2,0] (.cons (g13428s0) (.cons (g13428s1) (.cons (g13428s2) (.cons (g13428s3) (.cons (g13428s4) (.cons (g13428s5) (.cons (g13428s6) (.cons (g13428s7 (.cons (hard.get (by decide : Floor44.e4817622677946 ∈ [Floor44.e4817622677946,Floor44.e4818159548858,Floor44.e4817622675130,Floor44.e4818159546042])) (.cons (hard.get (by decide : Floor44.e4818159548858 ∈ [Floor44.e4817622677946,Floor44.e4818159548858,Floor44.e4817622675130,Floor44.e4818159546042])) (.cons (hard.get (by decide : Floor44.e4817622675130 ∈ [Floor44.e4817622677946,Floor44.e4818159548858,Floor44.e4817622675130,Floor44.e4818159546042])) (.cons (hard.get (by decide : Floor44.e4818159546042 ∈ [Floor44.e4817622677946,Floor44.e4818159548858,Floor44.e4817622675130,Floor44.e4818159546042])) .nil))))) (.cons (g13428s8) (.cons (g13428s9) (.cons (g13428s10) (.cons (g13428s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
