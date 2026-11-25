import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g128 : BadRow (Grammar43.fiveRow 7 5 7 false 3 2 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g129 : BadRow (Grammar43.fiveRow 7 5 7 true 3 2 5 [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g130 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g131 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g132 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g133 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g134 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g135 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g136 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g137 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g138 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g139 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g140 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g141 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g142 : BadRow (Grammar43.fiveRow 7 5 7 false 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g143 : BadRow (Grammar43.fiveRow 7 5 7 true 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
