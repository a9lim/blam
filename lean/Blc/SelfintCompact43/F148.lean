import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1776 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1777 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1778 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1779 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1780 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1781 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1782 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1783 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1784 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1785 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1786 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1787 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
