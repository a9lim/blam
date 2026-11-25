import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf366 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,0,1,0,1,2]
certRow f366s0 on (rf366 0) using bank tags []
certRow f366s1 on (rf366 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f366s2 on (rf366 2) using bank tags [3,3,3,3,3,28,28,3,3,3,3,3,3,28,28,28,1,1,32,1,1,1,1,1,1,1,1,1,0,0,19,0,0,0,0,0] except [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670]
certRow f366s3 on (rf366 3) using bank tags [3,3,3,3,3,3]
certRow f366s4 on (rf366 4) using bank tags [3,3,3,3,3]
certRow f366s5 on (rf366 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f366s6 on (rf366 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f366s7 on (rf366 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f366s8 on (rf366 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,3,3,3,3,3,3,28,28,28,28,184,19]
certRow f366s9 on (rf366 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f366s10 on (rf366 10) using bank tags [28,28,19,19,19]
certRow f366s11 on (rf366 11) using bank tags [3,3,3,3,3,3,28,28,28]
theorem f366 (hard : BadRow [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,0,1,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,0,1,0,1,2] (.cons (f366s0) (.cons (f366s1) (.cons (f366s2 (.cons (hard.get (by decide : Floor44.e4846359358574 ∈ [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670])) (.cons (hard.get (by decide : Floor44.e4846359268462 ∈ [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670])) (.cons (hard.get (by decide : Floor44.e4846356990830 ∈ [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670])) (.cons (hard.get (by decide : Floor44.e4846434856046 ∈ [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670])) (.cons (hard.get (by decide : Floor44.e4846434765934 ∈ [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670])) (.cons (hard.get (by decide : Floor44.e4846434743406 ∈ [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670])) (.cons (hard.get (by decide : Floor44.e4846426786670 ∈ [Floor44.e4846359358574,Floor44.e4846359268462,Floor44.e4846356990830,Floor44.e4846434856046,Floor44.e4846434765934,Floor44.e4846434743406,Floor44.e4846426786670])) .nil)))))))) (.cons (f366s3) (.cons (f366s4) (.cons (f366s5) (.cons (f366s6) (.cons (f366s7) (.cons (f366s8) (.cons (f366s9) (.cons (f366s10) (.cons (f366s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
