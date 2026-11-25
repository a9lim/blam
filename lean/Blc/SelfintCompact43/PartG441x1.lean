import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7064 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,1,1,1,1,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,22,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,35,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7065 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg7066 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [2,1,0,2,0]

private theorem g7066s0 : BadRow (bg7066 0) :=
  row_of_forall (discharge bank [2,2,4,4,6,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g7066s1 : BadRow (bg7066 1) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7066s2 : BadRow (bg7066 2) :=
  row_of_forall (discharge bank [2,2,1,1,1,4,4,25,1,4,4,4,25,25,1,1,4,4,4,4,4,1,1,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7066s3 : BadRow (bg7066 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,30,1,6,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g7066s4 : BadRow (bg7066 4) :=
  row_of_forall (discharge bank [7,7,7,7,7,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7066s5 : BadRow (bg7066 5) :=
  row_of_forall (discharge bank [2,2,2,4,6,6,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7066s6 : BadRow (bg7066 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,7,7,4] (hard := []) (by decide +kernel) .nil)

private theorem g7066s7 : BadRow (bg7066 7) :=
  row_of_forall (discharge bank [2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem g7066 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [2,1,0,2,0] (.cons (g7066s0) (.cons (g7066s1) (.cons (g7066s2) (.cons (g7066s3) (.cons (g7066s4) (.cons (g7066s5) (.cons (g7066s6) (.cons (g7066s7) .nil))))))))

theorem g7067 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7068 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,1,1,4,4,4,4,4,4,7,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,36,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,36,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7069 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7070 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,1,4,4,4,4,4,4,7,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,36,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7071 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
