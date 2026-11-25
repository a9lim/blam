import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2656 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2657 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2658 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2659 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2660 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2661 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2662 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2663 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2664 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2665 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2666 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2667 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2668 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2669 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2670 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2671 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
