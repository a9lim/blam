import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf95 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,0,1,0]
certRow f95s0 on (rf95 0) using bank tags [35,19,19,19,19]
certRow f95s1 on (rf95 1) using bank tags [1,1,31,31,26,1,1,1,1,1,1,1,1,1]
certRow f95s2 on (rf95 2) using bank tags [1,1,1,1,15]
certRow f95s3 on (rf95 3) using bank tags [1,1,1,1]
certRow f95s4 on (rf95 4) using bank tags [30,1,1,1,1]
certRow f95s5 on (rf95 5) using bank tags [1,31,1,1,1,1,1,1,1,30,1,1,1,1]
certRow f95s6 on (rf95 6) using bank tags []
certRow f95s7 on (rf95 7) using bank tags [0,35,19,35,19,19,19,19,19,35,19,19,19,19] except [Floor44.e4845196866362]
theorem f95 (hard : BadRow [Floor44.e4845196866362]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,0,1,0] (.cons (f95s0) (.cons (f95s1) (.cons (f95s2) (.cons (f95s3) (.cons (f95s4) (.cons (f95s5) (.cons (f95s6) (.cons (f95s7 (.cons (hard.get (by decide : Floor44.e4845196866362 ∈ [Floor44.e4845196866362])) .nil)) .nil))))))))
private abbrev rf96 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,1,0,0]
certRow f96s0 on (rf96 0) using bank tags [35,35,19]
certRow f96s1 on (rf96 1) using bank tags [1,1,31,31,26,1,1,1,1,1,1,1,1,1]
certRow f96s2 on (rf96 2) using bank tags [1,1,1,1,15]
certRow f96s3 on (rf96 3) using bank tags [1,1,1,1]
certRow f96s4 on (rf96 4) using bank tags []
certRow f96s5 on (rf96 5) using bank tags [1,31,1,1,1,1,1,1,1]
certRow f96s6 on (rf96 6) using bank tags []
certRow f96s7 on (rf96 7) using bank tags [35,35,35,35,35,19,19,35,35,19]
theorem f96 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,2,2,1,0,0] (.cons (f96s0) (.cons (f96s1) (.cons (f96s2) (.cons (f96s3) (.cons (f96s4) (.cons (f96s5) (.cons (f96s6) (.cons (f96s7) .nil))))))))
certRow f97 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [2,0,0,0,2,2]) using bank tags []
certRow f98 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [2,0,0,1,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,6,1,1,6,6,11,1,1,1,1,1,22,22,22,11,31,0,11,11,11] except [Floor44.e4844814953326]
certRow f99 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [2,0,0,1,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,6,1,1,6,22,11,1,1,1,1,1,6,6,6,6,6,6,22,6,11]
certRow f100 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [2,0,0,2,0,2]) using bank tags []
certRow f101 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [2,0,0,2,1,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,6,39,1,1,6,22,35,1,1,1,1,1,6,6,22,6,22,6,6,35,35]
certRow f102 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [2,0,0,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
