import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2412 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2413 : BadRow (Grammar43.fourRow ⟨1,2,2,5,4,3⟩ [1,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2414 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2415 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2416 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2417 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2418 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2419 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2420 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2421 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2422 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2423 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,3⟩ [0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
