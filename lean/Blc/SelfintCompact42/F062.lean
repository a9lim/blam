import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f868 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [0,2,1,2]) :=
  row_of_forall (discharge bank [12,12,11,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f869 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [0,2,2,1]) :=
  row_of_forall (discharge bank [26,12,11,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f870 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,1,1,1,19,19,1,1,11] (hard := []) (by decide +kernel) .nil)

theorem f871 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f872 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f873 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [1,2,0,2]) :=
  row_of_forall (discharge bank [1,1,12,1,1,19,19,1,23,14] (hard := []) (by decide +kernel) .nil)

theorem f874 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f875 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [1,2,2,0]) :=
  row_of_forall (discharge bank [48,1,1,19,19,23] (hard := []) (by decide +kernel) .nil)

theorem f876 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [2,0,1,2]) :=
  row_of_forall (discharge bank [54,54,12,12,11,1,1,23,12,12] (hard := []) (by decide +kernel) .nil)

theorem f877 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [2,0,2,1]) :=
  row_of_forall (discharge bank [54,54,17,12,12,1,1,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem f878 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [2,1,0,2]) :=
  row_of_forall (discharge bank [54,54,12,12,60,1,1,12,12,11] (hard := []) (by decide +kernel) .nil)

theorem f879 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f880 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [2,1,2,0]) :=
  row_of_forall (discharge bank [54,54,12,39,25,17] (hard := []) (by decide +kernel) .nil)

theorem f881 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [2,2,0,1]) :=
  row_of_forall (discharge bank [54,54,12,30,11,1,1,3,39,3] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
