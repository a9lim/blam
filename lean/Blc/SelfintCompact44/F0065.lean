import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf390 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,1,2,0]
certRow f390s0 on (rf390 0) using bank tags [3,3,3,3,3,3,3,28,28,28,6,0,0,0,0] except [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946]
certRow f390s1 on (rf390 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f390s2 on (rf390 2) using bank tags [3,3,3,3,3,28,6,6,6,6,6,6,6]
certRow f390s3 on (rf390 3) using bank tags [3,3,3,3,3,3,179,0,223,0] except [Floor44.e4846201024954,Floor44.e4846169107898]
certRow f390s4 on (rf390 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28]
certRow f390s5 on (rf390 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f390s6 on (rf390 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f390s7 on (rf390 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f390s8 on (rf390 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,0] except [Floor44.e4846169362042]
certRow f390s9 on (rf390 9) using bank tags [28,28,28,28,28,28,28]
certRow f390s10 on (rf390 10) using bank tags [28]
certRow f390s11 on (rf390 11) using bank tags [3,3,3,3,28,28,3,3,3,3,3,3,28,28,28,28]
theorem f390 (hard : BadRow [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946,Floor44.e4846169362042,Floor44.e4846201024954,Floor44.e4846169107898]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,1,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,1,2,0] (.cons (f390s0 (.cons (hard.get (by decide : Floor44.e4846212134522 ∈ [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946,Floor44.e4846169362042,Floor44.e4846201024954,Floor44.e4846169107898])) (.cons (hard.get (by decide : Floor44.e4846212132282 ∈ [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946,Floor44.e4846169362042,Floor44.e4846201024954,Floor44.e4846169107898])) (.cons (hard.get (by decide : Floor44.e4846212288122 ∈ [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946,Floor44.e4846169362042,Floor44.e4846201024954,Floor44.e4846169107898])) (.cons (hard.get (by decide : Floor44.e4846212877946 ∈ [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946,Floor44.e4846169362042,Floor44.e4846201024954,Floor44.e4846169107898])) .nil))))) (.cons (f390s1) (.cons (f390s2) (.cons (f390s3 (.cons (hard.get (by decide : Floor44.e4846201024954 ∈ [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946,Floor44.e4846169362042,Floor44.e4846201024954,Floor44.e4846169107898])) (.cons (hard.get (by decide : Floor44.e4846169107898 ∈ [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946,Floor44.e4846169362042,Floor44.e4846201024954,Floor44.e4846169107898])) .nil))) (.cons (f390s4) (.cons (f390s5) (.cons (f390s6) (.cons (f390s7) (.cons (f390s8 (.cons (hard.get (by decide : Floor44.e4846169362042 ∈ [Floor44.e4846212134522,Floor44.e4846212132282,Floor44.e4846212288122,Floor44.e4846212877946,Floor44.e4846169362042,Floor44.e4846201024954,Floor44.e4846169107898])) .nil)) (.cons (f390s9) (.cons (f390s10) (.cons (f390s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
