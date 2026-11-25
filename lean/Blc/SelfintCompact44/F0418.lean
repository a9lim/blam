import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3447 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,0,0,3]
certRow f3447s0 on (rf3447 0) using bank tags []
certRow f3447s1 on (rf3447 1) using bank tags []
certRow f3447s2 on (rf3447 2) using bank tags []
certRow f3447s3 on (rf3447 3) using bank tags []
certRow f3447s4 on (rf3447 4) using bank tags []
certRow f3447s5 on (rf3447 5) using bank tags []
certRow f3447s6 on (rf3447 6) using bank tags []
certRow f3447s7 on (rf3447 7) using bank tags []
certRow f3447s8 on (rf3447 8) using bank tags []
certRow f3447s9 on (rf3447 9) using bank tags []
certRow f3447s10 on (rf3447 10) using bank tags []
certRow f3447s11 on (rf3447 11) using bank tags []
theorem f3447 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,0,0,3] (.cons (f3447s0) (.cons (f3447s1) (.cons (f3447s2) (.cons (f3447s3) (.cons (f3447s4) (.cons (f3447s5) (.cons (f3447s6) (.cons (f3447s7) (.cons (f3447s8) (.cons (f3447s9) (.cons (f3447s10) (.cons (f3447s11) .nil))))))))))))
private abbrev rf3448 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,0,1,2]
certRow f3448s0 on (rf3448 0) using bank tags []
certRow f3448s1 on (rf3448 1) using bank tags []
certRow f3448s2 on (rf3448 2) using bank tags []
certRow f3448s3 on (rf3448 3) using bank tags []
certRow f3448s4 on (rf3448 4) using bank tags []
certRow f3448s5 on (rf3448 5) using bank tags []
certRow f3448s6 on (rf3448 6) using bank tags []
certRow f3448s7 on (rf3448 7) using bank tags []
certRow f3448s8 on (rf3448 8) using bank tags []
certRow f3448s9 on (rf3448 9) using bank tags []
certRow f3448s10 on (rf3448 10) using bank tags []
certRow f3448s11 on (rf3448 11) using bank tags []
theorem f3448 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,0,1,2] (.cons (f3448s0) (.cons (f3448s1) (.cons (f3448s2) (.cons (f3448s3) (.cons (f3448s4) (.cons (f3448s5) (.cons (f3448s6) (.cons (f3448s7) (.cons (f3448s8) (.cons (f3448s9) (.cons (f3448s10) (.cons (f3448s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
