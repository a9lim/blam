import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2052 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,1,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2053 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,2,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,2,2,4,2,2,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2054 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,2,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2055 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,2,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,4,4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2056 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,2,3,0]) :=
  row_of_forall (discharge bank [2,2,4,2,4] (hard := []) (by decide +kernel) .nil)

theorem f2057 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,3,0,2]) :=
  row_of_forall (discharge bank [2,2,4,4,4,2,4,4,2,2,2,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2058 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,3,1,1]) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,2,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2059 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,3,2,0]) :=
  row_of_forall (discharge bank [2,4,2,2,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2060 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,4,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2061 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,4,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2062 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,0,0,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2063 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,0,1,3]) :=
  row_of_forall (discharge bank [2,2,2,4,2,2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
