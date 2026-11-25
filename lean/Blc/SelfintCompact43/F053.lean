import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f636 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,3,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,2,2,2,2,4,4,4,4,4,4,4,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f637 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,4,0,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f638 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,4,0,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,14,11] (hard := []) (by decide +kernel) .nil)

theorem f639 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [0,4,1,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,44] (hard := []) (by decide +kernel) .nil)

theorem f640 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,0,0,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f641 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,2,2,2,4,4,2,2,2,4,2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f642 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f643 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,2,2,4,4,4,2,2,2,4,4,2,2,4,2,4,4,4,4,4,4,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f644 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,0,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f645 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,2,4,2,2,2,2,4,4,2,2,2,2,2,4,4,4,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f646 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f647 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,5⟩ [0,0] [1,0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
