import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f742 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29,29,12] (hard := []) (by decide +kernel) .nil)

theorem f743 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f744 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [33,33,7,7,7,1,1,7,7,1] (hard := []) (by decide +kernel) .nil)

theorem f745 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [29,29,29,29,29,1,1,1,14,1,1,14,14,12] (hard := []) (by decide +kernel) .nil)

theorem f746 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,0,0,2,1]) :=
  row_of_forall (discharge bank [29,29,29,29,29,1,1,15,14,29,29,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f747 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,0,1,0,2]) :=
  row_of_forall (discharge bank [29,29,29,29,29,1,1,1,14,1,1,14,14,12] (hard := []) (by decide +kernel) .nil)

theorem f748 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,0,1,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f749 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,0,1,2,0]) :=
  row_of_forall (discharge bank [29,29,29,29,29,1,1,15,14,29,29,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f750 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,0,2,0,1]) :=
  row_of_forall (discharge bank [29,29,29,29,29,15,1,4,1,29,29,20,4,51] (hard := []) (by decide +kernel) .nil)

theorem f751 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,0,2,1,0]) :=
  row_of_forall (discharge bank [29,29,29,29,29,15,1,4,1,29,29,20,4,52] (hard := []) (by decide +kernel) .nil)

theorem f752 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,1,0,0,2]) :=
  row_of_forall (discharge bank [29,29,29,29,29,1,1,1,14,1,1,14,14,11] (hard := []) (by decide +kernel) .nil)

theorem f753 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,1,0,1,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f754 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,1,0,2,0]) :=
  row_of_forall (discharge bank [29,29,29,29,29,1,1,15,14,29,29,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f755 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [0,1] [2,1,1,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
