import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f630 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f631 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f632 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f633 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f634 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f635 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f636 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f637 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,1,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f638 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f639 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f640 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f641 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,3,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f642 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,3,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f643 : BadRow (markedRow ⟨0,2,0,6,4,4⟩ [0,0] [0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
