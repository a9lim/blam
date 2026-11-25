import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f644 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f645 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f646 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f647 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f648 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f649 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f650 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f651 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f652 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f653 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [1,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f654 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f655 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f656 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f657 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
