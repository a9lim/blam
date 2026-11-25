import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf688 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,2,3]
certRow f688s0 on (rf688 0) using bank tags [3,3,3,3,28,3,3,3,3,28,28,3,28,28,28,28,28]
certRow f688s1 on (rf688 1) using bank tags [28]
certRow f688s2 on (rf688 2) using bank tags [28,28,28,28,28,28,28,28]
certRow f688s3 on (rf688 3) using bank tags [3,3,3,28,3,3,3,3,28,28,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,71,1]
certRow f688s4 on (rf688 4) using bank tags [1,1]
certRow f688s5 on (rf688 5) using bank tags [3,3,3,28,28,28,28]
certRow f688s6 on (rf688 6) using bank tags [28,3]
certRow f688s7 on (rf688 7) using bank tags [3,3,3,3]
certRow f688s8 on (rf688 8) using bank tags [28,28]
certRow f688s9 on (rf688 9) using bank tags [3,3,3,3,3]
certRow f688s10 on (rf688 10) using bank tags [28,28,28,28,28,28,28]
certRow f688s11 on (rf688 11) using bank tags [28,28,28,28,28,1,1,13,13,13,6,6,6,6,6,6,6,6,6,19,35,6]
theorem f688 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,2,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,2,3] (.cons (f688s0) (.cons (f688s1) (.cons (f688s2) (.cons (f688s3) (.cons (f688s4) (.cons (f688s5) (.cons (f688s6) (.cons (f688s7) (.cons (f688s8) (.cons (f688s9) (.cons (f688s10) (.cons (f688s11) .nil))))))))))))
private abbrev rf689 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,3,2]
certRow f689s0 on (rf689 0) using bank tags [3,3,28,28,3,3,28,28,28,3,3,3,28,28,28,28,28]
certRow f689s1 on (rf689 1) using bank tags [28,28,28,28,28,28]
certRow f689s2 on (rf689 2) using bank tags [28,28,28,28,28,28,28,28]
certRow f689s3 on (rf689 3) using bank tags [3,28,28,3,3,28,28,28,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,26,32]
certRow f689s4 on (rf689 4) using bank tags []
certRow f689s5 on (rf689 5) using bank tags [3,28,28,3,28,28,28]
certRow f689s6 on (rf689 6) using bank tags [28,3,1,1]
certRow f689s7 on (rf689 7) using bank tags [3,3,3,28,3,28]
certRow f689s8 on (rf689 8) using bank tags [28,28]
certRow f689s9 on (rf689 9) using bank tags [28,28,28,28,28]
certRow f689s10 on (rf689 10) using bank tags [3,3,3,28,3,3,28]
certRow f689s11 on (rf689 11) using bank tags [1,1,13,13,13,13,13,32,6,6,6,6,6,6,6,6,35,0,6] except [Floor44.e4846363263470]
theorem f689 (hard : BadRow [Floor44.e4846363263470]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,3,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,3,2] (.cons (f689s0) (.cons (f689s1) (.cons (f689s2) (.cons (f689s3) (.cons (f689s4) (.cons (f689s5) (.cons (f689s6) (.cons (f689s7) (.cons (f689s8) (.cons (f689s9) (.cons (f689s10) (.cons (f689s11 (.cons (hard.get (by decide : Floor44.e4846363263470 ∈ [Floor44.e4846363263470])) .nil)) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
