import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1476 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1477 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1478 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1479 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1480 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1481 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1482 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1483 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1484 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1485 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1486 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1487 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
