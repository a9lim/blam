import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2044 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,2,0,2]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2045 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,9,9,9,9,9,9,9,9,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2046 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,2,2,0]) :=
  row_of_forall (discharge bank [9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2047 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,3,0,1]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,29,29] (hard := []) (by decide +kernel) .nil)

theorem f2048 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [0,3,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,29] (hard := []) (by decide +kernel) .nil)

theorem f2049 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2050 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2051 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2052 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,0,3,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2053 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,1,0,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2054 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2055 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,1,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2056 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,2,0,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem f2057 : BadRow (markedRow ⟨2,2,2,3,4,4⟩ [0,2] [1,2,1,0]) :=
  row_of_forall (discharge bank [2,2,2,2,9,9] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
