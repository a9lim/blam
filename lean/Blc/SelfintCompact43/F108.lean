import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1296 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1297 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1298 : BadRow (Grammar43.fourRow ⟨1,3,2,2,4,5⟩ [1,1,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1299 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1300 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1301 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1302 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1303 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1304 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1305 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1306 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1307 : BadRow (Grammar43.fourRow ⟨1,3,3,2,4,4⟩ [1,1,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
