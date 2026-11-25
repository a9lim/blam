import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7904 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7905 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7906 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7907 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7908 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7909 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7910 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7911 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7912 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7913 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7914 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7915 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7916 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7917 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7918 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7919 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
