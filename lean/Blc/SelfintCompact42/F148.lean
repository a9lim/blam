import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2072 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2073 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2074 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2075 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2076 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2077 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2078 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2079 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2080 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2081 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2082 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2083 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2084 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2085 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [1,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
