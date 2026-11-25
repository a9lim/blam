import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f686 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f687 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f688 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f689 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f690 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [1,2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f691 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f692 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f693 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f694 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f695 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f696 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f697 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f698 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f699 : BadRow (markedRow ⟨1,2,0,2,5,6⟩ [0,0] [2,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
