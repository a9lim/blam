import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2532 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2533 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2534 : BadRow (Grammar43.fourRow ⟨2,2,0,2,5,5⟩ [0,0] [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2535 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2536 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2537 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2538 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2539 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2540 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2541 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2542 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2543 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
