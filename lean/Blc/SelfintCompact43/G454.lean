import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7264 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,15] (hard := []) (by decide +kernel) .nil)

theorem g7265 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7266 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,15] (hard := []) (by decide +kernel) .nil)

theorem g7267 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7268 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7269 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7270 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,15,2,2,2,15] (hard := []) (by decide +kernel) .nil)

theorem g7271 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7272 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7273 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7274 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,15] (hard := []) (by decide +kernel) .nil)

theorem g7275 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7276 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,15,2,2,2,15] (hard := []) (by decide +kernel) .nil)

theorem g7277 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7278 : BadRow (Grammar43.fiveRow 7 7 3 false 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,5,2,2,2,15] (hard := []) (by decide +kernel) .nil)

theorem g7279 : BadRow (Grammar43.fiveRow 7 7 3 true 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
