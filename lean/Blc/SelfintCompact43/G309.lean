import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4944 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4945 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4946 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,15,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4947 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4948 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,15,2,2,42,1,2,15,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4949 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4950 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,15,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4951 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4952 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4953 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4954 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4955 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4956 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4957 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4958 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4959 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
