import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f784 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f785 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f786 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f787 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f788 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f789 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f790 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f791 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f792 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f793 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f794 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f795 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [1,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f796 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f797 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
