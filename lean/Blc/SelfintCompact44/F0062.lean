import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf383 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,0,3,1,0,0]
certRow f383s0 on (rf383 0) using bank tags [28,28,28,28,28,28]
certRow f383s1 on (rf383 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f383s2 on (rf383 2) using bank tags [28,28,28,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,0,35,35,0] except [Floor44.e4846434513818,Floor44.e4846426029290]
certRow f383s3 on (rf383 3) using bank tags [28,28,28,28,35,0,0,0,224,134,0,19,0,0] except [Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858]
certRow f383s4 on (rf383 4) using bank tags [28,28,28,28,28,28]
certRow f383s5 on (rf383 5) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f383s6 on (rf383 6) using bank tags [28,28,28,28,28,28,28]
certRow f383s7 on (rf383 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,0,0] except [Floor44.e4846199881114,Floor44.e4846200962458]
certRow f383s8 on (rf383 8) using bank tags [28,28,28,28,28,28]
certRow f383s9 on (rf383 9) using bank tags [28,28,28,28,28]
certRow f383s10 on (rf383 10) using bank tags [19,19,19]
certRow f383s11 on (rf383 11) using bank tags [28,28,28,28,28,28]
theorem f383 (hard : BadRow [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,0,3,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,0,3,1,0,0] (.cons (f383s0) (.cons (f383s1) (.cons (f383s2 (.cons (hard.get (by decide : Floor44.e4846434513818 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) (.cons (hard.get (by decide : Floor44.e4846426029290 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) .nil))) (.cons (f383s3 (.cons (hard.get (by decide : Floor44.e4846199880938 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) (.cons (hard.get (by decide : Floor44.e4846199861098 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) (.cons (hard.get (by decide : Floor44.e4846201109738 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) (.cons (hard.get (by decide : Floor44.e4846224702698 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) (.cons (hard.get (by decide : Floor44.e4846166044522 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) (.cons (hard.get (by decide : Floor44.e4846166314858 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) .nil))))))) (.cons (f383s4) (.cons (f383s5) (.cons (f383s6) (.cons (f383s7 (.cons (hard.get (by decide : Floor44.e4846199881114 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) (.cons (hard.get (by decide : Floor44.e4846200962458 ∈ [Floor44.e4846434513818,Floor44.e4846426029290,Floor44.e4846199881114,Floor44.e4846200962458,Floor44.e4846199880938,Floor44.e4846199861098,Floor44.e4846201109738,Floor44.e4846224702698,Floor44.e4846166044522,Floor44.e4846166314858])) .nil))) (.cons (f383s8) (.cons (f383s9) (.cons (f383s10) (.cons (f383s11) .nil))))))))))))
private abbrev rf384 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,0,3]
certRow f384s0 on (rf384 0) using bank tags []
certRow f384s1 on (rf384 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f384s2 on (rf384 2) using bank tags [28,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow f384s3 on (rf384 3) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f384s4 on (rf384 4) using bank tags [28,28,28,28,28]
certRow f384s5 on (rf384 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f384s6 on (rf384 6) using bank tags []
certRow f384s7 on (rf384 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f384s8 on (rf384 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f384s9 on (rf384 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f384s10 on (rf384 10) using bank tags []
certRow f384s11 on (rf384 11) using bank tags [28,28,28,28,28]
theorem f384 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,0,3] (.cons (f384s0) (.cons (f384s1) (.cons (f384s2) (.cons (f384s3) (.cons (f384s4) (.cons (f384s5) (.cons (f384s6) (.cons (f384s7) (.cons (f384s8) (.cons (f384s9) (.cons (f384s10) (.cons (f384s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
