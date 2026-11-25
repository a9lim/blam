import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f852 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,0,3,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f853 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f854 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,1,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f855 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f856 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f857 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f858 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [4,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f859 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [5,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f860 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [5,0,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f861 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [5,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f862 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [5,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f863 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,7⟩ [0,0] [5,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
