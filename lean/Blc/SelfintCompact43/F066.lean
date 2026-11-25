import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f792 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,0,5,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,1,9] (hard := []) (by decide +kernel) .nil)

theorem f793 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,1,0,5]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,1,1,38,1] (hard := []) (by decide +kernel) .nil)

theorem f794 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,1,1,4]) :=
  row_of_forall (discharge bank [2,2,2,4,2,4,4,4,4,4,2,2,2,4,2,4,4,4,4,4,4,2,2,4,4,4,4,4,4,4,7,11,1] (hard := []) (by decide +kernel) .nil)

theorem f795 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,1,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4,4,11,38,1] (hard := []) (by decide +kernel) .nil)

theorem f796 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,1,3,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,2,4,2,4,2,4,2,2,2,4,4,4,4,4,4,4,4,4,9,1] (hard := []) (by decide +kernel) .nil)

theorem f797 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,1,4,1]) :=
  row_of_forall (discharge bank [2,2,2,4,4,2,4,4,2,4,2,4,4,4,2,4,2,4,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f798 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,1,5,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f799 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,2,0,4]) :=
  row_of_forall (discharge bank [2,2,4,4,2,2,2,2,2,4,2,2,4,2,2,2,2,4,4,4,4,4,4,4,13,36] (hard := []) (by decide +kernel) .nil)

theorem f800 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,2,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,2,2,4,4,2,2,4,4,4,4,4,4,4,4,4,4,4,1,11] (hard := []) (by decide +kernel) .nil)

theorem f801 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,11] (hard := []) (by decide +kernel) .nil)

theorem f802 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,2,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,4,4,4,2,4,4,4,4,4,4,11] (hard := []) (by decide +kernel) .nil)

theorem f803 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,2,4,0]) :=
  row_of_forall (discharge bank [2,4,2,2,2,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
