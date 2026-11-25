import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2976 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2977 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2978 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2979 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2980 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2981 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2982 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2983 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2984 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2985 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2986 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2987 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2988 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2989 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2990 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2991 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
