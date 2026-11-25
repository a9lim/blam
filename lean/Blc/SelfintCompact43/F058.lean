import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f696 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,0,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f697 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,0,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f698 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,0,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f699 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,0,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f700 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,0,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f701 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,1,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f702 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,1,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f703 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,1,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f704 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [3,2,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f705 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [4,0,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f706 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [4,0,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f707 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [4,0,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
