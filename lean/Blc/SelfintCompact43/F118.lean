import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1416 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [0,3,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1417 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [0,3,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1418 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [1,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1419 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [1,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1420 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [1,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1421 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [1,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1422 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [1,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1423 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [1,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1424 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1425 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1426 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1427 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [1,0] [2,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
