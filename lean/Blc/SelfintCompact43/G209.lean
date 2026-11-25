import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3344 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3345 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3346 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3347 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3348 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3349 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3350 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3351 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3352 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3353 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3354 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3355 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3356 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3357 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3358 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3359 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,4,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
