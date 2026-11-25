import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4704 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4705 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4706 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4707 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4708 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4709 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4710 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4711 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4712 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [3,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4713 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [3,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4714 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4715 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4716 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4717 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4718 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [4,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4719 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [4,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
