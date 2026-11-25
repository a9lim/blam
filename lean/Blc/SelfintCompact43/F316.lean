import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f3792 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3793 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3794 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3795 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3796 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3797 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3798 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3799 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3800 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3801 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3802 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3803 : BadRow (Grammar43.fourRow ⟨3,2,1,3,4,4⟩ [1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
