import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f952 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f953 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f954 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f955 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f956 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f957 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f958 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f959 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f960 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f961 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f962 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f963 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f964 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f965 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
