import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f480 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f481 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f482 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,2,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f483 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f484 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f485 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f486 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f487 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [3,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f488 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f489 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,28,28,28,28,14,5,5,5,5,15,1,1,1,18,8] (hard := []) (by decide +kernel) .nil)

theorem f490 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,28,28,28,28,14,5,5,5,5,15,1,1,1,18,8] (hard := []) (by decide +kernel) .nil)

theorem f491 : BadRow (Grammar43.fourRow ⟨0,4,0,3,4,3⟩ [0,0,0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
