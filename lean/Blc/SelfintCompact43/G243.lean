import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3888 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3889 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3890 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3891 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3892 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3893 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3894 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3895 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3896 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3897 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3898 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3899 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3900 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3901 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3902 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3903 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
