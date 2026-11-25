import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1344 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1345 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1346 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1347 : BadRow (Grammar43.fourRow ⟨1,3,0,2,5,3⟩ [0,0,0] [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1348 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1349 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1350 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1351 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1352 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1353 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1354 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1355 : BadRow (Grammar43.fourRow ⟨1,4,0,2,4,3⟩ [0,0,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
