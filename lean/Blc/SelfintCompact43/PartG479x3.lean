import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7677 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 4 [1,0,2,0]

private theorem g7677s0 : BadRow (bg7677 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7677s1 : BadRow (bg7677 1) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7677s2 : BadRow (bg7677 2) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,9,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7677s3 : BadRow (bg7677 3) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,25,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,25,39,9,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7677s4 : BadRow (bg7677 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7677s5 : BadRow (bg7677 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7677s6 : BadRow (bg7677 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7677s7 : BadRow (bg7677 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7677 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [1,0,2,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 4 [1,0,2,0] (.cons (g7677s0) (.cons (g7677s1) (.cons (g7677s2) (.cons (g7677s3) (.cons (g7677s4) (.cons (g7677s5) (.cons (g7677s6) (.cons (g7677s7) .nil))))))))

theorem g7678 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7679 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
