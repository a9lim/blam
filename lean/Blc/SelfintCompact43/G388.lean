import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6208 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6209 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6210 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6211 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6212 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6213 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6214 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6215 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6216 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6217 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6218 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6219 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6220 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6221 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6222 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6223 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
