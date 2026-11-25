import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg7564 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,0,0,1,2]

private theorem g7564s0 : BadRow (bg7564 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7564s1 : BadRow (bg7564 1) :=
  row_of_forall (discharge bank [2,2,4,4,4,14,4,4,4,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7564s2 : BadRow (bg7564 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem g7564s3 : BadRow (bg7564 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,2,4,15,15,15,15,15,1,6,7] (hard := []) (by decide +kernel) .nil)

private theorem g7564s4 : BadRow (bg7564 4) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7564s5 : BadRow (bg7564 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,6] (hard := []) (by decide +kernel) .nil)

private theorem g7564s6 : BadRow (bg7564 6) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7564s7 : BadRow (bg7564 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7564 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,0,1,2]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,0,0,1,2] (.cons (g7564s0) (.cons (g7564s1) (.cons (g7564s2) (.cons (g7564s3) (.cons (g7564s4) (.cons (g7564s5) (.cons (g7564s6) (.cons (g7564s7) .nil))))))))

theorem g7565 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7566 (i : Nat) := Split43.five 8 i 7 7 3 false 3 5 5 [0,0,0,2,1]

private theorem g7566s0 : BadRow (bg7566 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7566s1 : BadRow (bg7566 1) :=
  row_of_forall (discharge bank [2,2,4,4,4,14,4,4,4,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7566s2 : BadRow (bg7566 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem g7566s3 : BadRow (bg7566 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,2,4,15,15,15,15,15,1,6,7] (hard := []) (by decide +kernel) .nil)

private theorem g7566s4 : BadRow (bg7566 4) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7566s5 : BadRow (bg7566 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,6] (hard := []) (by decide +kernel) .nil)

private theorem g7566s6 : BadRow (bg7566 6) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7566s7 : BadRow (bg7566 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,36,36] (hard := []) (by decide +kernel) .nil)

theorem g7566 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,0,0,2,1]) :=
  Split43.five_cover 8 (by decide) 7 7 3 false 3 5 5 [0,0,0,2,1] (.cons (g7566s0) (.cons (g7566s1) (.cons (g7566s2) (.cons (g7566s3) (.cons (g7566s4) (.cons (g7566s5) (.cons (g7566s6) (.cons (g7566s7) .nil))))))))

theorem g7567 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
