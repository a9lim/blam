import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2952 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2953 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2954 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2955 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2956 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2957 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2958 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2959 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2960 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2961 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2962 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2963 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
