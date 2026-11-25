import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g432 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g433 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g434 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g435 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g436 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g437 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g438 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g439 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g440 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g441 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g442 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g443 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g444 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g445 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g446 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g447 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
