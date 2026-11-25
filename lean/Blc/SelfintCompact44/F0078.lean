import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf415 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,0,1,0]
certRow f415s0 on (rf415 0) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f415s1 on (rf415 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f415s2 on (rf415 2) using bank tags [28,28,28,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
certRow f415s3 on (rf415 3) using bank tags [28,28,28,28,0,0,0,0,0] except [Floor44.e4846200016090,Floor44.e4846200015706,Floor44.e4846199895258,Floor44.e4846199894874,Floor44.e4846199864666]
certRow f415s4 on (rf415 4) using bank tags [28,28,28,28,28,28,28]
certRow f415s5 on (rf415 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f415s6 on (rf415 6) using bank tags [28,28,28,28,28]
certRow f415s7 on (rf415 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f415s8 on (rf415 8) using bank tags []
certRow f415s9 on (rf415 9) using bank tags []
certRow f415s10 on (rf415 10) using bank tags []
certRow f415s11 on (rf415 11) using bank tags []
theorem f415 (hard : BadRow [Floor44.e4846200016090,Floor44.e4846200015706,Floor44.e4846199895258,Floor44.e4846199894874,Floor44.e4846199864666]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,0,1,0] (.cons (f415s0) (.cons (f415s1) (.cons (f415s2) (.cons (f415s3 (.cons (hard.get (by decide : Floor44.e4846200016090 ∈ [Floor44.e4846200016090,Floor44.e4846200015706,Floor44.e4846199895258,Floor44.e4846199894874,Floor44.e4846199864666])) (.cons (hard.get (by decide : Floor44.e4846200015706 ∈ [Floor44.e4846200016090,Floor44.e4846200015706,Floor44.e4846199895258,Floor44.e4846199894874,Floor44.e4846199864666])) (.cons (hard.get (by decide : Floor44.e4846199895258 ∈ [Floor44.e4846200016090,Floor44.e4846200015706,Floor44.e4846199895258,Floor44.e4846199894874,Floor44.e4846199864666])) (.cons (hard.get (by decide : Floor44.e4846199894874 ∈ [Floor44.e4846200016090,Floor44.e4846200015706,Floor44.e4846199895258,Floor44.e4846199894874,Floor44.e4846199864666])) (.cons (hard.get (by decide : Floor44.e4846199864666 ∈ [Floor44.e4846200016090,Floor44.e4846200015706,Floor44.e4846199895258,Floor44.e4846199894874,Floor44.e4846199864666])) .nil)))))) (.cons (f415s4) (.cons (f415s5) (.cons (f415s6) (.cons (f415s7) (.cons (f415s8) (.cons (f415s9) (.cons (f415s10) (.cons (f415s11) .nil))))))))))))
private abbrev rf416 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,1,0,0]
certRow f416s0 on (rf416 0) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f416s1 on (rf416 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f416s2 on (rf416 2) using bank tags [28,28,28,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
certRow f416s3 on (rf416 3) using bank tags [28,28,28,28,0,0,0,0,0,0,0] except [Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106]
certRow f416s4 on (rf416 4) using bank tags [28,28,28,28,28,28,28]
certRow f416s5 on (rf416 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f416s6 on (rf416 6) using bank tags [28,28,28,28,28]
certRow f416s7 on (rf416 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,0,0] except [Floor44.e4846200016282,Floor44.e4846199895450]
certRow f416s8 on (rf416 8) using bank tags [28,28]
certRow f416s9 on (rf416 9) using bank tags []
certRow f416s10 on (rf416 10) using bank tags []
certRow f416s11 on (rf416 11) using bank tags []
theorem f416 (hard : BadRow [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,1,0,0] (.cons (f416s0) (.cons (f416s1) (.cons (f416s2) (.cons (f416s3 (.cons (hard.get (by decide : Floor44.e4846200016106 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) (.cons (hard.get (by decide : Floor44.e4846200015722 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) (.cons (hard.get (by decide : Floor44.e4846199895274 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) (.cons (hard.get (by decide : Floor44.e4846199894890 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) (.cons (hard.get (by decide : Floor44.e4846199864682 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) (.cons (hard.get (by decide : Floor44.e4846166078314 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) (.cons (hard.get (by decide : Floor44.e4846166048106 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) .nil)))))))) (.cons (f416s4) (.cons (f416s5) (.cons (f416s6) (.cons (f416s7 (.cons (hard.get (by decide : Floor44.e4846200016282 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) (.cons (hard.get (by decide : Floor44.e4846199895450 ∈ [Floor44.e4846200016282,Floor44.e4846199895450,Floor44.e4846200016106,Floor44.e4846200015722,Floor44.e4846199895274,Floor44.e4846199894890,Floor44.e4846199864682,Floor44.e4846166078314,Floor44.e4846166048106])) .nil))) (.cons (f416s8) (.cons (f416s9) (.cons (f416s10) (.cons (f416s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
