import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2030 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [2,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2031 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [3,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2032 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [3,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2033 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [3,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2034 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [3,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2035 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [3,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2036 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [3,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2037 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,0,1,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2038 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,0,2,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2039 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,0,3,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2040 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,1,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9,29,29,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2041 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,1,1,2]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f2042 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,1,2,1]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f2043 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,1,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
