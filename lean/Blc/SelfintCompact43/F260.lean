import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3120 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3121 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3122 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3123 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3124 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3125 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3126 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3127 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3128 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3129 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3130 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3131 : BadRow (Grammar43.fourRow ⟨2,2,2,3,4,5⟩ [2,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
