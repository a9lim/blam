import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f546 : BadRow (markedRow ⟨0,3,0,4,4,4⟩ [0,0,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f547 : BadRow (markedRow ⟨0,3,0,4,4,4⟩ [0,0,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f548 : BadRow (markedRow ⟨0,3,0,4,4,4⟩ [0,0,0] [4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f549 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,0,1,5]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,1] (hard := []) (by decide +kernel) .nil)

theorem f550 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,0,2,4]) :=
  row_of_forall (discharge bank [2,2,2,2,9,2,2,9,9,2,9,9,9,9,2,9,9,9,9,9,9,9,2,2,9,9,5,5,1,1] (hard := []) (by decide +kernel) .nil)

theorem f551 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,0,3,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,9,9,9,9,9,9,2,2,9,9,9,9,9,9,9,9,2,2,9,9,5,5,1,1] (hard := []) (by decide +kernel) .nil)

theorem f552 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,0,4,2]) :=
  row_of_forall (discharge bank [2,2,2,9,2,9,9,2,2,2,9,9,9,9,2,9,9,9,9,9,9,9,2,2,9,9,5,5,1,1] (hard := []) (by decide +kernel) .nil)

theorem f553 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,0,5,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,1] (hard := []) (by decide +kernel) .nil)

theorem f554 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,1,0,5]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,5,5,5,5,5,5,12,12] (hard := []) (by decide +kernel) .nil)

theorem f555 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,1,1,4]) :=
  row_of_forall (discharge bank [2,2,2,2,9,2,2,2,2,9,9,9,2,9,2,9,2,2,2,2,9,9,9,2,9,9,9,9,9,2,2,9,5,5,15] (hard := []) (by decide +kernel) .nil)

theorem f556 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,1,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,9,2,2,2,2,2,2,9,9,9,2,9,9,9,9,9,9,9,9,9,9,9,5,18,15] (hard := []) (by decide +kernel) .nil)

theorem f557 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,1,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,9,2,9,9,2,2,2,9,2,2,2,2,2,9,9,9,9,9,9,9,2,9,5,15] (hard := []) (by decide +kernel) .nil)

theorem f558 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,1,4,1]) :=
  row_of_forall (discharge bank [2,2,2,2,9,2,9,9,2,2,2,9,2,9,9,2,2,2,9,9,9,2,5] (hard := []) (by decide +kernel) .nil)

theorem f559 : BadRow (markedRow ⟨0,2,0,5,4,6⟩ [0,0] [0,1,5,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
