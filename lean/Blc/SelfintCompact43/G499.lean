import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7984 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [1,1,39,7,39,7,39,7,1,1,39,7,39,7,39,7,39,7,39,7,71,21,39,17,39,17,39,17,39,17,39,17,1,14,39,7,1,72,39,17,39,7,39,7,39,17,39,7,39,17,39,7,39,7,39,17,39,17,39,7,39,17] (hard := []) (by decide +kernel) .nil)

theorem g7985 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7986 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7987 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7988 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7989 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7990 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7991 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7992 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [1,1,39,7,39,7,39,7,71,1,39,7,39,7,39,7,39,7,1,1,39,7,39,7,39,7,1,14,39,7,39,7,39,7,39,7,39,7,39,7,39,7,39,7] (hard := []) (by decide +kernel) .nil)

theorem g7993 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7994 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [6,7,6,7,1,1,6,7,6,7,6,7,6,17,6,17,6,17,36,36,6,17,6,14,6,14,14,14,6,17,6,17,6,17,21,14,6,14,6,24,6,37,6,9,36,36,6,14,6,9,6,9] (hard := []) (by decide +kernel) .nil)

theorem g7995 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7996 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [6,7,6,7,6,7,6,7,6,7,6,7,6,7,6,17,6,17,6,17,6,17,6,17,6,67,36,36,6,17,6,14,6,55,6,7,6,7,6,17,6,17,6,14,6,7,6,17,6,17,6,14,6,55] (hard := []) (by decide +kernel) .nil)

theorem g7997 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7998 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [1,1,6,7,6,7,6,7,1,1,6,7,6,7,6,7,6,7,6,7,14,71,6,17,6,17,6,17,6,17,6,17,72,14,6,7,10,14,6,17,6,7,6,7,6,17,6,7,6,17,6,7,6,7,6,17,6,17,6,7,6,17] (hard := []) (by decide +kernel) .nil)

theorem g7999 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
