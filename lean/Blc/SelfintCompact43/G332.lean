import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5312 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5313 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,1,0,2]) :=
  row_of_forall (discharge bank [3,5,3,5,3,29,3,14] (hard := []) (by decide +kernel) .nil)

theorem g5314 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5315 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5316 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5317 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,1,2,0]) :=
  row_of_forall (discharge bank [3,5,3,35] (hard := []) (by decide +kernel) .nil)

theorem g5318 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5319 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,2,0,1]) :=
  row_of_forall (discharge bank [3,5,3,5,3,34,3,34,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5320 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5321 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,2,1,0]) :=
  row_of_forall (discharge bank [3,5,3,34] (hard := []) (by decide +kernel) .nil)

theorem g5322 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5323 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5324 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5325 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5326 : BadRow (Grammar43.fiveRow 7 6 5 false 4 2 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5327 : BadRow (Grammar43.fiveRow 7 6 5 true 4 2 5 [0,2,0,1,1]) :=
  row_of_forall (discharge bank [3,5,3,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
