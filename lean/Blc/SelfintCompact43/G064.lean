import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1024 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1025 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1026 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1027 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1028 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1029 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1030 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1031 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1032 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1033 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1034 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1035 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1036 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1037 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1038 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1039 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
