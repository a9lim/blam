import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2520 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2521 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2522 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2523 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2524 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2525 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2526 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2527 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2528 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2529 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2530 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2531 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
