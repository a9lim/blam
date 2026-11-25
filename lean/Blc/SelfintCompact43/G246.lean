import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3936 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3937 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,4,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3938 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3939 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,4,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3940 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3941 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,4,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3942 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3943 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,4,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3944 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3945 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,5,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3946 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3947 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,5,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3948 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3949 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,5,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3950 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3951 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,6,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
