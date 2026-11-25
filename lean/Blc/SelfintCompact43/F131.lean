import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1572 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1573 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1574 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1575 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1576 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [2,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1577 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1578 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1579 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1580 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1581 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1582 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1583 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [3,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
