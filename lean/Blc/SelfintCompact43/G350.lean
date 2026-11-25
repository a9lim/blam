import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5600 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,3,5,3,5,4,4,3,14,3,5,4] (hard := []) (by decide +kernel) .nil)

theorem g5601 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5602 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5603 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5604 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,5,5,5,5,5,3,5,3,5,3,5,3,5,3,5] (hard := []) (by decide +kernel) .nil)

theorem g5605 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5606 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5607 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5608 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,3,5,3,5,3,5,3,5,3,5,3,5,3,5,3,5,4,4] (hard := []) (by decide +kernel) .nil)

theorem g5609 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5610 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5611 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5612 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5613 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5614 : BadRow (Grammar43.fiveRow 7 6 5 false 4 3 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,3,5,3,5,3,5,3,5,3,5,4] (hard := []) (by decide +kernel) .nil)

theorem g5615 : BadRow (Grammar43.fiveRow 7 6 5 true 4 3 5 [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
