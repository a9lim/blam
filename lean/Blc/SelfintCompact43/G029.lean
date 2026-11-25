import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g464 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g465 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g466 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g467 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g468 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g469 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g470 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g471 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g472 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g473 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g474 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g475 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g476 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g477 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g478 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g479 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
