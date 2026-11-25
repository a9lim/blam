import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf782 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,3,1,0,1]
certRow f782s0 on (rf782 0) using bank tags [3,28,28,3]
certRow f782s1 on (rf782 1) using bank tags [3,3,3,3,3,28,28,28,3,28]
certRow f782s2 on (rf782 2) using bank tags [3,3,28,3,3,28,28,3,28]
certRow f782s3 on (rf782 3) using bank tags [3,3,28,28,28,28,28,28,28]
certRow f782s4 on (rf782 4) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow f782s5 on (rf782 5) using bank tags [28,28,28]
certRow f782s6 on (rf782 6) using bank tags [3,3,28,28]
certRow f782s7 on (rf782 7) using bank tags [1,1,44,1,18]
theorem f782 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,3,1,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,3,1,0,1] (.cons (f782s0) (.cons (f782s1) (.cons (f782s2) (.cons (f782s3) (.cons (f782s4) (.cons (f782s5) (.cons (f782s6) (.cons (f782s7) .nil))))))))
private abbrev rf783 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,3,1,1,0]
certRow f783s0 on (rf783 0) using bank tags [3,28,28,3]
certRow f783s1 on (rf783 1) using bank tags [3,3,3,3,3]
certRow f783s2 on (rf783 2) using bank tags [3,3,3,3,28,28,28,28,28,3,28,28,28]
certRow f783s3 on (rf783 3) using bank tags [3,3,28,28,28,28,28,28]
certRow f783s4 on (rf783 4) using bank tags [3,3,3]
certRow f783s5 on (rf783 5) using bank tags [28,28,28,28]
certRow f783s6 on (rf783 6) using bank tags [3,3,28]
certRow f783s7 on (rf783 7) using bank tags [1,44,1,24]
theorem f783 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,3,1,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,3,1,1,0] (.cons (f783s0) (.cons (f783s1) (.cons (f783s2) (.cons (f783s3) (.cons (f783s4) (.cons (f783s5) (.cons (f783s6) (.cons (f783s7) .nil))))))))
certRow f784 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,3,2,0,0]) using bank tags [3,3,3,28,28,3,3,28,3,3,3,3,3,28,28,28,28,28]
private abbrev rf785 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,4,0,0,1]
certRow f785s0 on (rf785 0) using bank tags [28]
certRow f785s1 on (rf785 1) using bank tags [28,28,28,28,28]
certRow f785s2 on (rf785 2) using bank tags [28,28,28,28,28]
certRow f785s3 on (rf785 3) using bank tags [28,28]
certRow f785s4 on (rf785 4) using bank tags [28,28,28,28,28]
certRow f785s5 on (rf785 5) using bank tags [28,28]
certRow f785s6 on (rf785 6) using bank tags [28,28]
certRow f785s7 on (rf785 7) using bank tags [28,28,13,13,13,13,13]
theorem f785 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,4,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,4,0,0,1] (.cons (f785s0) (.cons (f785s1) (.cons (f785s2) (.cons (f785s3) (.cons (f785s4) (.cons (f785s5) (.cons (f785s6) (.cons (f785s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
