import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2448 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2449 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2450 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2451 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2452 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2453 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2454 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2455 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2456 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2457 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [1,2] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2458 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2459 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
