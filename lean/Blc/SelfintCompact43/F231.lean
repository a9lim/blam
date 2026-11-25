import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2772 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2773 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2774 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2775 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2776 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2777 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2778 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2779 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2780 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2781 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2782 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2783 : BadRow (Grammar43.fourRow ⟨2,3,1,2,4,4⟩ [1,0,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
