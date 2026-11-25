import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2064 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,0,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2065 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,0,3,1]) :=
  row_of_forall (discharge bank [2,4,4,2,4,4,4,2,2,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2066 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,0,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2067 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,1,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,2,2,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2068 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2069 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2070 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,1,3,0]) :=
  row_of_forall (discharge bank [2,2,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2071 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,2,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2072 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2073 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,2,2,0]) :=
  row_of_forall (discharge bank [2,2,4] (hard := []) (by decide +kernel) .nil)

theorem f2074 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,3,0,1]) :=
  row_of_forall (discharge bank [2,2,4,4,2,4,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2075 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,3,1,0]) :=
  row_of_forall (discharge bank [2,4,2,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
