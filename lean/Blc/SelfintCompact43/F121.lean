import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1452 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1453 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1454 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1455 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1456 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1457 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1458 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1459 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1460 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1461 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [1,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1462 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1463 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [2,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
