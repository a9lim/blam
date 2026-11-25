import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13949 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [0,0,2,1,1]
certRow g13949s0 on (rg13949 0) using bank tags []
certRow g13949s1 on (rg13949 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13949s2 on (rg13949 2) using bank tags []
certRow g13949s3 on (rg13949 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g13949s4 on (rg13949 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13949s5 on (rg13949 5) using bank tags []
certRow g13949s6 on (rg13949 6) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g13949s7 on (rg13949 7) using bank tags [1,1,1,1,6,1,1,1,1,1,29,6,29,1,1,1]
certRow g13949s8 on (rg13949 8) using bank tags []
certRow g13949s9 on (rg13949 9) using bank tags []
certRow g13949s10 on (rg13949 10) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13949s11 on (rg13949 11) using bank tags []
theorem g13949 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,2,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [0,0,2,1,1] (.cons (g13949s0) (.cons (g13949s1) (.cons (g13949s2) (.cons (g13949s3) (.cons (g13949s4) (.cons (g13949s5) (.cons (g13949s6) (.cons (g13949s7) (.cons (g13949s8) (.cons (g13949s9) (.cons (g13949s10) (.cons (g13949s11) .nil))))))))))))
certRow g13950 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,2,2,0]) using bank tags []
certRow g13951 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,2,2,0]) using bank tags []
certRow g13952 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,3,0,1]) using bank tags []
certRow g13953 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,3,0,1]) using bank tags []
certRow g13954 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,3,1,0]) using bank tags []
certRow g13955 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,3,1,0]) using bank tags []
certRow g13956 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,4,0,0]) using bank tags []
certRow g13957 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,4,0,0]) using bank tags []
certRow g13958 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,1,0,0,3]) using bank tags []
certRow g13959 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,1,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
