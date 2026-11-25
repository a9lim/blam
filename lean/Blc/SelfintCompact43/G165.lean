import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2640 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2641 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2642 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2643 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2644 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2645 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2646 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2647 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2648 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2649 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2650 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2651 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2652 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2653 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2654 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2655 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
