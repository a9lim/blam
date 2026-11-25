import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1752 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1753 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1754 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1755 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1756 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,1,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1757 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1758 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1759 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1760 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1761 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1762 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1763 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
