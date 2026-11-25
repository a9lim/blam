import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7776 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7777 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7778 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7779 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7780 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7781 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7782 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7783 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7784 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7785 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7786 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7787 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7788 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7789 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7790 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [0,0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7791 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [0,0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
