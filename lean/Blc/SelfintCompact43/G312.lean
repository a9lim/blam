import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4992 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4993 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4994 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,1,4,4,4,1,4,4,4,4,4,4,4,4,4,4,15,15,15,15,15,3,1,3,14,3,37,3,47,3,47] (hard := []) (by decide +kernel) .nil)

theorem g4995 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4996 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4997 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4998 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,15,15,15,15,15,3,38,3,1,3,37,3,55,3,47,3,47,3,54,3,33,4,6,4,6] (hard := []) (by decide +kernel) .nil)

theorem g4999 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5000 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5001 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5002 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5003 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5004 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,15,15,15,3,9,3,9,3,9,3,11,3,13,4,6] (hard := []) (by decide +kernel) .nil)

theorem g5005 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5006 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,53,4,4,4,1,4,4,4,4,4,4,4,4,4,4,15,15,15,15,15,3,47,3,17,3,17,3,17,3,17] (hard := []) (by decide +kernel) .nil)

theorem g5007 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
