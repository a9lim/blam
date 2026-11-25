import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13416 (i : Nat) := Split43.five 12 i 8 5 4 false 3 2 5 [0,0,1,2,0]
certRow g13416s0 on (rg13416 0) using bank tags []
certRow g13416s1 on (rg13416 1) using bank tags [28,28,28,28,28,28]
certRow g13416s2 on (rg13416 2) using bank tags [28,28]
certRow g13416s3 on (rg13416 3) using bank tags [28,28,28,28]
certRow g13416s4 on (rg13416 4) using bank tags [28,28,28,28,28,28,29,29,19,19,29,29,19,19,29,29]
certRow g13416s5 on (rg13416 5) using bank tags []
certRow g13416s6 on (rg13416 6) using bank tags [28,28,28,28,28,28,28,28]
certRow g13416s7 on (rg13416 7) using bank tags [28,28,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817622674874,Floor44.e4818159545786]
certRow g13416s8 on (rg13416 8) using bank tags []
certRow g13416s9 on (rg13416 9) using bank tags []
certRow g13416s10 on (rg13416 10) using bank tags [28,28,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,29,1,29,29,29,1,29,29,29,29,19,19,29,29,19,19,29,29,29,29,29,0,29,29,29,0,29,29] except [Floor44.e4817624501882,Floor44.e4818161372794]
certRow g13416s11 on (rg13416 11) using bank tags []
theorem g13416 (hard : BadRow [Floor44.e4817624501882,Floor44.e4818161372794,Floor44.e4817622674874,Floor44.e4818159545786]) : BadRow (Grammar43.fiveRow 8 5 4 false 3 2 5 [0,0,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 3 2 5 [0,0,1,2,0] (.cons (g13416s0) (.cons (g13416s1) (.cons (g13416s2) (.cons (g13416s3) (.cons (g13416s4) (.cons (g13416s5) (.cons (g13416s6) (.cons (g13416s7 (.cons (hard.get (by decide : Floor44.e4817622674874 ∈ [Floor44.e4817624501882,Floor44.e4818161372794,Floor44.e4817622674874,Floor44.e4818159545786])) (.cons (hard.get (by decide : Floor44.e4818159545786 ∈ [Floor44.e4817624501882,Floor44.e4818161372794,Floor44.e4817622674874,Floor44.e4818159545786])) .nil))) (.cons (g13416s8) (.cons (g13416s9) (.cons (g13416s10 (.cons (hard.get (by decide : Floor44.e4817624501882 ∈ [Floor44.e4817624501882,Floor44.e4818161372794,Floor44.e4817622674874,Floor44.e4818159545786])) (.cons (hard.get (by decide : Floor44.e4818161372794 ∈ [Floor44.e4817624501882,Floor44.e4818161372794,Floor44.e4817622674874,Floor44.e4818159545786])) .nil))) (.cons (g13416s11) .nil))))))))))))
private abbrev rg13417 (i : Nat) := Split43.five 12 i 8 5 4 true 3 2 5 [0,0,1,2,0]
certRow g13417s0 on (rg13417 0) using bank tags []
certRow g13417s1 on (rg13417 1) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13417s2 on (rg13417 2) using bank tags [28,28,28,27,59,1]
certRow g13417s3 on (rg13417 3) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1]
certRow g13417s4 on (rg13417 4) using bank tags [28,28,28,27,59,1,28,28,28,27,59,1,28,28,28,27,59,1,15,14,19,19,1,1,1,28,1,1,1,1]
certRow g13417s5 on (rg13417 5) using bank tags []
certRow g13417s6 on (rg13417 6) using bank tags [28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,13,59,1,28,28,28,15,59,1]
certRow g13417s7 on (rg13417 7) using bank tags [28,28,28,0,59,1,38,14,1,0,1,1,7,28,1,1,1,1] except [Floor44.e1197493464506,Floor44.e1196965244346]
certRow g13417s8 on (rg13417 8) using bank tags []
certRow g13417s9 on (rg13417 9) using bank tags []
certRow g13417s10 on (rg13417 10) using bank tags [28,28,28,0,59,1,8,1,10,1,15,1,6,1,15,1,1,1,8,1,49,1,15,1,12,1,15,1,1,1,8,1,1,1,1,1,6,1,1,1,1,1,51,1,19,19,1,1,1,1,1,1,1,1,6,14,6,0,1,1,1,28,1,1,1,1] except [Floor44.e1197493522042,Floor44.e1196967071354]
certRow g13417s11 on (rg13417 11) using bank tags []
theorem g13417 (hard : BadRow [Floor44.e1197493522042,Floor44.e1197493464506,Floor44.e1196967071354,Floor44.e1196965244346]) : BadRow (Grammar43.fiveRow 8 5 4 true 3 2 5 [0,0,1,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 3 2 5 [0,0,1,2,0] (.cons (g13417s0) (.cons (g13417s1) (.cons (g13417s2) (.cons (g13417s3) (.cons (g13417s4) (.cons (g13417s5) (.cons (g13417s6) (.cons (g13417s7 (.cons (hard.get (by decide : Floor44.e1197493464506 ∈ [Floor44.e1197493522042,Floor44.e1197493464506,Floor44.e1196967071354,Floor44.e1196965244346])) (.cons (hard.get (by decide : Floor44.e1196965244346 ∈ [Floor44.e1197493522042,Floor44.e1197493464506,Floor44.e1196967071354,Floor44.e1196965244346])) .nil))) (.cons (g13417s8) (.cons (g13417s9) (.cons (g13417s10 (.cons (hard.get (by decide : Floor44.e1197493522042 ∈ [Floor44.e1197493522042,Floor44.e1197493464506,Floor44.e1196967071354,Floor44.e1196965244346])) (.cons (hard.get (by decide : Floor44.e1196967071354 ∈ [Floor44.e1197493522042,Floor44.e1197493464506,Floor44.e1196967071354,Floor44.e1196965244346])) .nil))) (.cons (g13417s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
