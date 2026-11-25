import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f798 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f799 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f800 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f801 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f802 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f803 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f804 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f805 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f806 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f807 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f808 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f809 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f810 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f811 : BadRow (markedRow ⟨1,2,1,2,5,5⟩ [1,0] [2,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
