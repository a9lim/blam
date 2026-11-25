import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g944 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g945 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g946 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g947 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g948 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g949 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g950 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g951 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g952 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g953 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g954 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g955 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g956 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g957 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g958 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g959 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
