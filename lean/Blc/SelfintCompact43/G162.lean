import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2592 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2593 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2594 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2595 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2596 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2597 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2598 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2599 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2600 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2601 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2602 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2603 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2604 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2605 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2606 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2607 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
