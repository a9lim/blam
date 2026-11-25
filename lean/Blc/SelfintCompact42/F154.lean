import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2156 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2157 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2158 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2159 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2160 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [1,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2161 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2162 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [1,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2163 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2164 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [1,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2165 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [1,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2166 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [2,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2167 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [2,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2168 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [2,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2169 : BadRow (markedRow ⟨2,2,3,3,4,3⟩ [2,1] [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
