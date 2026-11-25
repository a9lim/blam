import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1728 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1729 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1730 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1731 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1732 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1733 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1734 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1735 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1736 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1737 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1738 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1739 : BadRow (Grammar43.fourRow ⟨1,2,2,3,5,3⟩ [1,1] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
