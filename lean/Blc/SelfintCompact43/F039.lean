import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f468 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,83] (hard := []) (by decide +kernel) .nil)

theorem f469 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15] (hard := []) (by decide +kernel) .nil)

theorem f470 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,15,15,83,83] (hard := []) (by decide +kernel) .nil)

theorem f471 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,15,15,15,83] (hard := []) (by decide +kernel) .nil)

theorem f472 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f473 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f474 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f475 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f476 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f477 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f478 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f479 : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,3⟩ [0,0,0] [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
