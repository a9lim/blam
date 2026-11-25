import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3328 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3329 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3330 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3331 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3332 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3333 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3334 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3335 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3336 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3337 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3338 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3339 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3340 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3341 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3342 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3343 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,3,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
