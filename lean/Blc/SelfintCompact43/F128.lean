import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1536 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1537 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1538 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1539 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1540 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1541 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1542 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1543 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1544 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1545 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1546 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1547 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,1,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
