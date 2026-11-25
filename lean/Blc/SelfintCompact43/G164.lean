import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2624 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2625 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2626 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2627 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2628 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2629 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2630 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2631 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2632 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2633 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2634 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2635 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2636 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2637 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2638 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2639 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
