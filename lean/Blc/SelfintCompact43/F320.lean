import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3840 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3841 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3842 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3843 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3844 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3845 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3846 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3847 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3848 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3849 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3850 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3851 : BadRow (Grammar43.fourRow ⟨3,2,2,3,4,3⟩ [1,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
