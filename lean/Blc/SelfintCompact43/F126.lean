import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1512 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1513 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1514 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1515 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1516 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1517 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1518 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1519 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1520 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1521 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1522 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1523 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
