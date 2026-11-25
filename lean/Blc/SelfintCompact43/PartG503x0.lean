import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8048 (i : Nat) := Split43.five 16 i 8 5 3 false 3 3 6 [0,1,0,0,2,0]

private theorem g8048s0 : BadRow (bg8048 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8048s1 : BadRow (bg8048 1) :=
  row_of_forall (discharge bank [4,4,4,31,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8048s2 : BadRow (bg8048 2) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8048s3 : BadRow (bg8048 3) :=
  row_of_forall (discharge bank [4,4,4,31,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8048s4 : BadRow (bg8048 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8048s5 : BadRow (bg8048 5) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8048s6 : BadRow (bg8048 6) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8048s7 : BadRow (bg8048 7) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8048s8 : BadRow (bg8048 8) :=
  row_of_forall (discharge bank [1,4,4,4,1,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8048s9 : BadRow (bg8048 9) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8048s10 : BadRow (bg8048 10) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,1,4,4,4,1,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,7,7,7,7,14,14,14,14,14,14,14,14,14,14,14,14,14,14,36,14,14,14,14,14,14,14,14,14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

private theorem g8048s11 : BadRow (bg8048 11) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8048s12 : BadRow (bg8048 12) :=
  row_of_forall (discharge bank [4,4,4,1,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8048s13 (h : BadRow [Floor43.e2423100516066,Floor43.e2423100512994]) : BadRow (bg8048 13) :=
  row_of_forall (discharge bank [47,47,0,0,93] (hard := [Floor43.e2423100516066,Floor43.e2423100512994]) (by decide +kernel) h)

private theorem g8048s14 : BadRow (bg8048 14) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g8048s15 (h : BadRow [Floor43.e2423099942586,Floor43.e2423100467386,Floor43.e2423100465850]) : BadRow (bg8048 15) :=
  row_of_forall (discharge bank [1,14,1,14,18,47,18,0,18,115,3,48,3,48,3,146,3,0,3,0] (hard := [Floor43.e2423099942586,Floor43.e2423100467386,Floor43.e2423100465850]) (by decide +kernel) h)

theorem g8048 (hard : BadRow [Floor43.e2423100516066,Floor43.e2423100512994,Floor43.e2423099942586,Floor43.e2423100467386,Floor43.e2423100465850]) : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,1,0,0,2,0]) :=
  Split43.five_cover 16 (by decide) 8 5 3 false 3 3 6 [0,1,0,0,2,0] (.cons (g8048s0) (.cons (g8048s1) (.cons (g8048s2) (.cons (g8048s3) (.cons (g8048s4) (.cons (g8048s5) (.cons (g8048s6) (.cons (g8048s7) (.cons (g8048s8) (.cons (g8048s9) (.cons (g8048s10) (.cons (g8048s11) (.cons (g8048s12) (.cons (g8048s13 (.cons (hard.get (by decide : Floor43.e2423100516066 ∈ [Floor43.e2423100516066,Floor43.e2423100512994,Floor43.e2423099942586,Floor43.e2423100467386,Floor43.e2423100465850])) (.cons (hard.get (by decide : Floor43.e2423100512994 ∈ [Floor43.e2423100516066,Floor43.e2423100512994,Floor43.e2423099942586,Floor43.e2423100467386,Floor43.e2423100465850])) .nil))) (.cons (g8048s14) (.cons (g8048s15 (.cons (hard.get (by decide : Floor43.e2423099942586 ∈ [Floor43.e2423100516066,Floor43.e2423100512994,Floor43.e2423099942586,Floor43.e2423100467386,Floor43.e2423100465850])) (.cons (hard.get (by decide : Floor43.e2423100467386 ∈ [Floor43.e2423100516066,Floor43.e2423100512994,Floor43.e2423099942586,Floor43.e2423100467386,Floor43.e2423100465850])) (.cons (hard.get (by decide : Floor43.e2423100465850 ∈ [Floor43.e2423100516066,Floor43.e2423100512994,Floor43.e2423099942586,Floor43.e2423100467386,Floor43.e2423100465850])) .nil)))) .nil))))))))))))))))

private abbrev bg8049 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [0,1,0,0,2,0]

private theorem bg8049p0 : BadRow (bg8049 0) := by empty43

private theorem bg8049p1 : BadRow (bg8049 1) := by empty43

private theorem bg8049p2 : BadRow (bg8049 2) := by empty43

private theorem bg8049p3 : BadRow (bg8049 3) := by empty43

private theorem bg8049p4 : BadRow (bg8049 4) := by empty43

private theorem bg8049p5 : BadRow (bg8049 5) := by empty43

private theorem bg8049p6 : BadRow (bg8049 6) := by empty43

private theorem bg8049p7 : BadRow (bg8049 7) := by empty43

private theorem bg8049p8 : BadRow (bg8049 8) := by empty43

private theorem bg8049p9 : BadRow (bg8049 9) := by empty43

private theorem bg8049p10 : BadRow (bg8049 10) := by empty43

private theorem bg8049p11 : BadRow (bg8049 11) := by empty43

theorem g8049 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,1,0,0,2,0]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [0,1,0,0,2,0] (.cons (bg8049p0) (.cons (bg8049p1) (.cons (bg8049p2) (.cons (bg8049p3) (.cons (bg8049p4) (.cons (bg8049p5) (.cons (bg8049p6) (.cons (bg8049p7) (.cons (bg8049p8) (.cons (bg8049p9) (.cons (bg8049p10) (.cons (bg8049p11) .nil))))))))))))

theorem g8050 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8051 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8052 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8053 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
