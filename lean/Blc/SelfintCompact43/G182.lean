import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2912 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2913 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2914 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2915 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2916 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2917 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2918 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2919 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2920 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2921 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2922 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2923 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2924 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2925 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2926 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 4 [0,0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2927 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 4 [0,0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
