import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f744 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,5,5,5,5,5,6,6,6,6,6,7,7,7,17,17,14] (hard := []) (by decide +kernel) .nil)

theorem f745 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,6,6,6,6,6,7,7,17] (hard := []) (by decide +kernel) .nil)

theorem f746 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,5,5,5,5,5,6,6,6,6,6,7,7,17,7,11] (hard := []) (by decide +kernel) .nil)

theorem f747 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,7,17,7,17,11] (hard := []) (by decide +kernel) .nil)

theorem f748 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,5,5,5,6,6,7,7,17] (hard := []) (by decide +kernel) .nil)

theorem f749 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,6,6,5,5,5,5,5,6,6,17,34] (hard := []) (by decide +kernel) .nil)

theorem f750 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,5,5,5,6,6,17,17] (hard := []) (by decide +kernel) .nil)

theorem f751 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f752 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f753 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f754 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f755 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
