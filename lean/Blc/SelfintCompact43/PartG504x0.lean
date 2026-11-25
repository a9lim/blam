import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg8064 (i : Nat) := Split43.five 8 i 8 5 3 false 3 3 6 [0,2,0,0,0,1]

private theorem g8064s0 : BadRow (bg8064 0) :=
  row_of_forall (discharge bank [53,4,4,4,47,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8064s1 : BadRow (bg8064 1) :=
  row_of_forall (discharge bank [4,4,47,4,4,4,4,4,4,53,4,4,4,47,4,4,4,20,4,4,4,4,53,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8064s2 : BadRow (bg8064 2) :=
  row_of_forall (discharge bank [53,53,47,4,4,4,20,4,4,4,4,53,4,4,4,14,14,47,4,4,4,47,4,47,4,4,4,4,4,4,4,4,53,4,4,4,47,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,7,7,7,7,1,1,1,1,1,1,1,11,11,36,1,1,14,1,1,1,1,1,1,47,1,1,36,1,1,13] (hard := []) (by decide +kernel) .nil)

private theorem g8064s3 : BadRow (bg8064 3) :=
  row_of_forall (discharge bank [4,4,14,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8064s4 : BadRow (bg8064 4) :=
  row_of_forall (discharge bank [4,4,1,4,4,4,4,4,4,53,4,4,4,1,4,4,4,20,4,4,4,4,53,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8064s5 : BadRow (bg8064 5) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8064s6 : BadRow (bg8064 6) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g8064s7 : BadRow (bg8064 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g8064 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 6 [0,2,0,0,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 3 6 [0,2,0,0,0,1] (.cons (g8064s0) (.cons (g8064s1) (.cons (g8064s2) (.cons (g8064s3) (.cons (g8064s4) (.cons (g8064s5) (.cons (g8064s6) (.cons (g8064s7) .nil))))))))

private abbrev bg8065 (i : Nat) := Split43.five 12 i 8 5 3 true 3 3 6 [0,2,0,0,0,1]

private theorem bg8065p0 : BadRow (bg8065 0) := by empty43

private theorem bg8065p1 : BadRow (bg8065 1) := by empty43

private theorem bg8065p2 : BadRow (bg8065 2) := by empty43

private theorem bg8065p3 : BadRow (bg8065 3) := by empty43

private theorem bg8065p4 : BadRow (bg8065 4) := by empty43

private theorem bg8065p5 : BadRow (bg8065 5) := by empty43

private theorem bg8065p6 : BadRow (bg8065 6) := by empty43

private theorem bg8065p7 : BadRow (bg8065 7) := by empty43

private theorem bg8065p8 : BadRow (bg8065 8) := by empty43

private theorem bg8065p9 : BadRow (bg8065 9) := by empty43

private theorem bg8065p10 : BadRow (bg8065 10) := by empty43

private theorem bg8065p11 : BadRow (bg8065 11) := by empty43

theorem g8065 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 6 [0,2,0,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 3 true 3 3 6 [0,2,0,0,0,1] (.cons (bg8065p0) (.cons (bg8065p1) (.cons (bg8065p2) (.cons (bg8065p3) (.cons (bg8065p4) (.cons (bg8065p5) (.cons (bg8065p6) (.cons (bg8065p7) (.cons (bg8065p8) (.cons (bg8065p9) (.cons (bg8065p10) (.cons (bg8065p11) .nil))))))))))))


end Blc.SelfintSingleObject.Compact43
