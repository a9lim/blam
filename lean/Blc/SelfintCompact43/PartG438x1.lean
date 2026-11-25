import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7022 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [1,2,0,0,2]

private theorem g7022s0 : BadRow (bg7022 0) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7022s1 : BadRow (bg7022 1) :=
  row_of_forall (discharge bank [4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7022s2 : BadRow (bg7022 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,28,28,38,1,4,4,4,1,4,4,4,39,4,4,4,39,39,39,4,4,39,1,4] (hard := []) (by decide +kernel) .nil)

private theorem g7022s3 : BadRow (bg7022 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g7022s4 : BadRow (bg7022 4) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g7022s5 : BadRow (bg7022 5) :=
  row_of_forall (discharge bank [2,2,4,14,1,1,39,39,39,1,4,39,1,4,4,4,39,1,4] (hard := []) (by decide +kernel) .nil)

private theorem g7022s6 : BadRow (bg7022 6) :=
  row_of_forall (discharge bank [4] (hard := []) (by decide +kernel) .nil)

private theorem g7022s7 : BadRow (bg7022 7) :=
  row_of_forall (discharge bank [2,2,7,7,7,7,7,13,17,24,36,17] (hard := []) (by decide +kernel) .nil)

theorem g7022 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,2,0,0,2]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [1,2,0,0,2] (.cons (g7022s0) (.cons (g7022s1) (.cons (g7022s2) (.cons (g7022s3) (.cons (g7022s4) (.cons (g7022s5) (.cons (g7022s6) (.cons (g7022s7) .nil))))))))

theorem g7023 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
