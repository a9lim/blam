import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2076 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [2,4,0,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2077 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,0,0,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2078 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2079 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2080 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,0,3,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2081 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2082 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,1,1,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2083 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2084 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2085 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f2086 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2087 : BadRow (Grammar43.fourRow ⟨1,2,1,4,4,6⟩ [0,1] [4,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
