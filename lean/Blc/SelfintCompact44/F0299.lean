import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1468 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,0,0,1,0,1]) using bank tags []
certRow f1469 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,0,0,1,1,0]) using bank tags []
certRow f1470 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,0,0,2,0,0]) using bank tags []
certRow f1471 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,0,1,0,0,1]) using bank tags []
certRow f1472 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,0,1,0,1,0]) using bank tags []
certRow f1473 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,0,1,1,0,0]) using bank tags []
certRow f1474 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,0,2,0,0,0]) using bank tags []
certRow f1475 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,1,0,0,0,1]) using bank tags []
certRow f1476 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,1,0,0,1,0]) using bank tags []
certRow f1477 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,1,0,1,0,0]) using bank tags []
certRow f1478 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,1,1,0,0,0]) using bank tags []
certRow f1479 on (Grammar43.fourRow ⟨1,2,0,2,6,4⟩ [0,0] [2,2,0,0,0,0]) using bank tags []
private abbrev rf1480 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,0,0,0,1,2]
certRow f1480s0 on (rf1480 0) using bank tags []
certRow f1480s1 on (rf1480 1) using bank tags [28,28,28,28,28,28,28,28,28,6,40,0,87,0] except [Floor44.e4823437061486,Floor44.e4823437806446]
certRow f1480s2 on (rf1480 2) using bank tags [28,28,28]
certRow f1480s3 on (rf1480 3) using bank tags [28,28,28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1480s4 on (rf1480 4) using bank tags []
certRow f1480s5 on (rf1480 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1480s6 on (rf1480 6) using bank tags []
certRow f1480s7 on (rf1480 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,40,0] except [Floor44.e4823429942126]
theorem f1480 (hard : BadRow [Floor44.e4823437061486,Floor44.e4823437806446,Floor44.e4823429942126]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,0,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,0,0,0,1,2] (.cons (f1480s0) (.cons (f1480s1 (.cons (hard.get (by decide : Floor44.e4823437061486 ∈ [Floor44.e4823437061486,Floor44.e4823437806446,Floor44.e4823429942126])) (.cons (hard.get (by decide : Floor44.e4823437806446 ∈ [Floor44.e4823437061486,Floor44.e4823437806446,Floor44.e4823429942126])) .nil))) (.cons (f1480s2) (.cons (f1480s3) (.cons (f1480s4) (.cons (f1480s5) (.cons (f1480s6) (.cons (f1480s7 (.cons (hard.get (by decide : Floor44.e4823429942126 ∈ [Floor44.e4823437061486,Floor44.e4823437806446,Floor44.e4823429942126])) .nil)) .nil))))))))
private abbrev rf1481 (i : Nat) := Split43.four 8 i ⟨1,2,1,2,6,3⟩ [0,1] [0,0,0,0,2,1]
certRow f1481s0 on (rf1481 0) using bank tags []
certRow f1481s1 on (rf1481 1) using bank tags [28,28,28,28,28,28,28,28,28,6,0,0,0,0] except [Floor44.e4823437063030,Floor44.e4823437061494,Floor44.e4823437216630,Floor44.e4823437806454]
certRow f1481s2 on (rf1481 2) using bank tags [28,28,28]
certRow f1481s3 on (rf1481 3) using bank tags [28,28,28,28,28,28,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
certRow f1481s4 on (rf1481 4) using bank tags []
certRow f1481s5 on (rf1481 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f1481s6 on (rf1481 6) using bank tags []
certRow f1481s7 on (rf1481 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,0,0] except [Floor44.e4823436233590,Floor44.e4823429942134]
theorem f1481 (hard : BadRow [Floor44.e4823437063030,Floor44.e4823437061494,Floor44.e4823437216630,Floor44.e4823437806454,Floor44.e4823436233590,Floor44.e4823429942134]) : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,3⟩ [0,1] [0,0,0,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,3⟩ [0,1] [0,0,0,0,2,1] (.cons (f1481s0) (.cons (f1481s1 (.cons (hard.get (by decide : Floor44.e4823437063030 ∈ [Floor44.e4823437063030,Floor44.e4823437061494,Floor44.e4823437216630,Floor44.e4823437806454,Floor44.e4823436233590,Floor44.e4823429942134])) (.cons (hard.get (by decide : Floor44.e4823437061494 ∈ [Floor44.e4823437063030,Floor44.e4823437061494,Floor44.e4823437216630,Floor44.e4823437806454,Floor44.e4823436233590,Floor44.e4823429942134])) (.cons (hard.get (by decide : Floor44.e4823437216630 ∈ [Floor44.e4823437063030,Floor44.e4823437061494,Floor44.e4823437216630,Floor44.e4823437806454,Floor44.e4823436233590,Floor44.e4823429942134])) (.cons (hard.get (by decide : Floor44.e4823437806454 ∈ [Floor44.e4823437063030,Floor44.e4823437061494,Floor44.e4823437216630,Floor44.e4823437806454,Floor44.e4823436233590,Floor44.e4823429942134])) .nil))))) (.cons (f1481s2) (.cons (f1481s3) (.cons (f1481s4) (.cons (f1481s5) (.cons (f1481s6) (.cons (f1481s7 (.cons (hard.get (by decide : Floor44.e4823436233590 ∈ [Floor44.e4823437063030,Floor44.e4823437061494,Floor44.e4823437216630,Floor44.e4823437806454,Floor44.e4823436233590,Floor44.e4823429942134])) (.cons (hard.get (by decide : Floor44.e4823429942134 ∈ [Floor44.e4823437063030,Floor44.e4823437061494,Floor44.e4823437216630,Floor44.e4823437806454,Floor44.e4823436233590,Floor44.e4823429942134])) .nil))) .nil))))))))
end Blc.SelfintSingleObject.Compact44
