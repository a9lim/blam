import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1524 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1525 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1526 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1527 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1528 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1529 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1530 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1531 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1532 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1533 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1534 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1535 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
