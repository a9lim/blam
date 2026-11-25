import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3808 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [6,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3809 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [6,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3810 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [7,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3811 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [7,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3812 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3813 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [0,0,7]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3814 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3815 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [0,1,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3816 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3817 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [0,2,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3818 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3819 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [0,3,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3820 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3821 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [0,4,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3822 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 3 [0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3823 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 3 [0,5,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
