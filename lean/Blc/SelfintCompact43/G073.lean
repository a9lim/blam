import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1168 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1169 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1170 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1171 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1172 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1173 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1174 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1175 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1176 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1177 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1178 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1179 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1180 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1181 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1182 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1183 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
