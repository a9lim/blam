import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1232 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1233 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1234 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1235 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1236 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1237 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1238 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1239 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1240 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [1,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1241 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1242 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1243 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1244 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1245 : BadRow (markedRow ⟨2,2,2,2,4,5⟩ [2,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
