import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f826 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f827 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [2,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f828 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f829 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f830 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f831 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f832 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f833 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f834 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f835 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f836 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f837 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f838 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f839 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
