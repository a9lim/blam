import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1056 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1057 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1058 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1059 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1060 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1061 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1062 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1063 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1064 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1065 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1066 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1067 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1068 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1069 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1070 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1071 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
