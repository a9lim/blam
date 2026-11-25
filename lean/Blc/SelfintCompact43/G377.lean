import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6032 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6033 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6034 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6035 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6036 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6037 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6038 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6039 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6040 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6041 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6042 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6043 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6044 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6045 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6046 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6047 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
