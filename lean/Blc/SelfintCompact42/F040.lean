import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f560 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,2,0,4]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,9,2,2,9,2,2,9,9,2,2,9,9,9,9,9,9,9,2,2,2,2,9,9,1,14] (hard := []) (by decide +kernel) .nil)

theorem f561 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,2,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,2,2,2,2,9,9,9,9,9,9,9,9,2,2,9,9,24,14] (hard := []) (by decide +kernel) .nil)

theorem f562 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9,9,2,9,14] (hard := []) (by decide +kernel) .nil)

theorem f563 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,2,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,9,9,2,2,2,9,2,2,9,9,9,9,9,9,2,9,14] (hard := []) (by decide +kernel) .nil)

theorem f564 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,2,4,0]) :=
  row_of_forall (discharge bank [2,2,2,9,2,9,2,9,9,9,2] (hard := []) (by decide +kernel) .nil)

theorem f565 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,3,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9,9,9,9,9,9,9,2,2,9,9,9,9,9,9,2,2,5,5] (hard := []) (by decide +kernel) .nil)

theorem f566 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,3,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,2,2,2,9,2,9,9,2,2,2,2,2,9,9,9,9,9,9,9,2,2,5,5] (hard := []) (by decide +kernel) .nil)

theorem f567 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,3,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,9,2,2,9,2,9,9,2,2,2,2,9,9,9,9,9,9,2,2,5] (hard := []) (by decide +kernel) .nil)

theorem f568 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,3,3,0]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f569 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,4,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,2,9,9,2,2,2,9,9,9,9,9,9,9,9,2,2,5,5] (hard := []) (by decide +kernel) .nil)

theorem f570 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,4,1,1]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,2,9,2,9,9,2,9,9,9,2,9,9,2,9,9,9,5,5] (hard := []) (by decide +kernel) .nil)

theorem f571 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,4,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,9,2,2,9,9,9,9,2] (hard := []) (by decide +kernel) .nil)

theorem f572 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,5,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,5,5] (hard := []) (by decide +kernel) .nil)

theorem f573 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,5,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
