import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1520 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1521 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1522 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1523 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1524 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1525 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1526 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1527 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1528 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1529 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1530 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1531 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1532 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1533 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1534 : BadRow (Grammar43.fiveRow 7 5 7 false 5 3 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1535 : BadRow (Grammar43.fiveRow 7 5 7 true 5 3 5 [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
