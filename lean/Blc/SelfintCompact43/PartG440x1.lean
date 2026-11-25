import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
local macro "empty43" : tactic => `(tactic| exact row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil))

private abbrev bg7050 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [2,0,1,0,2]

private theorem g7050s0 : BadRow (bg7050 0) :=
  row_of_forall (discharge bank [2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7050s1 : BadRow (bg7050 1) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7050s2 : BadRow (bg7050 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,1,4,4,4,4,4,4,1,1,1,1,6] (hard := []) (by decide +kernel) .nil)

private theorem g7050s3 : BadRow (bg7050 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7050s4 : BadRow (bg7050 4) :=
  row_of_forall (discharge bank [7,7,7,7,7,55,36,4,4,1,9,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7050s5 : BadRow (bg7050 5) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7050s6 : BadRow (bg7050 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7050s7 : BadRow (bg7050 7) :=
  row_of_forall (discharge bank [2,2,6,6] (hard := []) (by decide +kernel) .nil)

theorem g7050 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [2,0,1,0,2] (.cons (g7050s0) (.cons (g7050s1) (.cons (g7050s2) (.cons (g7050s3) (.cons (g7050s4) (.cons (g7050s5) (.cons (g7050s6) (.cons (g7050s7) .nil))))))))

theorem g7051 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7052 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,1,4,4,4,4,1,4,4,4,4,4,1,4,4,4,4,1,4,4,4,4,4,4,4,4,22,4,4,18,4,4,4,4,4,4,4,4,4,4,4,4,4,1,9,34,1,4,4,4,4,22,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7053 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7054 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [2,0,1,2,0]

private theorem g7054s0 : BadRow (bg7054 0) :=
  row_of_forall (discharge bank [2,4,4,6,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7054s1 : BadRow (bg7054 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7054s2 : BadRow (bg7054 2) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4,25,1,4,4,4,25,4,1,1,4,4,4,30,1,6] (hard := []) (by decide +kernel) .nil)

private theorem g7054s3 : BadRow (bg7054 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,30,1,6,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7054s4 : BadRow (bg7054 4) :=
  row_of_forall (discharge bank [7,7,7,1,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7054s5 : BadRow (bg7054 5) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,6,6,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7054s6 : BadRow (bg7054 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem g7054s7 : BadRow (bg7054 7) :=
  row_of_forall (discharge bank [2,2,2,2,6,6] (hard := []) (by decide +kernel) .nil)

theorem g7054 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,0,1,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [2,0,1,2,0] (.cons (g7054s0) (.cons (g7054s1) (.cons (g7054s2) (.cons (g7054s3) (.cons (g7054s4) (.cons (g7054s5) (.cons (g7054s6) (.cons (g7054s7) .nil))))))))

theorem g7055 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
