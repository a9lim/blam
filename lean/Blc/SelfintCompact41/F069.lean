import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f966 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [3,1,1,0]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f967 : BadRow (markedRow ⟨1,2,2,3,4,5⟩ [1,1] [3,2,0,0]) :=
  row_of_forall (discharge bank [12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f968 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f969 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f970 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f971 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f972 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f973 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f974 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f975 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f976 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f977 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f978 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f979 : BadRow (markedRow ⟨1,2,0,3,5,3⟩ [0,0] [0,1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
