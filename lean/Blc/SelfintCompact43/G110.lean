import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1760 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1761 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1762 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1763 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1764 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1765 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1766 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1767 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1768 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1769 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1770 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1771 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1772 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1773 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [5,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1774 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 4 [6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1775 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 4 [6,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
