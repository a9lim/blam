import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3296 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3297 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3298 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3299 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3300 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3301 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3302 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3303 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3304 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3305 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3306 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3307 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3308 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3309 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3310 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3311 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
