import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4272 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4273 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4274 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,2,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,14,14,14,4,4,4,4,4,14,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem g4275 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4276 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4277 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4278 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4279 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4280 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,2,3,0]) :=
  row_of_forall (discharge bank [4,4,4,14,14,14,4,4,4,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem g4281 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4282 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,3,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,31,47,14,47,1,1,4,4,4,4,4,31,47,14,47,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4283 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4284 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,3,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4285 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4286 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,2,3,2,0]) :=
  row_of_forall (discharge bank [4,4,4,14,14,39,4,4,4,14,14,39] (hard := []) (by decide +kernel) .nil)

theorem g4287 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
