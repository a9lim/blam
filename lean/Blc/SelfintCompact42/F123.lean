import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1722 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1723 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [0,1,1,2]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1724 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [0,1,2,1]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1725 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1726 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [0,2,1,1]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f1727 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1728 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [1,0,1,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem f1729 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [1,0,2,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,3] (hard := []) (by decide +kernel) .nil)

theorem f1730 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [1,1,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1731 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1732 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [1,1,2,0]) :=
  row_of_forall (discharge bank [9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem f1733 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [1,2,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,20,3] (hard := []) (by decide +kernel) .nil)

theorem f1734 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [1,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,1] (hard := []) (by decide +kernel) .nil)

theorem f1735 : BadRow (markedRow ⟨2,2,4,2,4,4⟩ [2,2] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
