import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg6940 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [0,2,1,0,2]

private theorem g6940s0 : BadRow (bg6940 0) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6940s1 : BadRow (bg6940 1) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6940s2 : BadRow (bg6940 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,14,14,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6940s3 : BadRow (bg6940 3) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g6940s4 : BadRow (bg6940 4) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6940s5 : BadRow (bg6940 5) :=
  row_of_forall (discharge bank [2,2,2,2,4,4,4,4,14,4,4,1,39,39,14,4,4,39,14,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6940s6 : BadRow (bg6940 6) :=
  row_of_forall (discharge bank [2,2,4] (hard := []) (by decide +kernel) .nil)

private theorem g6940s7 : BadRow (bg6940 7) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,15,15,15,15,15,7,7,7,7,7,7,7,9,55,40,17,17] (hard := []) (by decide +kernel) .nil)

theorem g6940 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,1,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [0,2,1,0,2] (.cons (g6940s0) (.cons (g6940s1) (.cons (g6940s2) (.cons (g6940s3) (.cons (g6940s4) (.cons (g6940s5) (.cons (g6940s6) (.cons (g6940s7) .nil))))))))

theorem g6941 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6942 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [4,4,14,4,4,4,4,4,14,4,4,4,4,4,4,4,53,4,4,4,4,14,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,7,14,17] (hard := []) (by decide +kernel) .nil)

theorem g6943 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
