import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1712 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1713 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1714 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1715 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1716 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1717 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1718 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1719 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1720 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1721 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1722 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1723 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1724 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1725 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1726 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1727 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
