import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3264 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3265 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,3,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3266 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3267 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3268 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3269 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3270 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3271 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3272 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3273 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,4,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3274 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3275 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,5,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3276 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3277 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,5,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3278 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [0,1,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3279 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [0,1,6,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
