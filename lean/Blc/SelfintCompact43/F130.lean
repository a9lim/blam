import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1560 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1561 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1562 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1563 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1564 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1565 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1566 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1567 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1568 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1569 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1570 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1571 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
