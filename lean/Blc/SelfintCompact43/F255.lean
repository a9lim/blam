import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3060 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3061 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3062 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3063 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3064 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3065 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3066 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3067 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3068 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3069 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3070 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3071 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [1,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
