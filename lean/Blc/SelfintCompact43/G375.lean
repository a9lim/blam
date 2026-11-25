import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6000 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [15,3,3,3,3,3,3,39,3,15,3,4,15,3,3,3,3,3,3,39,3,15,3,4,15,3,3,3,3,3,3,39,3,15,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6001 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6002 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6003 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6004 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6005 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6006 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6007 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6008 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6009 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6010 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [30,3,3,3,3,3,3,6,3,30,3,4,1,3,3,3,3,3,3,6,3,1,3,4,7,3,3,3,3,3,3,6,3,7,3,4,7,3,3,3,3,3,3,6,3,7,3,4,7,3,3,3,3,3,3,6,3,7,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6011 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6012 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [30,3,3,3,3,3,3,6,3,30,3,4,1,3,3,3,3,3,3,6,3,1,3,4,7,3,3,3,3,3,3,6,3,7,3,4,14,3,3,3,3,3,3,6,3,14,3,4,7,3,3,3,3,3,3,6,3,7,3,4] (hard := []) (by decide +kernel) .nil)

theorem g6013 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g6014 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6015 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
