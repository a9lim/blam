import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3280 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3281 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3282 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3283 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3284 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3285 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3286 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3287 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3288 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3289 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3290 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3291 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3292 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3293 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3294 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3295 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
