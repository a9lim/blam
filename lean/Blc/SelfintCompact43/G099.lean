import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1584 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1585 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1586 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1587 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [2,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1588 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1589 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1590 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1591 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1592 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1593 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1594 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1595 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1596 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1597 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [4,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1598 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 3 [4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1599 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 3 [4,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
