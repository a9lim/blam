import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2844 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2845 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2846 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2847 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2848 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2849 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2850 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2851 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,0,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2852 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2853 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2854 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2855 : BadRow (Grammar43.fourRow ⟨2,3,2,2,4,3⟩ [1,1,0] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
