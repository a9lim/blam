import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1184 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1185 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1186 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1187 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1188 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1189 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1190 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1191 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1192 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1193 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1194 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1195 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1196 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1197 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1198 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1199 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
