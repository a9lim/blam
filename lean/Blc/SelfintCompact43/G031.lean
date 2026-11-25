import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g496 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g497 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g498 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g499 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g500 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g501 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g502 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g503 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g504 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g505 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g506 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g507 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g508 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g509 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g510 : BadRow (Grammar43.fiveRow 7 5 7 false 4 3 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g511 : BadRow (Grammar43.fiveRow 7 5 7 true 4 3 3 [1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
