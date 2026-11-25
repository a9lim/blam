import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3872 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3873 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3874 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3875 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3876 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3877 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3878 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3879 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3880 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3881 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [6,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3882 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3883 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [7,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3884 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3885 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3886 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3887 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
