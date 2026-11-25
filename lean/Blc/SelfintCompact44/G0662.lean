import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13334 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [3,0,0,0,1]
certRow g13334s0 on (rg13334 0) using bank tags []
certRow g13334s1 on (rg13334 1) using bank tags [1,28,28,28,20,28,28,28,28,205,28,28,28]
certRow g13334s2 on (rg13334 2) using bank tags [28,28,1,28,28,28]
certRow g13334s3 on (rg13334 3) using bank tags [3,3,3,3,3,3]
certRow g13334s4 on (rg13334 4) using bank tags []
certRow g13334s5 on (rg13334 5) using bank tags [3,28]
certRow g13334s6 on (rg13334 6) using bank tags [3,3]
certRow g13334s7 on (rg13334 7) using bank tags [28,28]
certRow g13334s8 on (rg13334 8) using bank tags [3,3,3,3]
certRow g13334s9 on (rg13334 9) using bank tags []
certRow g13334s10 on (rg13334 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,205,28,28,28]
certRow g13334s11 on (rg13334 11) using bank tags []
theorem g13334 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [3,0,0,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [3,0,0,0,1] (.cons (g13334s0) (.cons (g13334s1) (.cons (g13334s2) (.cons (g13334s3) (.cons (g13334s4) (.cons (g13334s5) (.cons (g13334s6) (.cons (g13334s7) (.cons (g13334s8) (.cons (g13334s9) (.cons (g13334s10) (.cons (g13334s11) .nil))))))))))))
certRow g13335 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [3,0,0,0,1]) using bank tags []
private abbrev rg13336 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [3,0,0,1,0]
certRow g13336s0 on (rg13336 0) using bank tags []
certRow g13336s1 on (rg13336 1) using bank tags [28,28,28,28,28]
certRow g13336s2 on (rg13336 2) using bank tags [28,28,28,28,28,28,28]
certRow g13336s3 on (rg13336 3) using bank tags [3,3,3,3,3,3,3]
certRow g13336s4 on (rg13336 4) using bank tags []
certRow g13336s5 on (rg13336 5) using bank tags [3,3,28,28]
certRow g13336s6 on (rg13336 6) using bank tags [3,3]
certRow g13336s7 on (rg13336 7) using bank tags [3,3,28,28]
certRow g13336s8 on (rg13336 8) using bank tags [3,3,3,3,28,28]
certRow g13336s9 on (rg13336 9) using bank tags [3,3,3,3,3]
certRow g13336s10 on (rg13336 10) using bank tags [3,3,3,3,3,205,28,28,28]
certRow g13336s11 on (rg13336 11) using bank tags [28,28,28,28,28]
theorem g13336 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [3,0,0,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [3,0,0,1,0] (.cons (g13336s0) (.cons (g13336s1) (.cons (g13336s2) (.cons (g13336s3) (.cons (g13336s4) (.cons (g13336s5) (.cons (g13336s6) (.cons (g13336s7) (.cons (g13336s8) (.cons (g13336s9) (.cons (g13336s10) (.cons (g13336s11) .nil))))))))))))
certRow g13337 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [3,0,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
