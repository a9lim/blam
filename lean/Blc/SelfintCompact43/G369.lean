import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5904 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5905 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5906 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5907 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5908 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5909 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5910 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5911 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5912 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5913 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5914 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5915 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5916 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5917 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5918 : BadRow (Grammar43.fiveRow 7 6 5 false 5 2 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5919 : BadRow (Grammar43.fiveRow 7 6 5 true 5 2 3 [2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
