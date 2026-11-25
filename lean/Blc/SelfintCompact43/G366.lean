import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5856 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5857 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5858 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5859 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5860 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5861 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5862 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5863 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [1,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5864 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5865 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5866 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5867 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5868 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5869 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5870 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5871 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
