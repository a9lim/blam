import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1500 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1501 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1502 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1503 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1504 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1505 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1506 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1507 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1508 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1509 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1510 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1511 : BadRow (Grammar43.fourRow ⟨1,2,0,3,5,5⟩ [0,0] [0,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
