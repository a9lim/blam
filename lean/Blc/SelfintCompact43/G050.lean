import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g800 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g801 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g802 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g803 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,1,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g804 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g805 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g806 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [3,1,3,1,3,1,3,4,3,39,3,14,3,39,3,1,3,1,3,4,3,39,3,25,3,1,3,1,3,1,3,4,3,39,3,14] (hard := []) (by decide +kernel) .nil)

theorem g807 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g808 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [3,39,3,1,3,1,3,4,3,39,3,25,3,1,3,1,3,1,3,4,3,39,3,47,3,1,3,1,3,1,3,4,3,39,3,47] (hard := []) (by decide +kernel) .nil)

theorem g809 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g810 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g811 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g812 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g813 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g814 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g815 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 4 [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
