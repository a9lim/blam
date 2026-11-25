import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1652 : BadRow (markedRow ⟨2,2,1,2,4,7⟩ [0,1] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1653 : BadRow (markedRow ⟨2,2,1,2,4,7⟩ [0,1] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1654 : BadRow (markedRow ⟨2,2,1,2,4,7⟩ [0,1] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1655 : BadRow (markedRow ⟨2,2,1,2,4,7⟩ [0,1] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1656 : BadRow (markedRow ⟨2,2,1,2,4,7⟩ [1,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1657 : BadRow (markedRow ⟨2,2,1,2,4,7⟩ [1,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1658 : BadRow (markedRow ⟨2,2,1,2,4,7⟩ [1,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1659 : BadRow (markedRow ⟨2,2,1,2,4,7⟩ [1,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1660 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1661 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1662 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1663 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1664 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1665 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
