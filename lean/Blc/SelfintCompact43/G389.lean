import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6224 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6225 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6226 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6227 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6228 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6229 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6230 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6231 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6232 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6233 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6234 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6235 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6236 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6237 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6238 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6239 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
