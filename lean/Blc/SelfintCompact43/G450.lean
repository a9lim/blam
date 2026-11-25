import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7200 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7201 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7202 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7203 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7204 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7205 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7206 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7207 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7208 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7209 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7210 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7211 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7212 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7213 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7214 : BadRow (Grammar43.fiveRow 7 7 3 false 3 2 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7215 : BadRow (Grammar43.fiveRow 7 7 3 true 3 2 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
