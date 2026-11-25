import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1104 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1105 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1106 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1107 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1108 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1109 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1110 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1111 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1112 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1113 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1114 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1115 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1116 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1117 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1118 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1119 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
