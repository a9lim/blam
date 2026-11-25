import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2460 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2461 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2462 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2463 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2464 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2465 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2466 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2467 : BadRow (Grammar43.fourRow ⟨2,2,3,2,4,6⟩ [2,1] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2468 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2469 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2470 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2471 : BadRow (Grammar43.fourRow ⟨2,2,4,2,4,5⟩ [2,2] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
