import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g4928 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4929 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4930 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4931 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4932 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4933 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 3 [3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4934 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4935 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4936 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,15,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4937 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4938 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,15,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4939 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4940 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4941 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4942 : BadRow (Grammar43.fiveRow 7 6 5 false 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,6,2,2,42,1,2,15,2,2,42,1,2,15,2,2] (hard := []) (by decide +kernel) .nil)

theorem g4943 : BadRow (Grammar43.fiveRow 7 6 5 true 3 3 4 [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
