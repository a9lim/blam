import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g272 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g273 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g274 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g275 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g276 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g277 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g278 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g279 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g280 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g281 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g282 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g283 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g284 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g285 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g286 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g287 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 3 [3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
