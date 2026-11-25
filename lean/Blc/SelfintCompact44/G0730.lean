import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13917 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 4 [2,1,1,0]
certRow g13917s0 on (rg13917 0) using bank tags []
certRow g13917s1 on (rg13917 1) using bank tags [28,59,59,59,1,1,1,1,13,57,24,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,13,57,24,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13917s2 on (rg13917 2) using bank tags [28,59,59,59,1,1,1,1,13,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13917s3 on (rg13917 3) using bank tags []
certRow g13917s4 on (rg13917 4) using bank tags []
certRow g13917s5 on (rg13917 5) using bank tags []
certRow g13917s6 on (rg13917 6) using bank tags []
certRow g13917s7 on (rg13917 7) using bank tags []
certRow g13917s8 on (rg13917 8) using bank tags []
certRow g13917s9 on (rg13917 9) using bank tags []
certRow g13917s10 on (rg13917 10) using bank tags []
certRow g13917s11 on (rg13917 11) using bank tags []
theorem g13917 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [2,1,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 4 [2,1,1,0] (.cons (g13917s0) (.cons (g13917s1) (.cons (g13917s2) (.cons (g13917s3) (.cons (g13917s4) (.cons (g13917s5) (.cons (g13917s6) (.cons (g13917s7) (.cons (g13917s8) (.cons (g13917s9) (.cons (g13917s10) (.cons (g13917s11) .nil))))))))))))
certRow g13918 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [2,2,0,0]) using bank tags []
certRow g13919 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [2,2,0,0]) using bank tags []
certRow g13920 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [3,0,0,1]) using bank tags []
certRow g13921 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [3,0,0,1]) using bank tags []
certRow g13922 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [3,0,1,0]) using bank tags []
certRow g13923 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [3,0,1,0]) using bank tags []
certRow g13924 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [3,1,0,0]) using bank tags []
certRow g13925 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [3,1,0,0]) using bank tags []
certRow g13926 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [4,0,0,0]) using bank tags []
certRow g13927 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [4,0,0,0]) using bank tags []
certRow g13928 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,0,0,4]) using bank tags []
certRow g13929 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,0,0,4]) using bank tags []
certRow g13930 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,0,1,3]) using bank tags []
certRow g13931 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,0,1,3]) using bank tags []
certRow g13932 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,0,2,2]) using bank tags []
certRow g13933 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,0,2,2]) using bank tags []
certRow g13934 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [0,0,0,3,1]) using bank tags []
certRow g13935 on (Grammar43.fiveRow 8 5 4 true 4 2 5 [0,0,0,3,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
