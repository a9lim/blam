import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4464 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,0,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4465 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4466 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4467 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4468 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,0,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,38,1,39,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,38,1,39,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4469 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4470 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4471 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4472 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,1,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4473 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4474 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4475 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4476 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4477 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4478 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,1,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,38,1,37,1,1,38,1,37,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4479 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
