import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5760 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5761 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5762 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5763 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5764 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5765 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5766 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5767 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5768 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5769 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5770 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5771 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5772 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5773 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5774 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5775 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
