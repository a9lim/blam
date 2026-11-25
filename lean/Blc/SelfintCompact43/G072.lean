import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1152 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1153 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1154 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1155 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1156 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1157 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1158 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1159 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1160 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1161 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1162 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1163 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1164 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1165 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1166 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1167 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
