import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2040 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,3,3,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2041 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,4,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2042 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,4,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2043 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,4,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2044 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,0,1,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2045 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,0,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,4,2,2,2,2,4,4,2,4,4,4,4,4,4,4,4,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2046 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,0,3,2]) :=
  row_of_forall (discharge bank [2,2,4,4,2,2,4,4,4,2,2,2,4,4,4,4,4,4,4,4,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2047 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,0,4,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2048 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,1,0,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2049 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,1,1,3]) :=
  row_of_forall (discharge bank [2,2,2,4,2,4,4,4,4,4,2,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2050 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,1,2,2]) :=
  row_of_forall (discharge bank [2,2,2,4,4,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2051 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [1,1,3,1]) :=
  row_of_forall (discharge bank [2,2,2,4,4,2,4,4,2,4,2,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
