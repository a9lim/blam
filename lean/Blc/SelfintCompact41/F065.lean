import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f910 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f911 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f912 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f913 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f914 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f915 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f916 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f917 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [2,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f918 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f919 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f920 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f921 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f922 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f923 : BadRow (markedRow ⟨1,2,1,3,4,6⟩ [1,0] [3,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
