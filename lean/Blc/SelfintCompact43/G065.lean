import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1040 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1041 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1042 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1043 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1044 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1045 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1046 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1047 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1048 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1049 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1050 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1051 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1052 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1053 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1054 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1055 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
