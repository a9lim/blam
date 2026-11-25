import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf394 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,0,0,2]
certRow f394s0 on (rf394 0) using bank tags [28,28,28,28,28,6,6,0,234,0] except [Floor44.e4846212135534,Floor44.e4846212132526]
certRow f394s1 on (rf394 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f394s2 on (rf394 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,6,6,6,6,6]
certRow f394s3 on (rf394 3) using bank tags [3,3,3,3]
certRow f394s4 on (rf394 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f394s5 on (rf394 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f394s6 on (rf394 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f394s7 on (rf394 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f394s8 on (rf394 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f394s9 on (rf394 9) using bank tags [28,28,28,28,28]
certRow f394s10 on (rf394 10) using bank tags []
certRow f394s11 on (rf394 11) using bank tags [3,3,3,3,3]
theorem f394 (hard : BadRow [Floor44.e4846212135534,Floor44.e4846212132526]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,0,0,2] (.cons (f394s0 (.cons (hard.get (by decide : Floor44.e4846212135534 ∈ [Floor44.e4846212135534,Floor44.e4846212132526])) (.cons (hard.get (by decide : Floor44.e4846212132526 ∈ [Floor44.e4846212135534,Floor44.e4846212132526])) .nil))) (.cons (f394s1) (.cons (f394s2) (.cons (f394s3) (.cons (f394s4) (.cons (f394s5) (.cons (f394s6) (.cons (f394s7) (.cons (f394s8) (.cons (f394s9) (.cons (f394s10) (.cons (f394s11) .nil))))))))))))
certRow f395 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,0,1,1]) using bank tags []
private abbrev rf396 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,0,2,0]
certRow f396s0 on (rf396 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,22,6,0,0,0] except [Floor44.e4846212135546,Floor44.e4846212135354,Floor44.e4846212132538]
certRow f396s1 on (rf396 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f396s2 on (rf396 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,6,6,6,6,6]
certRow f396s3 on (rf396 3) using bank tags [3,3,3,3,227,0,0,0] except [Floor44.e4846200932026,Floor44.e4846169110970,Floor44.e4846169108154]
certRow f396s4 on (rf396 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f396s5 on (rf396 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f396s6 on (rf396 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f396s7 on (rf396 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f396s8 on (rf396 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f396s9 on (rf396 9) using bank tags [28,28,28,28,28]
certRow f396s10 on (rf396 10) using bank tags []
certRow f396s11 on (rf396 11) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
theorem f396 (hard : BadRow [Floor44.e4846212135546,Floor44.e4846212135354,Floor44.e4846212132538,Floor44.e4846200932026,Floor44.e4846169110970,Floor44.e4846169108154]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,0,2,0] (.cons (f396s0 (.cons (hard.get (by decide : Floor44.e4846212135546 ∈ [Floor44.e4846212135546,Floor44.e4846212135354,Floor44.e4846212132538,Floor44.e4846200932026,Floor44.e4846169110970,Floor44.e4846169108154])) (.cons (hard.get (by decide : Floor44.e4846212135354 ∈ [Floor44.e4846212135546,Floor44.e4846212135354,Floor44.e4846212132538,Floor44.e4846200932026,Floor44.e4846169110970,Floor44.e4846169108154])) (.cons (hard.get (by decide : Floor44.e4846212132538 ∈ [Floor44.e4846212135546,Floor44.e4846212135354,Floor44.e4846212132538,Floor44.e4846200932026,Floor44.e4846169110970,Floor44.e4846169108154])) .nil)))) (.cons (f396s1) (.cons (f396s2) (.cons (f396s3 (.cons (hard.get (by decide : Floor44.e4846200932026 ∈ [Floor44.e4846212135546,Floor44.e4846212135354,Floor44.e4846212132538,Floor44.e4846200932026,Floor44.e4846169110970,Floor44.e4846169108154])) (.cons (hard.get (by decide : Floor44.e4846169110970 ∈ [Floor44.e4846212135546,Floor44.e4846212135354,Floor44.e4846212132538,Floor44.e4846200932026,Floor44.e4846169110970,Floor44.e4846169108154])) (.cons (hard.get (by decide : Floor44.e4846169108154 ∈ [Floor44.e4846212135546,Floor44.e4846212135354,Floor44.e4846212132538,Floor44.e4846200932026,Floor44.e4846169110970,Floor44.e4846169108154])) .nil)))) (.cons (f396s4) (.cons (f396s5) (.cons (f396s6) (.cons (f396s7) (.cons (f396s8) (.cons (f396s9) (.cons (f396s10) (.cons (f396s11) .nil))))))))))))
certRow f397 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,1,0,1]) using bank tags []
certRow f398 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
