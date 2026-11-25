import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4256 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,0,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,14,14,4,4,4,4,4,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem g4257 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4258 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,0,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,39,14,1,1,4,4,4,4,4,14,39,14,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4259 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4260 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4261 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4262 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4263 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4264 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4265 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4266 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4267 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4268 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4269 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4270 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,1,3,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4271 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
