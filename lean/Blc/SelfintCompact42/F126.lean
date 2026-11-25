import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1764 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1765 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1766 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1767 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1768 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1769 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1770 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1771 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1772 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1773 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1774 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1775 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1776 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1777 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
