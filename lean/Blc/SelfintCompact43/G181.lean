import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2896 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2897 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2898 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2899 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2900 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2901 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2902 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2903 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2904 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2905 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2906 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2907 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2908 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2909 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2910 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2911 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
