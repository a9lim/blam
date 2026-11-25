import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g992 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g993 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g994 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g995 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g996 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g997 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g998 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g999 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,4,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1000 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1001 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,4,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1002 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1003 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,4,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1004 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1005 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,5,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1006 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1007 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [1,0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
