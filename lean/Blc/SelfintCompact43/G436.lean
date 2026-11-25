import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6976 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,1,4,4,4,4,1,4,4,4,14,47,4,4,4,1,1,1,4,4,4,4,4,1,1,1,1,4,4,4,1,4,4,4,1,4,4,4,1,1,1,7,7,7,7,7,7,14,10,48,13,4,4,4,4,6,6] (hard := []) (by decide +kernel) .nil)

theorem g6977 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6978 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,4,2,2,4,4,4,4,4,2,4,2,4,4,4,4,2,2,2,29,4,4,4,4,25,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,15,15,15,15,7,7,7,1,14,59,4,4,4,4,6,6] (hard := []) (by decide +kernel) .nil)

theorem g6979 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6980 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6981 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6982 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,4,4,4,2,2,2,4,4,4,2,2,4,4,1,1,4,4,4,4,4,4,4,4,4,4,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,4,15,15,15,15,15,15,15,7,7,7,7,7,1,1,55,36,14,14,4,4,4,4,4,4,4,4,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem g6983 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6984 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,1,4,4,4,4,4,4,4,4,4,1,1,1,1,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,13,14,14,12,4,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6985 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6986 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,14,31,14,11,4,4,6,14,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6987 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6988 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,4,4,4,2,2,2,4,4,4,4,2,4,2,4,4,4,4,4,4,4,4,2,2,4,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,15,15,15,15,38,1,7,31,14,4,4,6,47,14,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6989 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6990 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,39,4,4,4,4,4,4,39,1,4,4,4,4,39,4,4,1,39,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,1,1,1,4,4,39,1,4,4,4,39,39,1,1,4,4,4,4,4,1,7,7,7,7,7,7,7,29,14,9,36,14,14,4,4,4,4,6,6] (hard := []) (by decide +kernel) .nil)

theorem g6991 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
