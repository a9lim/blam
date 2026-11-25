import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2672 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2673 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2674 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2675 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2676 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2677 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2678 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2679 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2680 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2681 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2682 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2683 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2684 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2685 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2686 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [1,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2687 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [1,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
