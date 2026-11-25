import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2568 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2569 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [1,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2570 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2571 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2572 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2573 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2574 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2575 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2576 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2577 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2578 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2579 : BadRow (Grammar43.fourRow ⟨2,2,1,2,5,4⟩ [0,1] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
