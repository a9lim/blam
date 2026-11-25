import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5296 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5297 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5298 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5299 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5300 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5301 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5302 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5303 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5304 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5305 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5306 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5307 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [3,5,3,33] (hard := []) (by decide +kernel) .nil)

theorem g5308 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5309 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [3,5,3,14,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5310 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5311 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
