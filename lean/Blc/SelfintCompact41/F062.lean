import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f868 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,1,3,0]) :=
  row_of_forall (discharge bank [35,35] (hard := []) (by decide +kernel) .nil)

theorem f869 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,2,0,2]) :=
  row_of_forall (discharge bank [35,35,13,1,35,13,6] (hard := []) (by decide +kernel) .nil)

theorem f870 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,2,1,1]) :=
  row_of_forall (discharge bank [12,12,35,35,35,13,12,35,13] (hard := []) (by decide +kernel) .nil)

theorem f871 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,2,2,0]) :=
  row_of_forall (discharge bank [35,7] (hard := []) (by decide +kernel) .nil)

theorem f872 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,3,0,1]) :=
  row_of_forall (discharge bank [35,35,13,13] (hard := []) (by decide +kernel) .nil)

theorem f873 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [2,3,1,0]) :=
  row_of_forall (discharge bank [35,13] (hard := []) (by decide +kernel) .nil)

theorem f874 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f875 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f876 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f877 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f878 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f879 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f880 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f881 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [0,1] [3,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
