import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6192 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6193 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6194 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6195 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6196 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6197 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6198 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6199 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6200 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6201 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6202 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6203 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6204 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6205 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6206 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6207 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
