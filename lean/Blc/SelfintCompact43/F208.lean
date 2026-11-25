import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2496 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2497 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2498 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2499 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2500 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2501 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2502 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2503 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2504 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2505 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2506 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2507 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
