import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f960 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f961 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f962 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f963 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f964 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f965 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f966 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f967 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f968 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f969 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f970 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f971 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,5⟩ [0,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
