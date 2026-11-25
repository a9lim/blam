import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2688 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2689 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2690 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2691 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2692 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2693 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2694 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2695 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2696 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2697 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2698 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2699 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2700 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2701 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2702 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2703 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
