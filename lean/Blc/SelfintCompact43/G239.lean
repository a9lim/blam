import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3824 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3825 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [0,6,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3826 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3827 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [0,7,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3828 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3829 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [1,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3830 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3831 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [1,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3832 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3833 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [1,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3834 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3835 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3836 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3837 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [1,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3838 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3839 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [1,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
