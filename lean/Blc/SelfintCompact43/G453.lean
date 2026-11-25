import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7248 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7249 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7250 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 3 [1,0,2]) :=
  row_of_forall (discharge bank [49,2,49,2] (hard := []) (by decide +kernel) .nil)

theorem g7251 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7252 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7253 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7254 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [49,2] (hard := []) (by decide +kernel) .nil)

theorem g7255 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7256 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 3 [2,0,1]) :=
  row_of_forall (discharge bank [49,2,49,2] (hard := []) (by decide +kernel) .nil)

theorem g7257 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7258 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 3 [2,1,0]) :=
  row_of_forall (discharge bank [49,2] (hard := []) (by decide +kernel) .nil)

theorem g7259 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7260 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7261 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7262 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7263 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
