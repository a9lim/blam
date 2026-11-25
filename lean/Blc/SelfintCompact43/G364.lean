import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5824 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5825 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5826 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5827 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5828 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5829 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5830 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5831 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5832 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5833 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5834 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5835 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5836 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5837 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5838 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5839 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
