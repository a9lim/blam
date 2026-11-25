import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13900 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 4 [1,1,2,0]
certRow g13900s0 on (rg13900 0) using bank tags []
certRow g13900s1 on (rg13900 1) using bank tags [24,26,22,6,57,57,57,26,22,6,6,24,26,15,15,46,26,19,24,26,6,6,57,57,57,15,6,6,6,24,26,15,15,46,30,19]
certRow g13900s2 on (rg13900 2) using bank tags [24,0,66,0,57,57,57,26,66,0,0,24,0,32,6,46,0,19] except [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498]
certRow g13900s3 on (rg13900 3) using bank tags []
certRow g13900s4 on (rg13900 4) using bank tags []
certRow g13900s5 on (rg13900 5) using bank tags [29,22,29,22,6,22,29,29,29,6,29,6,29,6,29,6,29,6,29,6,29,6,29,22,29,22,29,0,29,45,29,22,29,6,63,19] except [Floor44.e4777782480506]
certRow g13900s6 on (rg13900 6) using bank tags []
certRow g13900s7 on (rg13900 7) using bank tags []
certRow g13900s8 on (rg13900 8) using bank tags []
certRow g13900s9 on (rg13900 9) using bank tags []
certRow g13900s10 on (rg13900 10) using bank tags []
certRow g13900s11 on (rg13900 11) using bank tags []
theorem g13900 (hard : BadRow [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498,Floor44.e4777782480506]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 4 [1,1,2,0] (.cons (g13900s0) (.cons (g13900s1) (.cons (g13900s2 (.cons (hard.get (by decide : Floor44.e5594733307810 ∈ [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498,Floor44.e4777782480506])) (.cons (hard.get (by decide : Floor44.e4849454380666 ∈ [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498,Floor44.e4777782480506])) (.cons (hard.get (by decide : Floor44.e4786237830778 ∈ [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498,Floor44.e4777782480506])) (.cons (hard.get (by decide : Floor44.e4778587420282 ∈ [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498,Floor44.e4777782480506])) (.cons (hard.get (by decide : Floor44.e4770131703418 ∈ [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498,Floor44.e4777782480506])) (.cons (hard.get (by decide : Floor44.e4768118437498 ∈ [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498,Floor44.e4777782480506])) .nil))))))) (.cons (g13900s3) (.cons (g13900s4) (.cons (g13900s5 (.cons (hard.get (by decide : Floor44.e4777782480506 ∈ [Floor44.e5594733307810,Floor44.e4849454380666,Floor44.e4786237830778,Floor44.e4778587420282,Floor44.e4770131703418,Floor44.e4768118437498,Floor44.e4777782480506])) .nil)) (.cons (g13900s6) (.cons (g13900s7) (.cons (g13900s8) (.cons (g13900s9) (.cons (g13900s10) (.cons (g13900s11) .nil))))))))))))
private abbrev rg13901 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 4 [1,1,2,0]
certRow g13901s0 on (rg13901 0) using bank tags []
certRow g13901s1 on (rg13901 1) using bank tags [28,59,59,59,1,1,1,1,14,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,14,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13901s2 on (rg13901 2) using bank tags [28,59,59,59,1,1,1,1,14,57,0,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] except [Floor44.e1398683326954]
certRow g13901s3 on (rg13901 3) using bank tags []
certRow g13901s4 on (rg13901 4) using bank tags []
certRow g13901s5 on (rg13901 5) using bank tags [6,1,1,1,1,1,1,1,29,12,6,1,29,12,6,1,3,1,1,1,6,1,1,1,1,1,60,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13901s6 on (rg13901 6) using bank tags []
certRow g13901s7 on (rg13901 7) using bank tags []
certRow g13901s8 on (rg13901 8) using bank tags []
certRow g13901s9 on (rg13901 9) using bank tags []
certRow g13901s10 on (rg13901 10) using bank tags []
certRow g13901s11 on (rg13901 11) using bank tags []
theorem g13901 (hard : BadRow [Floor44.e1398683326954]) : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [1,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 4 [1,1,2,0] (.cons (g13901s0) (.cons (g13901s1) (.cons (g13901s2 (.cons (hard.get (by decide : Floor44.e1398683326954 ∈ [Floor44.e1398683326954])) .nil)) (.cons (g13901s3) (.cons (g13901s4) (.cons (g13901s5) (.cons (g13901s6) (.cons (g13901s7) (.cons (g13901s8) (.cons (g13901s9) (.cons (g13901s10) (.cons (g13901s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
