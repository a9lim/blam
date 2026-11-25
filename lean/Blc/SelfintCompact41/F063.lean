import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f882 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f883 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f884 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,0,3,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f885 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,1,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f886 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,1,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f887 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,2,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f888 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f889 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,2,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f890 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,3,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f891 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,3,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f892 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,3,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f893 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [0,3,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f894 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f895 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
