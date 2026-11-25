import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6816 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6817 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6818 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6819 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6820 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6821 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6822 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6823 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6824 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6825 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6826 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6827 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6828 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6829 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6830 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6831 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 4 [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
