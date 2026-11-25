import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1320 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1321 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1322 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1323 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1324 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1325 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1326 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1327 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1328 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1329 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1330 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1331 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
