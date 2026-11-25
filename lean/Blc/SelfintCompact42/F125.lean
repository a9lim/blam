import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1750 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1751 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1752 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1753 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1754 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1755 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1756 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1757 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1758 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1759 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1760 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1761 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1762 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1763 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
