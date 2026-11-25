import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5968 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5969 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5970 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5971 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5972 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5973 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5974 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5975 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5976 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5977 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5978 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5979 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5980 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5981 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5982 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [15,3,3,3,3,3,3,39,3,15,3,4,15,3,3,3,3,3,3,39,3,15,3,4,14,3,3,3,3,3,3,39,3,14,3,4,15,3,3,3,3,3,3,39,3,15,3,4,14,3,3,3,3,3,3,39,3,14,3,4] (hard := []) (by decide +kernel) .nil)

theorem g5983 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
