import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7584 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7585 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7586 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,1,0,2,0]

private theorem g7586s0 : BadRow (bg7586 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,6,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7586s1 : BadRow (bg7586 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7586s2 : BadRow (bg7586 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,13,13] (hard := []) (by decide +kernel) .nil)

private theorem g7586s3 : BadRow (bg7586 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,15,15,15,15,15,38,14,37,10,37,14] (hard := []) (by decide +kernel) .nil)

private theorem g7586s4 : BadRow (bg7586 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7586s5 : BadRow (bg7586 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7586s6 : BadRow (bg7586 6) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7586s7 : BadRow (bg7586 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7586 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,1,0,2,0] (.cons (g7586s0) (.cons (g7586s1) (.cons (g7586s2) (.cons (g7586s3) (.cons (g7586s4) (.cons (g7586s5) (.cons (g7586s6) (.cons (g7586s7) .nil))))))))

theorem g7587 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7588 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7589 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7590 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7591 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7592 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,1,2,0,0]

private theorem g7592s0 : BadRow (bg7592 0) :=
  row_of_forall (discharge bank [2,2,2,2,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7592s1 : BadRow (bg7592 1) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7592s2 : BadRow (bg7592 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,1,4,4,13] (hard := []) (by decide +kernel) .nil)

private theorem g7592s3 : BadRow (bg7592 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,15,15,15,9,9,9,11] (hard := []) (by decide +kernel) .nil)

private theorem g7592s4 : BadRow (bg7592 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7592s5 : BadRow (bg7592 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7592s6 : BadRow (bg7592 6) :=
  row_of_forall (discharge bank [53,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7592s7 : BadRow (bg7592 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7592 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,1,2,0,0]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,1,2,0,0] (.cons (g7592s0) (.cons (g7592s1) (.cons (g7592s2) (.cons (g7592s3) (.cons (g7592s4) (.cons (g7592s5) (.cons (g7592s6) (.cons (g7592s7) .nil))))))))

theorem g7593 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
