import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6960 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem g6961 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6962 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,1,1,1,4,4,4,1,4,4,4,4,2,4,4,4,14,14,4,4,4,4,4,4,7,7,7,11,14,14,11,24,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6963 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6964 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6965 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6966 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6967 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6968 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6969 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6970 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6971 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6972 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6973 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6974 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,2,2,4,4,4,4,4,1,1,4,4,4,4,4,4,4,2,2,1,4,25,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,15,15,15,15,7,7,7,1,36,132,4,4,4,4,6,6] (hard := []) (by decide +kernel) .nil)

theorem g6975 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
