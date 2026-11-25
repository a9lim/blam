import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3168 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3169 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3170 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3171 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3172 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3173 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3174 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3175 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3176 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3177 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3178 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3179 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
