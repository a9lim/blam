import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6800 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6801 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6802 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6803 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6804 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6805 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6806 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6807 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6808 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6809 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6810 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6811 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6812 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6813 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6814 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6815 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
