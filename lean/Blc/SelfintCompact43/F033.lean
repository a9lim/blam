import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f396 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f397 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,0,2,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f398 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f399 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f400 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f401 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,0,2,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f402 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,1,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f403 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,1,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f404 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,1,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f405 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,1,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f406 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [1,2,0,0,0,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f407 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,3⟩ [0,0] [2,0,0,0,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
