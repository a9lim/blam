import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1008 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,2,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1009 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [1,2,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1010 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1011 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1012 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1013 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1014 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1015 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1016 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1017 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1018 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1019 : BadRow (Grammar43.fourRow ⟨1,2,0,2,5,7⟩ [0,0] [2,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
