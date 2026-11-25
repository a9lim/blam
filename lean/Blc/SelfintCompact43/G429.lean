import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6864 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,2,1,4,1,1,4,4,4,6,4,1,4,4,4,2,2,4,14,4,14,14,4,4,2,2,4,4,4,4,4,4,4,4,7,4,7,7,7,7,14,7,1,14,14,6,7,36,36,14,6] (hard := []) (by decide +kernel) .nil)

theorem g6865 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6866 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,2,1,4,4,1,4,1,4,4,4,2,2,36,4,4,4,4,4,4,4,14,47,14,14,4,4,4,4,2,2,4,4,4,4,4,4,4,4,4,4,7,4,7,7,7,14,7,1,1,1,14,14,6,7,36,36,14,6] (hard := []) (by decide +kernel) .nil)

theorem g6867 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6868 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,1,1,9,14] (hard := []) (by decide +kernel) .nil)

theorem g6869 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6870 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6871 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6872 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,1,1,9,9,14,14] (hard := []) (by decide +kernel) .nil)

theorem g6873 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6874 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,2,2,2,1,4,4,4,4,4,4,4,4,4,4,4,4,4,1,4,7,7,7,7,7,7,7,7,7,10,24,6,7,36,36,8,6] (hard := []) (by decide +kernel) .nil)

theorem g6875 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6876 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,14,4,4,4,14,6,4,4,14,4,4,14,2,2,2,4,15,15,15,7,7,7,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem g6877 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6878 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [2,2,4,2,2,4,4,4,2,2,2,2,4,1,4,4,4,4,4,7,4,4,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,7,7,7,7,7,7,7,7,7,37,10,13,6,7,36,36,8,6] (hard := []) (by decide +kernel) .nil)

theorem g6879 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [0,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
