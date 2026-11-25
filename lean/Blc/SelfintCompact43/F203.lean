import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2436 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [0,2] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2437 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [0,2] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2438 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [0,2] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2439 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [0,2] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2440 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [1,1] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2441 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [1,1] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2442 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [1,1] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2443 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [1,1] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2444 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [2,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2445 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [2,0] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2446 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [2,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2447 : BadRow (Grammar43.fourRow ⟨2,2,2,2,4,7⟩ [2,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
