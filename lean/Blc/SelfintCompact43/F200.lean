import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2400 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2401 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2402 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2403 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2404 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2405 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2406 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2407 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2408 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2409 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2410 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2411 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
