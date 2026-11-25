import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f798 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,1,0] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f799 : BadRow (markedRow ⟨1,3,2,2,4,3⟩ [1,1,0] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f800 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [0,1,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f801 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [0,2,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f802 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f803 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f804 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f805 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f806 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f807 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f808 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f809 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f810 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f811 : BadRow (markedRow ⟨1,2,0,3,4,7⟩ [0,0] [1,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
