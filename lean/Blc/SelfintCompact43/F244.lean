import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2928 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2929 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2930 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2931 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2932 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2933 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2934 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2935 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2936 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2937 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2938 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2939 : BadRow (Grammar43.fourRow ⟨2,2,1,3,4,6⟩ [0,1] [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
