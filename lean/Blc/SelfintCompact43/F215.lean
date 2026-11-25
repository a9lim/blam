import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2580 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2581 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2582 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2583 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2584 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2585 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2586 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2587 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2588 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2589 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2590 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2591 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [0,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
