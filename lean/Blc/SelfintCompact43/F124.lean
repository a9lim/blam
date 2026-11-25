import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1488 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1489 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1490 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1491 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1492 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1493 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1494 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1495 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1496 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1497 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1498 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1499 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
