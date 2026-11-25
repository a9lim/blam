import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7888 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7889 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7890 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7891 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7892 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7893 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7894 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7895 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7896 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7897 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7898 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7899 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7900 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7901 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7902 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7903 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
