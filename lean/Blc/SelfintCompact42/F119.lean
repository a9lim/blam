import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1666 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1667 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1668 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1669 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [0,2] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1670 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1671 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1672 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1673 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1674 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1675 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1676 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1677 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1678 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1679 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [1,1] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
