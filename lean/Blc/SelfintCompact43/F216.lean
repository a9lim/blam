import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2592 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2593 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2594 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2595 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2596 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2597 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2598 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2599 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2600 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2601 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2602 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2603 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
