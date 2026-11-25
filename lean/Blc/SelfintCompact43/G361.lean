import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g5776 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5777 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5778 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5779 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5780 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5781 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5782 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5783 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5784 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5785 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5786 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5787 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5788 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5789 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5790 : BadRow (Grammar43.fiveRow 7 6 5 false 4 4 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g5791 : BadRow (Grammar43.fiveRow 7 6 5 true 4 4 5 [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
