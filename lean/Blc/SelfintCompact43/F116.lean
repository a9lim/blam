import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1392 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [1,3,3,1]) :=
  row_of_forall (discharge bank [16,39] (hard := []) (by decide +kernel) .nil)

theorem f1393 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,0,3,3]) :=
  row_of_forall (discharge bank [39,1,39,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1394 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,1,2,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1395 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,1,3,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1396 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,2,1,3]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1397 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1398 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,2,3,1]) :=
  row_of_forall (discharge bank [4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1399 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,3,0,3]) :=
  row_of_forall (discharge bank [16,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1400 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,3,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1401 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,3,2,1]) :=
  row_of_forall (discharge bank [4,4,4,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1402 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [2,3,3,0]) :=
  row_of_forall (discharge bank [16,39,1] (hard := []) (by decide +kernel) .nil)

theorem f1403 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [3,0,2,3]) :=
  row_of_forall (discharge bank [5,5,1,1,7] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
