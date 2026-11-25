import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1068 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,2,1,0,1]) :=
  row_of_forall (discharge bank [5,5,5,5,5,6,6,6,6,5,5,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1069 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,2,1,1,0]) :=
  row_of_forall (discharge bank [5,5,5,5,5,6,6,6,6] (hard := []) (by decide +kernel) .nil)

theorem f1070 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [0,1] [2,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1071 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1072 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1073 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1074 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1075 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1076 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1077 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1078 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1079 : BadRow (Grammar43.fourRow ⟨1,2,1,2,5,6⟩ [1,0] [0,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
