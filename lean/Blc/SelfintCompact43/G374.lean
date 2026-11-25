import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5984 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5985 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5986 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5987 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5988 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5989 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5990 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5991 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5992 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5993 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5994 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5995 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5996 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [15,3,3,3,3,3,3,39,3,15,3,4,15,3,3,3,3,3,3,39,3,15,3,4,15,3,3,3,3,3,3,39,3,15,3,4,15,3,3,3,3,3,3,39,3,15,3,4,15,3,3,3,3,3,3,39,3,15,3,4] (hard := []) (by decide +kernel) .nil)

theorem g5997 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g5998 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5999 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
