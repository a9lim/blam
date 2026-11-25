import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2604 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2605 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2606 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2607 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2608 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2609 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2610 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2611 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2612 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2613 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2614 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2615 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [1,0] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
