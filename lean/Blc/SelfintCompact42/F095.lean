import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1330 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,19] (hard := []) (by decide +kernel) .nil)

theorem f1331 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,19] (hard := []) (by decide +kernel) .nil)

theorem f1332 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1333 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,19,19] (hard := []) (by decide +kernel) .nil)

theorem f1334 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1335 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,19] (hard := []) (by decide +kernel) .nil)

theorem f1336 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,19,19] (hard := []) (by decide +kernel) .nil)

theorem f1337 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,19] (hard := []) (by decide +kernel) .nil)

theorem f1338 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1339 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1340 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1341 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem f1342 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1343 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,1,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
