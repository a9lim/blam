import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f896 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f897 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f898 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f899 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f900 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f901 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f902 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f903 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f904 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f905 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [1,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f906 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f907 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f908 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f909 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
