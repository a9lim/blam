import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1032 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,2,1,2,1]) :=
  row_of_forall (discharge bank [14,14,47,39,47,14,14,14] (hard := []) (by decide +kernel) .nil)

theorem f1033 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1034 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,2,2,1,1]) :=
  row_of_forall (discharge bank [14,14,39,14,39,39,14,39,14] (hard := []) (by decide +kernel) .nil)

theorem f1035 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [0,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1036 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,0,1,2,2]) :=
  row_of_forall (discharge bank [39,1,39,1,1,39,1,39,39,1,1,1,1,1,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1037 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,0,2,1,2]) :=
  row_of_forall (discharge bank [39,1,1,1,1,39,1,1,1,1,1,1,1,1,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1038 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,0,2,2,1]) :=
  row_of_forall (discharge bank [39,39,1,39,1,39,39,1,1,39,1,39,1,1,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1039 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,1,0,2,2]) :=
  row_of_forall (discharge bank [39,1,39,1,1,39,1,39,39,1,1,1,1,1,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1040 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1041 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1042 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,1,2,0,2]) :=
  row_of_forall (discharge bank [39,1,1,1,1,39,1,1,1,1,1,1,1,1,5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f1043 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
