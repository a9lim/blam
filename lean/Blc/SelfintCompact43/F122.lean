import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1464 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1465 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1466 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1467 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1468 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1469 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1470 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1471 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1472 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1473 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1474 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1475 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
