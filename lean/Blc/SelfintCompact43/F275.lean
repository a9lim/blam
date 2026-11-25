import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3300 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3301 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3302 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3303 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3304 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3305 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3306 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3307 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3308 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3309 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3310 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3311 : BadRow (Grammar43.fourRow ⟨2,2,0,4,4,5⟩ [0,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
