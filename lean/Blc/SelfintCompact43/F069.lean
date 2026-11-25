import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f828 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,3,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,2,2,4,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f829 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,3,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,2,4,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f830 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,3,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,4,2,2,4] (hard := []) (by decide +kernel) .nil)

theorem f831 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,4,0,1]) :=
  row_of_forall (discharge bank [4,4,4,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f832 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,4,1,0]) :=
  row_of_forall (discharge bank [4,2,4,2,2,4] (hard := []) (by decide +kernel) .nil)

theorem f833 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [2,5,0,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f834 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,0,0,4]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f835 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f836 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f837 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,0,3,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f838 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,0,4,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f839 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [3,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
