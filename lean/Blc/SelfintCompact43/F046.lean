import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f552 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,0,3,3]) :=
  row_of_forall (discharge bank [4,25,1,1,4,6,1,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f553 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,0,4,2]) :=
  row_of_forall (discharge bank [36,25,1,6,1,6] (hard := []) (by decide +kernel) .nil)

theorem f554 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,1,1,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,1,6] (hard := []) (by decide +kernel) .nil)

theorem f555 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,1,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,6,6,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f556 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,1,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,6,4,6,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f557 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,1,4,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,25,6,17] (hard := []) (by decide +kernel) .nil)

theorem f558 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,2,0,4]) :=
  row_of_forall (discharge bank [1,1,1,1,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f559 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,2,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,1,4,6,6,6,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f560 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,2,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f561 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,2,3,1]) :=
  row_of_forall (discharge bank [2,2,2,4,25,1,4,6,4,4] (hard := []) (by decide +kernel) .nil)

theorem f562 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,2,4,0]) :=
  row_of_forall (discharge bank [1,1] (hard := []) (by decide +kernel) .nil)

theorem f563 : BadRow (Grammar43.fourRow ⟨0,2,0,4,4,9⟩ [0,0] [3,3,0,3]) :=
  row_of_forall (discharge bank [7,7,36,6,17,36,6] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
