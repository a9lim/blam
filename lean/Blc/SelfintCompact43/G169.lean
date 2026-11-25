import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2704 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2705 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2706 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2707 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2708 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2709 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2710 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2711 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2712 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2713 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2714 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2715 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2716 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2717 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2718 : BadRow (Grammar43.fiveRow 7 5 7 false 6 3 5 [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2719 : BadRow (Grammar43.fiveRow 7 5 7 true 6 3 5 [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
