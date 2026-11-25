import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f966 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f967 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f968 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f969 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f970 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f971 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,1,0] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f972 : BadRow (markedRow ⟨1,3,3,2,4,3⟩ [1,1,1] [0,0,1,2]) :=
  row_of_forall (discharge bank [7,7,7,7,34,34,11,12,12,34] (hard := []) (by decide +kernel) .nil)

theorem f973 : BadRow (markedRow ⟨1,3,3,2,4,3⟩ [1,1,1] [0,0,2,1]) :=
  row_of_forall (discharge bank [7,7,7,7,34,11,12,12,11,34] (hard := []) (by decide +kernel) .nil)

theorem f974 : BadRow (markedRow ⟨1,3,3,2,4,3⟩ [1,1,1] [0,1,0,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,11,34,8,16,34,11,11,16,27,12,35] (hard := []) (by decide +kernel) .nil)

theorem f975 : BadRow (markedRow ⟨1,3,3,2,4,3⟩ [1,1,1] [0,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f976 : BadRow (markedRow ⟨1,3,3,2,4,3⟩ [1,1,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [7,7,7,7,12,8,11,34,23,12] (hard := []) (by decide +kernel) .nil)

theorem f977 : BadRow (markedRow ⟨1,3,3,2,4,3⟩ [1,1,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [7,7,7,7,7,7,7,34,34,8,16,11,11,11,23,25,34,34] (hard := []) (by decide +kernel) .nil)

theorem f978 : BadRow (markedRow ⟨1,3,3,2,4,3⟩ [1,1,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [7,7,7,7,34,8,34,34,23,34] (hard := []) (by decide +kernel) .nil)

theorem f979 : BadRow (markedRow ⟨1,3,3,2,4,3⟩ [1,1,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,5,5,14,14,11] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
