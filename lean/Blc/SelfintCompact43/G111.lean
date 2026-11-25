import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1776 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1777 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,0,0,6]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1778 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1779 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,0,1,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1780 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1781 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,0,2,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1782 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1783 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1784 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1785 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,0,4,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1786 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1787 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,0,5,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1788 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1789 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,0,6,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1790 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [0,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1791 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [0,0,1,0,5]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
