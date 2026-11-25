import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5424 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5425 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5426 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5427 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5428 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5429 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5430 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5431 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5432 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5433 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5434 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5435 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5436 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5437 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5438 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5439 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
