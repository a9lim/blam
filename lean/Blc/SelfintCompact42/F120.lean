import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1680 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1681 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1682 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1683 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1684 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1685 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1686 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1687 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1688 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1689 : BadRow (markedRow ⟨2,2,2,2,4,6⟩ [2,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1690 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [0,1,2,2]) :=
  row_of_forall (discharge bank [33,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1691 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [0,2,1,2]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1692 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [0,2,2,1]) :=
  row_of_forall (discharge bank [1,33,1] (hard := []) (by decide +kernel) .nil)

theorem f1693 : BadRow (markedRow ⟨2,2,3,2,4,5⟩ [1,2] [1,0,2,2]) :=
  row_of_forall (discharge bank [33,1,33,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
