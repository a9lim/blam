import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1404 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,0,3,2]) :=
  row_of_forall (discharge bank [5,5,9,5,1] (hard := []) (by decide +kernel) .nil)

theorem f1405 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1406 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,1,2,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1407 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1408 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,2,0,3]) :=
  row_of_forall (discharge bank [5,5,1,1,7] (hard := []) (by decide +kernel) .nil)

theorem f1409 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,2,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1410 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,2,2,1]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1411 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,2,3,0]) :=
  row_of_forall (discharge bank [5,5,9] (hard := []) (by decide +kernel) .nil)

theorem f1412 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,3,0,2]) :=
  row_of_forall (discharge bank [5,5,6,5,6] (hard := []) (by decide +kernel) .nil)

theorem f1413 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1414 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,3,2,0]) :=
  row_of_forall (discharge bank [5,5,6] (hard := []) (by decide +kernel) .nil)

theorem f1415 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [0,2,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
