import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3132 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3133 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3134 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3135 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3136 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3137 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3138 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3139 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3140 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3141 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3142 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3143 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [1,2] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
