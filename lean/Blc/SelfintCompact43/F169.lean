import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2028 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,1,1,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2029 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,1,2,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,2,4,4,4,4,4,4,2] (hard := []) (by decide +kernel) .nil)

theorem f2030 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,1,3,2]) :=
  row_of_forall (discharge bank [2,2,4,4,4,2,2,4,2,4,4,4,4,4,4,4,4,2,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2031 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,1,4,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2032 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,2,0,4]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2033 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,2,1,3]) :=
  row_of_forall (discharge bank [2,2,4,2,4,2,2,4,4,4,4,2,2,4,4,4,4,4,4,4,4,4,2,2,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2034 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,2,2,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2035 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,2,3,1]) :=
  row_of_forall (discharge bank [2,4,4,4,4,2,2,2,4,2,4,4,4,4,2,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2036 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,2,4,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5] (hard := []) (by decide +kernel) .nil)

theorem f2037 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,3,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2038 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,3,1,2]) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,2,4,4,4,4,2,2,2,4,4,4,4,4,4,4,2,2,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f2039 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [0,3,2,1]) :=
  row_of_forall (discharge bank [2,4,4,4,4,2,4,2,4,4,2,2,4,4,4,4,4,4,2,4,5,5] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
