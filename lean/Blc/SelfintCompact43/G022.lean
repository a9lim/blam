import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g352 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g353 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g354 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g355 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g356 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g357 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g358 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g359 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g360 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g361 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g362 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g363 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g364 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g365 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g366 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g367 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
