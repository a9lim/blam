import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1548 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1549 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1550 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1551 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1552 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1553 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1554 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1555 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1556 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1557 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1558 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1559 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
