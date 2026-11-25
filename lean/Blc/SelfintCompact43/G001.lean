import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g16 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g17 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g18 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g19 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g20 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g21 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g22 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g23 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g24 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g25 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g26 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g27 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g28 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g29 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g30 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g31 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
