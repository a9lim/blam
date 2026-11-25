import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7296 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7297 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [2,0,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7298 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem g7299 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7300 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7301 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7302 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7303 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7304 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [3,2,2,3] (hard := []) (by decide +kernel) .nil)

theorem g7305 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7306 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [3,2,2,3] (hard := []) (by decide +kernel) .nil)

theorem g7307 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7308 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7309 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7310 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [3,3,2,2,2,2,3,3] (hard := []) (by decide +kernel) .nil)

theorem g7311 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
