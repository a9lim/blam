import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4976 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [4,1,4,4,4,1,4,4,4,4,54,4,15,15,15,15,3,14,47,6,7,36,36,14,3,6] (hard := []) (by decide +kernel) .nil)

theorem g4977 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4978 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [4,1,4,4,1,4,1,4,4,4,4,36,4,15,15,15,15,3,47,14,6,7,36,36,47,3,6] (hard := []) (by decide +kernel) .nil)

theorem g4979 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4980 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4981 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4982 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [4,4,1,1,4,4,4,4,4,4,4,4,4,4,4,4,54,4,14,4,15,15,15,15,15,15,15,3,47,3,47,14,14,6,7,6,7,36,36,36,36,1,3,6,47,3,6] (hard := []) (by decide +kernel) .nil)

theorem g4983 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4984 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4985 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4986 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [4,4,1,4,4,4,4,4,4,4,4,4,4,47,4,4,15,15,15,15,3,38,3,54,13,6,7,36,36,11,3,6,3,47,4,6] (hard := []) (by decide +kernel) .nil)

theorem g4987 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4988 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [4,4,1,1,4,4,4,4,4,4,11,4,4,4,4,4,4,1,4,36,4,15,15,15,15,15,15,15,3,30,3,47,54,11,6,7,6,7,36,36,36,36,14,3,6,9,3,6] (hard := []) (by decide +kernel) .nil)

theorem g4989 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4990 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [4,4,1,4,4,4,4,4,4,4,4,4,4,1,4,4,15,15,15,15,3,14,3,14,14,6,7,36,36,14,3,6,3,54,4,6] (hard := []) (by decide +kernel) .nil)

theorem g4991 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 5 [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
