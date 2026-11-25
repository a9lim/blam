import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6320 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6321 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6322 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [2,0,3]) :=
  row_of_forall (discharge bank [49,4,36,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6323 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6324 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [2,1,2]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6325 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6326 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [2,2,1]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6327 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6328 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [2,3,0]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6329 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6330 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [3,0,2]) :=
  row_of_forall (discharge bank [49,4,36,49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6331 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6332 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6333 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6334 : BadRow (Grammar43.fiveRow 7 6 5 false 5 3 3 [3,2,0]) :=
  row_of_forall (discharge bank [49,4,36] (hard := []) (by decide +kernel) .nil)

theorem g6335 : BadRow (Grammar43.fiveRow 7 6 5 true 5 3 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
