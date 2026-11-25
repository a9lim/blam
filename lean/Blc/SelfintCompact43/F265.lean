import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3180 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3181 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3182 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3183 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3184 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3185 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3186 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3187 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3188 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3189 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3190 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3191 : BadRow (Grammar43.fourRow ⟨2,2,3,3,4,4⟩ [2,1] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
