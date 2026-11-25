import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g304 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g305 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g306 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g307 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g308 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g309 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g310 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g311 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g312 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g313 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g314 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g315 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g316 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g317 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g318 : BadRow (Grammar43.fiveRow 7 5 7 false 4 2 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g319 : BadRow (Grammar43.fiveRow 7 5 7 true 4 2 4 [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
