import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3312 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3313 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3314 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3315 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3316 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3317 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3318 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3319 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3320 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3321 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3322 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3323 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3324 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3325 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3326 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3327 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
