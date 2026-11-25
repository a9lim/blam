import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2992 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2993 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2994 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2995 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2996 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2997 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2998 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2999 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3000 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3001 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,1,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3002 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3003 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3004 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3005 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3006 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3007 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,1,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
