import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8070 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [0,2,1,0,0,0]

private theorem g8070s0 : BadRow (bg8070 0) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8070s1 : BadRow (bg8070 1) :=
  row_of_forall (discharge bank [14,4,4,4,14,4,4,4,4,14,4,4,4,20,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8070s2 : BadRow (bg8070 2) :=
  row_of_forall (discharge bank [4,4,4,4,14,4,4,4,14,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,14,48,48,48,14,14,14,14,14,36,14,14,14,14,14,14,14,14,48,14,14,14] (hard := []) (by decide +kernel) .nil)

private theorem g8070s3 : BadRow (bg8070 3) :=
  row_of_forall (discharge bank [14,14,14,4,4,4,14,4,4,4,4,14,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8070s4 : BadRow (bg8070 4) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,1,4,4,4,20,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8070s5 (h : BadRow [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738]) : BadRow (bg8070 5) :=
  row_of_forall (discharge bank [14,14,14,4,4,4,4,4,4,4,0,3,0,0,0,0,3,0] (hard := [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738]) (by decide +kernel) h)

private theorem g8070s6 : BadRow (bg8070 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8070s7 (h : BadRow [Floor43.e2422949007002,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714]) : BadRow (bg8070 7) :=
  row_of_forall (discharge bank [14,4,14,4,14,4,1,4,4,4,4,4,4,56,0,18,14,18,14,18,48,18,14,3,0,3,0,3,0,3,0,3,0,18,14] (hard := [Floor43.e2422949007002,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714]) (by decide +kernel) h)

theorem g8070 (hard : BadRow [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,2,1,0,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [0,2,1,0,0,0] (.cons (g8070s0) (.cons (g8070s1) (.cons (g8070s2) (.cons (g8070s3) (.cons (g8070s4) (.cons (g8070s5 (.cons (hard.get (by decide : Floor43.e2423100750362 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423100750434 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423100750242 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423100747426 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423100526242 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423083224738 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) .nil))))))) (.cons (g8070s6) (.cons (g8070s7 (.cons (hard.get (by decide : Floor43.e2422949007002 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423100750218 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423100747402 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423100747306 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423100526218 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) (.cons (hard.get (by decide : Floor43.e2423083224714 ∈ [Floor43.e2423100750362,Floor43.e2423100750434,Floor43.e2422949007002,Floor43.e2423100750242,Floor43.e2423100747426,Floor43.e2423100526242,Floor43.e2423083224738,Floor43.e2423100750218,Floor43.e2423100747402,Floor43.e2423100747306,Floor43.e2423100526218,Floor43.e2423083224714])) .nil))))))) .nil))))))))

private abbrev bg8071 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [0,2,1,0,0,0]

private theorem bg8071p0 : BadRow (bg8071 0) := by empty43

private theorem bg8071p1 : BadRow (bg8071 1) := by empty43

private theorem bg8071p2 : BadRow (bg8071 2) := by empty43

private theorem bg8071p3 : BadRow (bg8071 3) := by empty43

private theorem bg8071p4 : BadRow (bg8071 4) := by empty43

private theorem bg8071p5 : BadRow (bg8071 5) := by empty43

private theorem bg8071p6 : BadRow (bg8071 6) := by empty43

private theorem bg8071p7 : BadRow (bg8071 7) := by empty43

private theorem bg8071p8 : BadRow (bg8071 8) := by empty43

private theorem bg8071p9 : BadRow (bg8071 9) := by empty43

private theorem bg8071p10 : BadRow (bg8071 10) := by empty43

private theorem bg8071p11 : BadRow (bg8071 11) := by empty43

theorem g8071 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,2,1,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [0,2,1,0,0,0] (.cons (bg8071p0) (.cons (bg8071p1) (.cons (bg8071p2) (.cons (bg8071p3) (.cons (bg8071p4) (.cons (bg8071p5) (.cons (bg8071p6) (.cons (bg8071p7) (.cons (bg8071p8) (.cons (bg8071p9) (.cons (bg8071p10) (.cons (bg8071p11) .nil))))))))))))

private abbrev bg8072 (i : Nat) := Split43.five 12 i 8 5 3 false 3 3 6 [0,3,0,0,0,0]

private theorem bg8072p0 : BadRow (bg8072 0) := by empty43

private theorem bg8072p1 : BadRow (bg8072 1) := by empty43

private theorem bg8072p2 : BadRow (bg8072 2) := by empty43

private theorem bg8072p3 : BadRow (bg8072 3) := by empty43

private theorem bg8072p4 : BadRow (bg8072 4) := by empty43

private theorem bg8072p5 : BadRow (bg8072 5) := by empty43

private theorem bg8072p6 : BadRow (bg8072 6) := by empty43

private theorem bg8072p7 : BadRow (bg8072 7) := by empty43

private theorem bg8072p8 : BadRow (bg8072 8) := by empty43

private theorem bg8072p9 : BadRow (bg8072 9) := by empty43

private theorem bg8072p10 : BadRow (bg8072 10) := by empty43

private theorem bg8072p11 : BadRow (bg8072 11) := by empty43

theorem g8072 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,3,0,0,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 false 3 3 6 [0,3,0,0,0,0] (.cons (bg8072p0) (.cons (bg8072p1) (.cons (bg8072p2) (.cons (bg8072p3) (.cons (bg8072p4) (.cons (bg8072p5) (.cons (bg8072p6) (.cons (bg8072p7) (.cons (bg8072p8) (.cons (bg8072p9) (.cons (bg8072p10) (.cons (bg8072p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
