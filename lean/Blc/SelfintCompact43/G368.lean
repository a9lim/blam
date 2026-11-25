import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5888 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5889 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5890 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5891 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5892 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5893 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [4,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5894 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5895 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5896 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5897 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5898 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5899 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5900 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5901 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5902 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5903 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
