import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1380 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1381 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1382 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1383 : BadRow (Grammar43.fourRow ⟨1,2,0,3,4,9⟩ [0,0] [3,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1384 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [0,2,3,3]) :=
  row_of_forall (discharge bank [39,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1385 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [0,3,2,3]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f1386 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [0,3,3,2]) :=
  row_of_forall (discharge bank [1,39,1] (hard := []) (by decide +kernel) .nil)

theorem f1387 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [1,1,3,3]) :=
  row_of_forall (discharge bank [39,1] (hard := []) (by decide +kernel) .nil)

theorem f1388 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [1,2,2,3]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1389 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [1,2,3,2]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1390 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [1,3,1,3]) :=
  row_of_forall (discharge bank [16,1] (hard := []) (by decide +kernel) .nil)

theorem f1391 : BadRow (Grammar43.fourRow ⟨1,2,1,3,4,8⟩ [0,1] [1,3,2,2]) :=
  row_of_forall (discharge bank [4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
