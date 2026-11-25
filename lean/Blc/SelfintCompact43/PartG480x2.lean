import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7694 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 5 [0,0,0,1,2]

private theorem g7694s0 : BadRow (bg7694 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7694s1 : BadRow (bg7694 1) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7694s2 : BadRow (bg7694 2) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,47] (hard := []) (by decide +kernel) .nil)

private theorem g7694s3 : BadRow (bg7694 3) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7694s4 : BadRow (bg7694 4) :=
  row_of_forall (discharge bank [4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,4,4,4,6,36,36,36,3,12,36,36,3,4] (hard := []) (by decide +kernel) .nil)

private theorem g7694s5 : BadRow (bg7694 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7694s6 (h : BadRow [Floor43.e2804827600610,Floor43.e2392578591598]) : BadRow (bg7694 6) :=
  row_of_forall (discharge bank [4,4,4,7,4,4,4,7,4,4,4,7,4,4,4,30,14,3,3,17,3,14,3,7,14,3,3,17,3,14,3,7,14,3,3,17,3,14,3,7,36,36,3,57,36,36,3,66,3,0,3,3,37,3,0,3,4] (hard := [Floor43.e2804827600610,Floor43.e2392578591598]) (by decide +kernel) h)

private theorem g7694s7 : BadRow (bg7694 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7694 (hard : BadRow [Floor43.e2804827600610,Floor43.e2392578591598]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,0,1,2]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 5 [0,0,0,1,2] (.cons (g7694s0) (.cons (g7694s1) (.cons (g7694s2) (.cons (g7694s3) (.cons (g7694s4) (.cons (g7694s5) (.cons (g7694s6 (.cons (hard.get (by decide : Floor43.e2804827600610 ∈ [Floor43.e2804827600610,Floor43.e2392578591598])) (.cons (hard.get (by decide : Floor43.e2392578591598 ∈ [Floor43.e2804827600610,Floor43.e2392578591598])) .nil))) (.cons (g7694s7) .nil))))))))

private abbrev bg7695 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 5 [0,0,0,1,2]

private theorem g7695s0 : BadRow (bg7695 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7695s1 : BadRow (bg7695 1) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7695s2 : BadRow (bg7695 2) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7695s3 : BadRow (bg7695 3) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7695s4 : BadRow (bg7695 4) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,36,26,36,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7695s5 : BadRow (bg7695 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7695s6 (h : BadRow [Floor43.e701206900154]) : BadRow (bg7695 6) :=
  row_of_forall (discharge bank [4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,1,1,1,1,1,3,26,0,1,1,1,1,1] (hard := [Floor43.e701206900154]) (by decide +kernel) h)

private theorem g7695s7 : BadRow (bg7695 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7695 (hard : BadRow [Floor43.e701206900154]) : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,0,1,2]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 5 [0,0,0,1,2] (.cons (g7695s0) (.cons (g7695s1) (.cons (g7695s2) (.cons (g7695s3) (.cons (g7695s4) (.cons (g7695s5) (.cons (g7695s6 (.cons (hard.get (by decide : Floor43.e701206900154 ∈ [Floor43.e701206900154])) .nil)) (.cons (g7695s7) .nil))))))))


end Blc.SelfintSingleObject.Compact43
