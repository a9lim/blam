import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1224 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1225 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1226 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1227 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1228 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1229 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1230 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,0,1] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1231 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1232 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1233 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1234 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1235 : BadRow (Grammar43.fourRow ⟨1,3,1,2,4,6⟩ [0,1,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
