import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7594 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,2,0,0,1]

private theorem g7594s0 : BadRow (bg7594 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7594s1 : BadRow (bg7594 1) :=
  row_of_forall (discharge bank [53,4,4,4,47,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7594s2 : BadRow (bg7594 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7594s3 : BadRow (bg7594 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,15,15,15,15,15,1,17,17,17,17] (hard := []) (by decide +kernel) .nil)

private theorem g7594s4 : BadRow (bg7594 4) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7594s5 : BadRow (bg7594 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7594s6 : BadRow (bg7594 6) :=
  row_of_forall (discharge bank [4] (hard := []) (by decide +kernel) .nil)

private theorem g7594s7 : BadRow (bg7594 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7594 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,2,0,0,1]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,2,0,0,1] (.cons (g7594s0) (.cons (g7594s1) (.cons (g7594s2) (.cons (g7594s3) (.cons (g7594s4) (.cons (g7594s5) (.cons (g7594s6) (.cons (g7594s7) .nil))))))))

theorem g7595 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7596 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,2,0,1,0]

private theorem g7596s0 : BadRow (bg7596 0) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,6,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7596s1 : BadRow (bg7596 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7596s2 : BadRow (bg7596 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,11,9] (hard := []) (by decide +kernel) .nil)

private theorem g7596s3 : BadRow (bg7596 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,15,15,15,15,15,1,1,17,17,44,17] (hard := []) (by decide +kernel) .nil)

private theorem g7596s4 : BadRow (bg7596 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7596s5 : BadRow (bg7596 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7596s6 : BadRow (bg7596 6) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7596s7 : BadRow (bg7596 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7596 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,2,0,1,0]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,2,0,1,0] (.cons (g7596s0) (.cons (g7596s1) (.cons (g7596s2) (.cons (g7596s3) (.cons (g7596s4) (.cons (g7596s5) (.cons (g7596s6) (.cons (g7596s7) .nil))))))))

theorem g7597 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7598 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,2,1,0,0]

private theorem g7598s0 : BadRow (bg7598 0) :=
  row_of_forall (discharge bank [2,2,2,2,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7598s1 : BadRow (bg7598 1) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7598s2 : BadRow (bg7598 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,14,4,4,40] (hard := []) (by decide +kernel) .nil)

private theorem g7598s3 : BadRow (bg7598 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,15,15,15,14,14,64,14] (hard := []) (by decide +kernel) .nil)

private theorem g7598s4 : BadRow (bg7598 4) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7598s5 : BadRow (bg7598 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7598s6 : BadRow (bg7598 6) :=
  row_of_forall (discharge bank [14,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7598s7 : BadRow (bg7598 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7598 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,2,1,0,0]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,2,1,0,0] (.cons (g7598s0) (.cons (g7598s1) (.cons (g7598s2) (.cons (g7598s3) (.cons (g7598s4) (.cons (g7598s5) (.cons (g7598s6) (.cons (g7598s7) .nil))))))))

theorem g7599 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
