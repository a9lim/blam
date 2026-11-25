import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf523 (i : Nat) := Split43.four 12 i ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,2,0,1]
certRow f523s0 on (rf523 0) using bank tags [3,3,3,3,3,3,3,57,57,57,22,140,159,20,20,20,20,20,20,20,26,26,26,22,145,149]
certRow f523s1 on (rf523 1) using bank tags [3,3,3,3,3,27,27,27,27,27]
certRow f523s2 on (rf523 2) using bank tags [3,3,27,27]
certRow f523s3 on (rf523 3) using bank tags [3,3,57,57,57,183,27,27,14,14,14,67]
certRow f523s4 on (rf523 4) using bank tags [3,3,3,3,3,27,27,27,27,27]
certRow f523s5 on (rf523 5) using bank tags [57,57,1,1]
certRow f523s6 on (rf523 6) using bank tags [3,3,3,3,3,3,3,57,57,27,27,27,27,27,21,21,14,15]
certRow f523s7 on (rf523 7) using bank tags [3,57,57,1,1,18]
certRow f523s8 on (rf523 8) using bank tags [57,57,57,1,6,0] except [Floor44.e4786764319702]
certRow f523s9 on (rf523 9) using bank tags [57,57,57,14,1,1]
certRow f523s10 on (rf523 10) using bank tags [3,3,57,57,0,139,1,1,1,1,0,140] except [Floor44.e4838373723958,Floor44.e4786834116406]
certRow f523s11 on (rf523 11) using bank tags []
theorem f523 (hard : BadRow [Floor44.e4838373723958,Floor44.e4786764319702,Floor44.e4786834116406]) : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,2,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,2,0,1] (.cons (f523s0) (.cons (f523s1) (.cons (f523s2) (.cons (f523s3) (.cons (f523s4) (.cons (f523s5) (.cons (f523s6) (.cons (f523s7) (.cons (f523s8 (.cons (hard.get (by decide : Floor44.e4786764319702 ∈ [Floor44.e4838373723958,Floor44.e4786764319702,Floor44.e4786834116406])) .nil)) (.cons (f523s9) (.cons (f523s10 (.cons (hard.get (by decide : Floor44.e4838373723958 ∈ [Floor44.e4838373723958,Floor44.e4786764319702,Floor44.e4786834116406])) (.cons (hard.get (by decide : Floor44.e4786834116406 ∈ [Floor44.e4838373723958,Floor44.e4786764319702,Floor44.e4786834116406])) .nil))) (.cons (f523s11) .nil))))))))))))
certRow f524 on (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,2,1,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,57,57,57,57,57,57,57,57,57,3,3,3,3,57,57,57,57,35,194,0,117,27,27,27,27,27,27,27,27,27,27,27,27,27,21,1,14,14,1,14,1,14,1,1,1,20,20,20,20,26,26,6,0,22,0,0,22] except [Floor44.e4838373723962,Floor44.e4786764238618,Floor44.e4786842095386,Floor44.e4786834116410]
certRow f525 on (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,3,0,0]) using bank tags [57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,6,6,6,6,27,27,27,27,27,27,27,27,27,27,27,27,27,1,1,6,6,6,6]
certRow f526 on (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,2,0,0,2]) using bank tags [57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,0,0,0,0,0,14,14,15,15,47,1,1,1,1,1,1,1,1,1,1,1,1,1,1,26,26,1,30,1,35,0,0,0,0] except [Floor44.e4838381820302,Floor44.e4838381819534,Floor44.e4838381709710,Floor44.e4838381708942,Floor44.e4838381681294,Floor44.e4786842211982,Floor44.e4786842102158,Floor44.e4786842101390,Floor44.e4786842073742]
end Blc.SelfintSingleObject.Compact44
