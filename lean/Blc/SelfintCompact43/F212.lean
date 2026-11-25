import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2544 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2545 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2546 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2547 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2548 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2549 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2550 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2551 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2552 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2553 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [0,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2554 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2555 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
