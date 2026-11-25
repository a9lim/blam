import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4304 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,1,0,3]) :=
  row_of_forall (discharge bank [1,1,39,39,39] (hard := []) (by decide +kernel) .nil)

theorem g4305 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4306 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4307 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4308 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4309 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4310 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,1,3,0]) :=
  row_of_forall (discharge bank [25,1,39] (hard := []) (by decide +kernel) .nil)

theorem g4311 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4312 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,2,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,14,39,4,4,4,4,4,14,39] (hard := []) (by decide +kernel) .nil)

theorem g4313 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4314 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,2,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4315 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4316 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,2,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4317 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4318 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,3,3,0,1]) :=
  row_of_forall (discharge bank [25,47,25,25,1,30,1] (hard := []) (by decide +kernel) .nil)

theorem g4319 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
