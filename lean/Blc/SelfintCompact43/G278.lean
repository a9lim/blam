import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4448 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,2,3,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,38,1,31,1,38,1,31,1] (hard := []) (by decide +kernel) .nil)

theorem g4449 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4450 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,3,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,9,9,36,11,36,9,9,36,11,36] (hard := []) (by decide +kernel) .nil)

theorem g4451 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4452 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4453 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4454 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,3,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,9,9,36,36,9,9,36,36] (hard := []) (by decide +kernel) .nil)

theorem g4455 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4456 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4457 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4458 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4459 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4460 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4461 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,1,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4462 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [1,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4463 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [1,2,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
