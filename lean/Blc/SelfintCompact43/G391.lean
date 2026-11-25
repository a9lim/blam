import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6256 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6257 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6258 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6259 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6260 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6261 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6262 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6263 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6264 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6265 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6266 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6267 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6268 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6269 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6270 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6271 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
