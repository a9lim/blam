import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f616 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [3,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f617 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [3,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f618 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [3,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f619 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f620 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [4,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f621 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [4,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f622 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [4,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f623 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [4,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f624 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [4,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f625 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [4,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f626 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [5,0,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f627 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [5,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f628 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [5,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f629 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
