import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2880 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2881 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2882 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2883 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2884 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2885 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2886 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2887 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2888 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2889 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2890 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2891 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2892 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2893 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2894 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 3 [4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2895 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 3 [4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
