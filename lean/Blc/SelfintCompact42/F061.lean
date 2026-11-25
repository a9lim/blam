import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f854 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,1,0,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f855 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,1,1,0,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f856 : BadRow (markedRow ⟨1,2,2,2,5,4⟩ [1,1] [2,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f857 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [0,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f858 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [1,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f859 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [1,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f860 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [1,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f861 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [2,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f862 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [2,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f863 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [2,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f864 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [2,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f865 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f866 : BadRow (markedRow ⟨1,3,0,2,4,6⟩ [0,0,0] [2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f867 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [0,1,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
