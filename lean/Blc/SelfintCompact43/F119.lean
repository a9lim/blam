import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1428 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1429 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1430 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1431 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1432 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1433 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1434 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1435 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1436 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1437 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1438 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1439 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [3,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
