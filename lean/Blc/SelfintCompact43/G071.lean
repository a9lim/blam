import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1136 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1137 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [4,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1138 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1139 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [4,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1140 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1141 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [4,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1142 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1143 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [4,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1144 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1145 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [5,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1146 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1147 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1148 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1149 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1150 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1151 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
