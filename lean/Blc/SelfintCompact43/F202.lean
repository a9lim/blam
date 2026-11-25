import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2424 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2425 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2426 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2427 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2428 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2429 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2430 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2431 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2432 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2433 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2434 : BadRow (Grammar43.fourRow ⟨2,2,1,2,4,8⟩ [0,1] [2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2435 : BadRow (Grammar43.fourRow ⟨2,2,1,2,4,8⟩ [1,0] [2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
