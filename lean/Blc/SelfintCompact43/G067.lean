import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1072 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1073 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1074 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1075 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1076 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1077 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1078 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1079 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1080 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1081 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1082 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1083 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1084 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1085 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1086 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1087 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
