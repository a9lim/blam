import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2556 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2557 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2558 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2559 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2560 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2561 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2562 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2563 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2564 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2565 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2566 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2567 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
