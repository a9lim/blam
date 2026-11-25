import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2904 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [2,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2905 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [2,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2906 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2907 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2908 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [2,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2909 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [2,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2910 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2911 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2912 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2913 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2914 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2915 : BadRow (Grammar43.fourRow ⟨2,2,0,3,4,7⟩ [0,0] [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
