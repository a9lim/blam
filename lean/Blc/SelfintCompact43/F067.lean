import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f804 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,3,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,2,4,4,4,2,4,2,2,4,4,4,4,1,17] (hard := []) (by decide +kernel) .nil)

theorem f805 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,3,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,2,2,4,4,2,2,2,4,4,4,4,4,4,55,17] (hard := []) (by decide +kernel) .nil)

theorem f806 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,3,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,2,2,2,4,4,2,2,4,4,4,4,4,17] (hard := []) (by decide +kernel) .nil)

theorem f807 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,3,3,0]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f808 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,4,0,2]) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,2,4,2,2,2,4,4,4,4,7,7] (hard := []) (by decide +kernel) .nil)

theorem f809 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,4,1,1]) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,2,4,4,4,4,4,4,4,7,7] (hard := []) (by decide +kernel) .nil)

theorem f810 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,4,2,0]) :=
  row_of_forall (discharge bank [2,4,2,2,4,2,4] (hard := []) (by decide +kernel) .nil)

theorem f811 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,5,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,7,7] (hard := []) (by decide +kernel) .nil)

theorem f812 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [1,5,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,7] (hard := []) (by decide +kernel) .nil)

theorem f813 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,0,0,5]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f814 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,0,1,4]) :=
  row_of_forall (discharge bank [2,4,2,4,4,2,2,2,2,4,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f815 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,0,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
