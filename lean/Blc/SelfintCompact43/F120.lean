import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1440 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1441 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1442 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1443 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1444 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1445 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1446 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1447 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1448 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1449 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1450 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1451 : BadRow (Grammar43.fourRow ⟨1,2,2,3,4,7⟩ [1,1] [0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
