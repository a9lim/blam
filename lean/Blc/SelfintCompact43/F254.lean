import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3048 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [3,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3049 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [3,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3050 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [3,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3051 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [0,2] [3,2,0,0]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f3052 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3053 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3054 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3055 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3056 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3057 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3058 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3059 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
