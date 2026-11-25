import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4160 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,2,3,2]) :=
  row_of_forall (discharge bank [4,4,4,14,14,4,4,4,14,14] (hard := []) (by decide +kernel) .nil)

theorem g4161 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4162 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4163 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4164 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4165 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4166 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4167 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4168 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,3,1,3]) :=
  row_of_forall (discharge bank [1,39,1] (hard := []) (by decide +kernel) .nil)

theorem g4169 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4170 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,3,2,2]) :=
  row_of_forall (discharge bank [4,4,4,39,14,4,4,4,39,14] (hard := []) (by decide +kernel) .nil)

theorem g4171 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4172 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,3,3,1]) :=
  row_of_forall (discharge bank [14,14,39,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4173 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4174 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 5 [0,0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4175 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 5 [0,0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
