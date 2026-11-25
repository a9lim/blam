import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1204 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [3,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1205 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [3,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1206 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [3,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1207 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [3,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1208 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1209 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1210 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1211 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1212 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1213 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1214 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1215 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1216 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2] (hard := []) (by decide +kernel) .nil)

theorem f1217 : BadRow (markedRow ⟨1,2,1,3,5,3⟩ [0,1] [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
