import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5936 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5937 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,0,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5938 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5939 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5940 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5941 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5942 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5943 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5944 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5945 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5946 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5947 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5948 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5949 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5950 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5951 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 4 [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
