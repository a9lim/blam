import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f588 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,2,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f589 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,3,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,9,9,2,2,9,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f590 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,3,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,9,2,2,9,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f591 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,3,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,9,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f592 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,4,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,9,9,2,9,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f593 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,4,1,0]) :=
  row_of_forall (discharge bank [2,2,2,9,2,2,9,2,2] (hard := []) (by decide +kernel) .nil)

theorem f594 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,5,0,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f595 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [2,0,0,4]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f596 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [2,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f597 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f598 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [2,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f599 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [2,0,4,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f600 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [2,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f601 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
