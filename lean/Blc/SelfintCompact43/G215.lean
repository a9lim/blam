import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3440 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3441 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3442 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3443 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3444 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3445 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3446 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3447 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3448 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3449 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3450 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3451 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3452 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3453 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,0,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,38,1,38,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3454 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3455 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,1,0,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
