import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g816 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g817 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g818 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g819 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g820 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g821 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g822 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g823 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g824 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g825 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g826 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g827 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g828 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [3,1,3,1,3,1,3,4,3,39,3,1,3,1,3,1,3,1,3,4,3,39,3,1,3,1,3,1,3,1,3,4,3,39,3,1,3,1,3,1,3,1,3,4,3,39,3,1,3,1,3,1,3,1,3,4,3,39,3,1] (hard := []) (by decide +kernel) .nil)

theorem g829 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g830 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g831 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
