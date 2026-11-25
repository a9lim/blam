import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1736 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [2,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1737 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1738 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [2,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1739 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [2,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1740 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1741 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1742 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1743 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1744 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1745 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1746 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1747 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1748 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1749 : BadRow (markedRow ⟨2,2,0,2,5,4⟩ [0,0] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
