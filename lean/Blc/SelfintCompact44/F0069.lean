import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf399 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,2,0,0]
certRow f399s0 on (rf399 0) using bank tags [3,3,3,3,3,28,28,28,218,22,0] except [Floor44.e4846212135402]
certRow f399s1 on (rf399 1) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f399s2 on (rf399 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,6,6,6,6,6]
certRow f399s3 on (rf399 3) using bank tags [3,3,3,3,0,0,0,0] except [Floor44.e4846201018858,Floor44.e4846200932074,Floor44.e4846169111018,Floor44.e4846166329066]
certRow f399s4 on (rf399 4) using bank tags [3,3,3,28,28,28,28,28,28,28]
certRow f399s5 on (rf399 5) using bank tags [3,3,3,3,3,3,3,3,3,3,28]
certRow f399s6 on (rf399 6) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f399s7 on (rf399 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,0] except [Floor44.e4846201019290]
certRow f399s8 on (rf399 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f399s9 on (rf399 9) using bank tags [28,28,28,28,28]
certRow f399s10 on (rf399 10) using bank tags []
certRow f399s11 on (rf399 11) using bank tags [3,3,3,3,3,3,3,28,28,28,28]
theorem f399 (hard : BadRow [Floor44.e4846212135402,Floor44.e4846201019290,Floor44.e4846201018858,Floor44.e4846200932074,Floor44.e4846169111018,Floor44.e4846166329066]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,1,2,0,0] (.cons (f399s0 (.cons (hard.get (by decide : Floor44.e4846212135402 ∈ [Floor44.e4846212135402,Floor44.e4846201019290,Floor44.e4846201018858,Floor44.e4846200932074,Floor44.e4846169111018,Floor44.e4846166329066])) .nil)) (.cons (f399s1) (.cons (f399s2) (.cons (f399s3 (.cons (hard.get (by decide : Floor44.e4846201018858 ∈ [Floor44.e4846212135402,Floor44.e4846201019290,Floor44.e4846201018858,Floor44.e4846200932074,Floor44.e4846169111018,Floor44.e4846166329066])) (.cons (hard.get (by decide : Floor44.e4846200932074 ∈ [Floor44.e4846212135402,Floor44.e4846201019290,Floor44.e4846201018858,Floor44.e4846200932074,Floor44.e4846169111018,Floor44.e4846166329066])) (.cons (hard.get (by decide : Floor44.e4846169111018 ∈ [Floor44.e4846212135402,Floor44.e4846201019290,Floor44.e4846201018858,Floor44.e4846200932074,Floor44.e4846169111018,Floor44.e4846166329066])) (.cons (hard.get (by decide : Floor44.e4846166329066 ∈ [Floor44.e4846212135402,Floor44.e4846201019290,Floor44.e4846201018858,Floor44.e4846200932074,Floor44.e4846169111018,Floor44.e4846166329066])) .nil))))) (.cons (f399s4) (.cons (f399s5) (.cons (f399s6) (.cons (f399s7 (.cons (hard.get (by decide : Floor44.e4846201019290 ∈ [Floor44.e4846212135402,Floor44.e4846201019290,Floor44.e4846201018858,Floor44.e4846200932074,Floor44.e4846169111018,Floor44.e4846166329066])) .nil)) (.cons (f399s8) (.cons (f399s9) (.cons (f399s10) (.cons (f399s11) .nil))))))))))))
private abbrev rf400 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,0,0,1]
certRow f400s0 on (rf400 0) using bank tags [3,3,3,3,28,28,28,28,28,0,0,0,22,0] except [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694]
certRow f400s1 on (rf400 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,0,69,22,0] except [Floor44.e4846201402182,Floor44.e4846166424902]
certRow f400s2 on (rf400 2) using bank tags [3,3,3,3,3,28,28,6,6,6,6,6,6,6,6,6]
certRow f400s3 on (rf400 3) using bank tags [3,3,3,3,28,28,28,28]
certRow f400s4 on (rf400 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28]
certRow f400s5 on (rf400 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,0,0] except [Floor44.e4845899412678,Floor44.e4846201402566]
certRow f400s6 on (rf400 6) using bank tags [28,28,28,28,28]
certRow f400s7 on (rf400 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f400s8 on (rf400 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f400s9 on (rf400 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f400s10 on (rf400 10) using bank tags []
certRow f400s11 on (rf400 11) using bank tags [3,3,3,3,3,28,28,28,28,28]
theorem f400 (hard : BadRow [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,0,0,1] (.cons (f400s0 (.cons (hard.get (by decide : Floor44.e4846212150070 ∈ [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902])) (.cons (hard.get (by decide : Floor44.e4846212149974 ∈ [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902])) (.cons (hard.get (by decide : Floor44.e4846212136246 ∈ [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902])) (.cons (hard.get (by decide : Floor44.e4846212132694 ∈ [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902])) .nil))))) (.cons (f400s1 (.cons (hard.get (by decide : Floor44.e4846201402182 ∈ [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902])) (.cons (hard.get (by decide : Floor44.e4846166424902 ∈ [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902])) .nil))) (.cons (f400s2) (.cons (f400s3) (.cons (f400s4) (.cons (f400s5 (.cons (hard.get (by decide : Floor44.e4845899412678 ∈ [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902])) (.cons (hard.get (by decide : Floor44.e4846201402566 ∈ [Floor44.e4846212150070,Floor44.e4846212149974,Floor44.e4846212136246,Floor44.e4846212132694,Floor44.e4845899412678,Floor44.e4846201402566,Floor44.e4846201402182,Floor44.e4846166424902])) .nil))) (.cons (f400s6) (.cons (f400s7) (.cons (f400s8) (.cons (f400s9) (.cons (f400s10) (.cons (f400s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
