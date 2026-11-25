import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g832 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g833 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g834 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g835 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g836 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g837 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g838 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g839 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g840 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g841 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g842 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [3,1,3,1,3,1,3,4,3,39,3,1,3,39,3,1,3,1,3,4,3,39,3,25,3,1,3,1,3,1,3,4,3,39,3,14,3,39,3,1,3,1,3,4,3,39,3,25,3,1,3,1,3,1,3,4,3,39,3,1] (hard := []) (by decide +kernel) .nil)

theorem g843 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g844 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g845 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g846 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [3,25,3,1,3,1,3,4,3,39,3,30,3,1,3,1,3,1,3,4,3,39,3,1,3,39,3,1,3,1,3,4,3,39,3,25] (hard := []) (by decide +kernel) .nil)

theorem g847 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
