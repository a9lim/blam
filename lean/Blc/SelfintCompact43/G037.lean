import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g592 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g593 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g594 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g595 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g596 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g597 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g598 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g599 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g600 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g601 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g602 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g603 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g604 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g605 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g606 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g607 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
