import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2724 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2725 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2726 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2727 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2728 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2729 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2730 : BadRow (Grammar43.fourRow ⟨2,3,0,2,4,5⟩ [0,0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2731 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2732 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2733 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2734 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2735 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
