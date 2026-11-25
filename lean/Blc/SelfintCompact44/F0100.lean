import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf517 (i : Nat) := Split43.four 12 i ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,1,2]
certRow f517s0 on (rf517 0) using bank tags [3,3,3,3,3,3,57,57,57,6,0,189,20,20,20,20,20,20,15,32,32,22,0,22] except [Floor44.e4838381702254,Floor44.e4786842094702]
certRow f517s1 on (rf517 1) using bank tags [3,3,3,3,3,27,27,27,27,27]
certRow f517s2 on (rf517 2) using bank tags [3,3,27,27]
certRow f517s3 on (rf517 3) using bank tags [3,3,57,57,57,27,27,14,15,30]
certRow f517s4 on (rf517 4) using bank tags [3,3,3,3,3,27,27,27,27,27]
certRow f517s5 on (rf517 5) using bank tags [57,1]
certRow f517s6 on (rf517 6) using bank tags [3,3,3,3,3,3,57,27,27,27,27,27,21,1]
certRow f517s7 on (rf517 7) using bank tags []
certRow f517s8 on (rf517 8) using bank tags [57,0] except [Floor44.e4786764319598]
certRow f517s9 on (rf517 9) using bank tags []
certRow f517s10 on (rf517 10) using bank tags [3,57,57,57,57,57,57,57,184,1,1,1,1,1,1,1,1,138]
certRow f517s11 on (rf517 11) using bank tags []
theorem f517 (hard : BadRow [Floor44.e4838381702254,Floor44.e4786764319598,Floor44.e4786842094702]) : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,1,2] (.cons (f517s0 (.cons (hard.get (by decide : Floor44.e4838381702254 ∈ [Floor44.e4838381702254,Floor44.e4786764319598,Floor44.e4786842094702])) (.cons (hard.get (by decide : Floor44.e4786842094702 ∈ [Floor44.e4838381702254,Floor44.e4786764319598,Floor44.e4786842094702])) .nil))) (.cons (f517s1) (.cons (f517s2) (.cons (f517s3) (.cons (f517s4) (.cons (f517s5) (.cons (f517s6) (.cons (f517s7) (.cons (f517s8 (.cons (hard.get (by decide : Floor44.e4786764319598 ∈ [Floor44.e4838381702254,Floor44.e4786764319598,Floor44.e4786842094702])) .nil)) (.cons (f517s9) (.cons (f517s10) (.cons (f517s11) .nil))))))))))))
private abbrev rf518 (i : Nat) := Split43.four 12 i ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,2,1]
certRow f518s0 on (rf518 0) using bank tags [3,3,3,3,3,3,57,57,57,57,57,22,196,0,0,0,20,20,20,20,20,20,26,15,1,15,32,22,70,0,0,0] except [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518]
certRow f518s1 on (rf518 1) using bank tags [3,3,3,3,3,27,27,27,27,27]
certRow f518s2 on (rf518 2) using bank tags [3,3,27,27]
certRow f518s3 on (rf518 3) using bank tags [3,3,57,57,57,57,57,0,182,27,27,14,14,15,14,15,0,137] except [Floor44.e4838373051846,Floor44.e4786833444294]
certRow f518s4 on (rf518 4) using bank tags [3,3,3,3,3,27,27,27,27,27]
certRow f518s5 on (rf518 5) using bank tags [57,57,1,1]
certRow f518s6 on (rf518 6) using bank tags [3,3,3,3,3,3,57,27,27,27,27,27,21,1]
certRow f518s7 on (rf518 7) using bank tags [3,3,57,57,57,57,1,1,1,1,18,18]
certRow f518s8 on (rf518 8) using bank tags [57,0] except [Floor44.e4786764319606]
certRow f518s9 on (rf518 9) using bank tags [57,57,57,57,57,14,15,1,1,1]
certRow f518s10 on (rf518 10) using bank tags [3,57,57,35,1,1,1,35]
certRow f518s11 on (rf518 11) using bank tags []
theorem f518 (hard : BadRow [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294]) : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,2,1] (.cons (f518s0 (.cons (hard.get (by decide : Floor44.e4838381704134 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) (.cons (hard.get (by decide : Floor44.e4838381702598 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) (.cons (hard.get (by decide : Floor44.e4838381680070 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) (.cons (hard.get (by decide : Floor44.e4786842096582 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) (.cons (hard.get (by decide : Floor44.e4786842095046 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) (.cons (hard.get (by decide : Floor44.e4786842072518 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) .nil))))))) (.cons (f518s1) (.cons (f518s2) (.cons (f518s3 (.cons (hard.get (by decide : Floor44.e4838373051846 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) (.cons (hard.get (by decide : Floor44.e4786833444294 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) .nil))) (.cons (f518s4) (.cons (f518s5) (.cons (f518s6) (.cons (f518s7) (.cons (f518s8 (.cons (hard.get (by decide : Floor44.e4786764319606 ∈ [Floor44.e4838381704134,Floor44.e4838381702598,Floor44.e4838381680070,Floor44.e4838373051846,Floor44.e4786764319606,Floor44.e4786842096582,Floor44.e4786842095046,Floor44.e4786842072518,Floor44.e4786833444294])) .nil)) (.cons (f518s9) (.cons (f518s10) (.cons (f518s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
