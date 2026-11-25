import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2472 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2473 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2474 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2475 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2476 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2477 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2478 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2479 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2480 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2481 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2482 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2483 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
