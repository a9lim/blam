import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3904 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3905 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3906 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3907 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3908 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3909 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3910 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3911 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3912 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3913 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,1,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3914 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3915 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,2,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3916 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3917 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,2,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3918 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3919 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
