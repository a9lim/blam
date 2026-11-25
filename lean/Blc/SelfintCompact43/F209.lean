import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2508 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2509 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2510 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2511 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2512 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2513 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2514 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2515 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2516 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2517 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2518 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2519 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
