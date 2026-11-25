import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f756 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f757 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f758 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [4,0,0,1]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f759 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [4,0,1,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f760 : BadRow (Grammar43.fourRow ⟨0,3,0,4,4,5⟩ [0,0,0] [4,1,0,0]) :=
  row_of_forall (discharge bank [6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f761 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,0,2,5]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,7,7,14] (hard := []) (by decide +kernel) .nil)

theorem f762 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,0,3,4]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,4,4,2,4,2,4,4,7,14,14] (hard := []) (by decide +kernel) .nil)

theorem f763 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,0,4,3]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,4,4,2,4,2,4,4,7,14,14] (hard := []) (by decide +kernel) .nil)

theorem f764 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,0,5,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,7,7,14] (hard := []) (by decide +kernel) .nil)

theorem f765 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,1,1,5]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,9] (hard := []) (by decide +kernel) .nil)

theorem f766 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,1,2,4]) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,2,2,2,2,2,2,2,2,4,4,4,4,2,2,4,4,4,4,4,4,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f767 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [0,1,3,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,4,4,4,2,2,4,4,4,4,4,2,2,4,4,4,4,4,4,4,4,2,2,4,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
