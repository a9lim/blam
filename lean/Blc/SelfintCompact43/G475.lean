import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7600 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7601 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7602 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,1,4,4,4,4,4,4,14,4,4,4,1,4,4,4,1,4,4,4,4,1,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7603 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7604 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7605 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7606 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7607 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7608 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7609 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7610 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7611 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7612 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,53,4,4,4,1,4,4,4,4,4,53,4,4,4,4,4,1,4,1,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7613 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7614 : BadRow (Grammar43.fiveRow 7 7 3 false 3 5 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7615 : BadRow (Grammar43.fiveRow 7 7 3 true 3 5 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
