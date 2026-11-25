import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f900 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f901 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f902 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f903 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f904 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,5,5,5,5,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f905 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f906 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f907 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,5,5,5,5,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f908 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f909 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f910 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f911 : BadRow (Grammar43.fourRow ⟨0,3,0,5,4,3⟩ [0,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
