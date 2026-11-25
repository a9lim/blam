import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g448 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g449 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g450 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g451 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g452 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g453 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g454 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g455 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g456 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g457 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g458 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g459 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g460 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g461 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g462 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g463 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
