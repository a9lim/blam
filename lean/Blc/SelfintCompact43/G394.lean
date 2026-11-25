import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6304 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [0,2,3]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6305 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6306 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [0,3,2]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6307 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6308 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6309 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6310 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6311 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6312 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6313 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6314 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [1,1,3]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6315 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6316 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6317 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6318 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [1,3,1]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6319 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
