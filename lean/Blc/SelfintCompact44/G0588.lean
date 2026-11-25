import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg12354 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [1,0,0,0,2]
certRow g12354s0 on (rg12354 0) using bank tags []
certRow g12354s1 on (rg12354 1) using bank tags []
certRow g12354s2 on (rg12354 2) using bank tags []
certRow g12354s3 on (rg12354 3) using bank tags []
certRow g12354s4 on (rg12354 4) using bank tags []
certRow g12354s5 on (rg12354 5) using bank tags []
certRow g12354s6 on (rg12354 6) using bank tags []
certRow g12354s7 on (rg12354 7) using bank tags []
certRow g12354s8 on (rg12354 8) using bank tags []
certRow g12354s9 on (rg12354 9) using bank tags []
certRow g12354s10 on (rg12354 10) using bank tags []
certRow g12354s11 on (rg12354 11) using bank tags []
theorem g12354 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,0,0,0,2]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [1,0,0,0,2] (.cons (g12354s0) (.cons (g12354s1) (.cons (g12354s2) (.cons (g12354s3) (.cons (g12354s4) (.cons (g12354s5) (.cons (g12354s6) (.cons (g12354s7) (.cons (g12354s8) (.cons (g12354s9) (.cons (g12354s10) (.cons (g12354s11) .nil))))))))))))
certRow g12355 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,0,0,0,2]) using bank tags []
certRow g12356 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,0,0,1,1]) using bank tags []
certRow g12357 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,0,0,1,1]) using bank tags []
private abbrev rg12358 (i : Nat) := Split43.five 12 i 7 7 4 false 3 5 5 [1,0,0,2,0]
certRow g12358s0 on (rg12358 0) using bank tags []
certRow g12358s1 on (rg12358 1) using bank tags []
certRow g12358s2 on (rg12358 2) using bank tags []
certRow g12358s3 on (rg12358 3) using bank tags []
certRow g12358s4 on (rg12358 4) using bank tags []
certRow g12358s5 on (rg12358 5) using bank tags []
certRow g12358s6 on (rg12358 6) using bank tags []
certRow g12358s7 on (rg12358 7) using bank tags []
certRow g12358s8 on (rg12358 8) using bank tags []
certRow g12358s9 on (rg12358 9) using bank tags []
certRow g12358s10 on (rg12358 10) using bank tags []
certRow g12358s11 on (rg12358 11) using bank tags []
theorem g12358 : BadRow (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,0,0,2,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 3 5 5 [1,0,0,2,0] (.cons (g12358s0) (.cons (g12358s1) (.cons (g12358s2) (.cons (g12358s3) (.cons (g12358s4) (.cons (g12358s5) (.cons (g12358s6) (.cons (g12358s7) (.cons (g12358s8) (.cons (g12358s9) (.cons (g12358s10) (.cons (g12358s11) .nil))))))))))))
certRow g12359 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,0,0,2,0]) using bank tags []
certRow g12360 on (Grammar43.fiveRow 7 7 4 false 3 5 5 [1,0,1,0,1]) using bank tags []
certRow g12361 on (Grammar43.fiveRow 7 7 4 true 3 5 5 [1,0,1,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
