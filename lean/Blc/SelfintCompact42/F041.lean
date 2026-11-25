import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f574 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,0,0,5]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f575 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,0,1,4]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,9,2,2,2,2,9,9,2,2,2,9,2,2,2,2,9,9,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f576 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,0,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,2,2,2,2,2,9,9,2,2,2,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f577 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,0,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,2,2,2,9,9,9,2,2,2,2,2,2,2,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f578 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,0,4,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,9,9,2,2,9,9,9,2,2,9,2,9,9,2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f579 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,0,5,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f580 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,1,0,4]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,9,2,2,9,2,2,2,9,2,2,9,2,2,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f581 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,1,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,2,2,9] (hard := []) (by decide +kernel) .nil)

theorem f582 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f583 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,1,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,9,2,9,2,2,9] (hard := []) (by decide +kernel) .nil)

theorem f584 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,1,4,0]) :=
  row_of_forall (discharge bank [2,2,2,2,9,2,9,2,2,9,2,9] (hard := []) (by decide +kernel) .nil)

theorem f585 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,2,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,2,2,2,9,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f586 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f587 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
