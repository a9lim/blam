import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11520 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,1,4,0]
certRow g11520s0 on (rg11520 0) using bank tags [28,28]
certRow g11520s1 on (rg11520 1) using bank tags []
certRow g11520s2 on (rg11520 2) using bank tags [28,28,28,28,28]
certRow g11520s3 on (rg11520 3) using bank tags [28,28]
certRow g11520s4 on (rg11520 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g11520s5 on (rg11520 5) using bank tags [28,28,28,28,28,28,28]
certRow g11520s6 on (rg11520 6) using bank tags [28,28]
certRow g11520s7 on (rg11520 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,14,1,13,13,13,13,16,6,24,6]
theorem g11520 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,1,4,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,1,4,0] (.cons (g11520s0) (.cons (g11520s1) (.cons (g11520s2) (.cons (g11520s3) (.cons (g11520s4) (.cons (g11520s5) (.cons (g11520s6) (.cons (g11520s7) .nil))))))))
certRow g11521 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,1,4,0]) using bank tags []
private abbrev rg11522 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [0,1,2,0,3]
certRow g11522s0 on (rg11522 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,57,1,28,57,1,1]
certRow g11522s1 on (rg11522 1) using bank tags [3,3,3,3,3,3,3]
certRow g11522s2 on (rg11522 2) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11522s3 on (rg11522 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow g11522s4 on (rg11522 4) using bank tags [3,3,3,3,3]
certRow g11522s5 on (rg11522 5) using bank tags [3,3,3,28,28,28,57]
certRow g11522s6 on (rg11522 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g11522s7 on (rg11522 7) using bank tags [28,28,3,3,28,28]
certRow g11522s8 on (rg11522 8) using bank tags [28,28,28,28,28,28]
certRow g11522s9 on (rg11522 9) using bank tags [28,28,28]
certRow g11522s10 on (rg11522 10) using bank tags [3,3,28,28,28,28]
certRow g11522s11 on (rg11522 11) using bank tags [3,3,3,3,3,28,28,13,13,1,15,6,15,1,24,24,1,1,6,45]
theorem g11522 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,2,0,3]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [0,1,2,0,3] (.cons (g11522s0) (.cons (g11522s1) (.cons (g11522s2) (.cons (g11522s3) (.cons (g11522s4) (.cons (g11522s5) (.cons (g11522s6) (.cons (g11522s7) (.cons (g11522s8) (.cons (g11522s9) (.cons (g11522s10) (.cons (g11522s11) .nil))))))))))))
certRow g11523 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [0,1,2,0,3]) using bank tags []
private abbrev rg11524 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [0,1,2,1,2]
certRow g11524s0 on (rg11524 0) using bank tags [28]
certRow g11524s1 on (rg11524 1) using bank tags [28,28]
certRow g11524s2 on (rg11524 2) using bank tags [28,28,6]
certRow g11524s3 on (rg11524 3) using bank tags []
certRow g11524s4 on (rg11524 4) using bank tags []
certRow g11524s5 on (rg11524 5) using bank tags [28,57,28,28,28,28,57,1,28,28,57,57,1,1,28,6]
certRow g11524s6 on (rg11524 6) using bank tags []
certRow g11524s7 on (rg11524 7) using bank tags [28,28,28,28,13,15,13,13,15,1,16,24,16,65]
theorem g11524 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [0,1,2,1,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [0,1,2,1,2] (.cons (g11524s0) (.cons (g11524s1) (.cons (g11524s2) (.cons (g11524s3) (.cons (g11524s4) (.cons (g11524s5) (.cons (g11524s6) (.cons (g11524s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
