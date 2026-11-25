import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f980 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f981 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f982 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f983 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f984 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f985 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f986 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f987 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f988 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [1,0,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f989 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [1,0,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f990 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [1,0,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f991 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [1,0,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f992 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f993 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
