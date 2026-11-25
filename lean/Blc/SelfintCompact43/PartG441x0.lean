import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7056 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [2,0,2,0,1]

private theorem g7056s0 : BadRow (bg7056 0) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7056s1 : BadRow (bg7056 1) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7056s2 : BadRow (bg7056 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,1,1,4,25,4,4,4,4,25,1,4,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7056s3 : BadRow (bg7056 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7056s4 : BadRow (bg7056 4) :=
  row_of_forall (discharge bank [7,7,7,7,7,1,1,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7056s5 : BadRow (bg7056 5) :=
  row_of_forall (discharge bank [2,2,2,7,7,4,6,18,18,9,4,4,30,1,4,4,4,6,6,14,6,4,4,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7056s6 : BadRow (bg7056 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7056s7 : BadRow (bg7056 7) :=
  row_of_forall (discharge bank [6,6] (hard := []) (by decide +kernel) .nil)

theorem g7056 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,2,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [2,0,2,0,1] (.cons (g7056s0) (.cons (g7056s1) (.cons (g7056s2) (.cons (g7056s3) (.cons (g7056s4) (.cons (g7056s5) (.cons (g7056s6) (.cons (g7056s7) .nil))))))))

theorem g7057 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7058 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [2,0,2,1,0]

private theorem g7058s0 : BadRow (bg7058 0) :=
  row_of_forall (discharge bank [2,2,1,6] (hard := []) (by decide +kernel) .nil)

private theorem g7058s1 : BadRow (bg7058 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7058s2 : BadRow (bg7058 2) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,1,25,25,1,4,4,25,1,4,4,4,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7058s3 : BadRow (bg7058 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,30,1,6,38,6] (hard := []) (by decide +kernel) .nil)

private theorem g7058s4 : BadRow (bg7058 4) :=
  row_of_forall (discharge bank [7,7,7,1,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7058s5 : BadRow (bg7058 5) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,7,6,6,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7058s6 : BadRow (bg7058 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7058s7 : BadRow (bg7058 7) :=
  row_of_forall (discharge bank [2,2,6,6] (hard := []) (by decide +kernel) .nil)

theorem g7058 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [2,0,2,1,0] (.cons (g7058s0) (.cons (g7058s1) (.cons (g7058s2) (.cons (g7058s3) (.cons (g7058s4) (.cons (g7058s5) (.cons (g7058s6) (.cons (g7058s7) .nil))))))))

theorem g7059 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7060 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [53,4,4,4,1,4,4,4,4,4,53,4,4,4,4,4,1,4,1,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,7,7,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7061 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7062 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [2,1,0,0,2]

private theorem g7062s0 : BadRow (bg7062 0) :=
  row_of_forall (discharge bank [2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7062s1 : BadRow (bg7062 1) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7062s2 : BadRow (bg7062 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,15,1,1,1,1,4,4,4,1,4,4,4,1,4,4,4,1,1,1,14,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7062s3 : BadRow (bg7062 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7062s4 : BadRow (bg7062 4) :=
  row_of_forall (discharge bank [7,7,7,7,7,1,1,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7062s5 : BadRow (bg7062 5) :=
  row_of_forall (discharge bank [2,2,4,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7062s6 : BadRow (bg7062 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,7,7,4] (hard := []) (by decide +kernel) .nil)

private theorem g7062s7 : BadRow (bg7062 7) :=
  row_of_forall (discharge bank [2,2] (hard := []) (by decide +kernel) .nil)

theorem g7062 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,1,0,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [2,1,0,0,2] (.cons (g7062s0) (.cons (g7062s1) (.cons (g7062s2) (.cons (g7062s3) (.cons (g7062s4) (.cons (g7062s5) (.cons (g7062s6) (.cons (g7062s7) .nil))))))))

theorem g7063 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
