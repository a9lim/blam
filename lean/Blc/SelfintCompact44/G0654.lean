import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13298 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,1,0,2,0]
certRow g13298s0 on (rg13298 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13298s1 on (rg13298 1) using bank tags [3,3,3,3,28,28,28,28,28]
certRow g13298s2 on (rg13298 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,47,32]
certRow g13298s3 on (rg13298 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13298s4 on (rg13298 4) using bank tags [3,3]
certRow g13298s5 on (rg13298 5) using bank tags [3,3,3,3,28,28,28,28]
certRow g13298s6 on (rg13298 6) using bank tags [3,3,28,28]
certRow g13298s7 on (rg13298 7) using bank tags [3,3,3,3,3,3,28,28,20,20,20,20,20,26,1,26,6,1,1]
certRow g13298s8 on (rg13298 8) using bank tags [3,3,3,3,3]
certRow g13298s9 on (rg13298 9) using bank tags [3,3,3,3,3,3,3,3,28,28]
certRow g13298s10 on (rg13298 10) using bank tags [3,3,3,3,3,3,28,28]
certRow g13298s11 on (rg13298 11) using bank tags [3,3,3,3,3,28]
theorem g13298 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,1,0,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,1,0,2,0] (.cons (g13298s0) (.cons (g13298s1) (.cons (g13298s2) (.cons (g13298s3) (.cons (g13298s4) (.cons (g13298s5) (.cons (g13298s6) (.cons (g13298s7) (.cons (g13298s8) (.cons (g13298s9) (.cons (g13298s10) (.cons (g13298s11) .nil))))))))))))
certRow g13299 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,1,0,2,0]) using bank tags []
certRow g13300 on (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,1,1,0,1]) using bank tags []
certRow g13301 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,1,1,0,1]) using bank tags []
certRow g13302 on (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,1,1,1,0]) using bank tags []
certRow g13303 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,1,1,1,0]) using bank tags []
private abbrev rg13304 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [1,1,2,0,0]
certRow g13304s0 on (rg13304 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow g13304s1 on (rg13304 1) using bank tags [3,3,3]
certRow g13304s2 on (rg13304 2) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,71]
certRow g13304s3 on (rg13304 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow g13304s4 on (rg13304 4) using bank tags [3]
certRow g13304s5 on (rg13304 5) using bank tags [3,3,3,3,3,3,28,28,28]
certRow g13304s6 on (rg13304 6) using bank tags [3,3,3,3,28,28,28]
certRow g13304s7 on (rg13304 7) using bank tags [3,3,3,206,28,28,28,20,20,20,30,1,15,1]
certRow g13304s8 on (rg13304 8) using bank tags []
certRow g13304s9 on (rg13304 9) using bank tags [3,3,3,3,3,3,28,28]
certRow g13304s10 on (rg13304 10) using bank tags []
certRow g13304s11 on (rg13304 11) using bank tags [3,3,3,1,28]
theorem g13304 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [1,1,2,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [1,1,2,0,0] (.cons (g13304s0) (.cons (g13304s1) (.cons (g13304s2) (.cons (g13304s3) (.cons (g13304s4) (.cons (g13304s5) (.cons (g13304s6) (.cons (g13304s7) (.cons (g13304s8) (.cons (g13304s9) (.cons (g13304s10) (.cons (g13304s11) .nil))))))))))))
certRow g13305 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [1,1,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
