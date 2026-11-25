import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2868 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2869 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2870 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2871 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2872 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2873 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2874 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2875 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2876 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2877 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2878 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2879 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [2,0,0] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
