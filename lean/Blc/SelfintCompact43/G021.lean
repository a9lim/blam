import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g336 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g337 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g338 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g339 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g340 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g341 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g342 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g343 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g344 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g345 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g346 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g347 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g348 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g349 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g350 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g351 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
