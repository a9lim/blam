import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2736 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2737 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2738 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2739 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2740 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2741 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2742 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2743 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2744 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2745 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2746 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2747 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [0,0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
