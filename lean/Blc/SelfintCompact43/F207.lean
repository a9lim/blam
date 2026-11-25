import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2484 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2485 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2486 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2487 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2488 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2489 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2490 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2491 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2492 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2493 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2494 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2495 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
