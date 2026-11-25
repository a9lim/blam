import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2784 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2785 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2786 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2787 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2788 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2789 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2790 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2791 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2792 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2793 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2794 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2795 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2796 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2797 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2798 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [3,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2799 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [3,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
