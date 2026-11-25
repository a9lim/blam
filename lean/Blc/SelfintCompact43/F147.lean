import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1764 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1765 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1766 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1767 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1768 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1769 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1770 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1771 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1772 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1773 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1774 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1775 : BadRow (Grammar43.fourRow ⟨1,3,0,3,4,5⟩ [0,0,0] [1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
