import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4112 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [5,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4113 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [5,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4114 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [5,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4115 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [5,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4116 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [6,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4117 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [6,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4118 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [6,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4119 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [6,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4120 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [6,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4121 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [6,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4122 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [7,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4123 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [7,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4124 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4125 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4126 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4127 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
