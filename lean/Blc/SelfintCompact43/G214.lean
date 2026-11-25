import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3424 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3425 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,2,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,36,9,36] (hard := []) (by decide +kernel) .nil)

theorem g3426 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3427 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3428 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3429 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3430 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3431 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,3,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3432 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3433 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,3,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,37,1,1] (hard := []) (by decide +kernel) .nil)

theorem g3434 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3435 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3436 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3437 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3438 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [1,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3439 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [1,0,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
