import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1302 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1303 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1304 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1305 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1306 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1307 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1308 : BadRow (markedRow ⟨1,3,0,3,4,4⟩ [0,0,0] [3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1309 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1310 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,19] (hard := []) (by decide +kernel) .nil)

theorem f1311 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,19] (hard := []) (by decide +kernel) .nil)

theorem f1312 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1313 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,19,19] (hard := []) (by decide +kernel) .nil)

theorem f1314 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1315 : BadRow (markedRow ⟨1,3,1,3,4,3⟩ [0,0,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,19] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
