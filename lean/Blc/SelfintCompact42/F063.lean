import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f882 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,0,1] [2,2,1,0]) :=
  row_of_forall (discharge bank [54,54,12,1,43,3] (hard := []) (by decide +kernel) .nil)

theorem f883 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [0,1,2,2]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f884 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f885 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f886 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [1,1,18,12,41] (hard := []) (by decide +kernel) .nil)

theorem f887 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f888 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f889 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [1,2,0,2]) :=
  row_of_forall (discharge bank [1,1,12,39,12] (hard := []) (by decide +kernel) .nil)

theorem f890 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f891 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [1,2,2,0]) :=
  row_of_forall (discharge bank [1,39,12] (hard := []) (by decide +kernel) .nil)

theorem f892 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [2,0,1,2]) :=
  row_of_forall (discharge bank [19,19,1,1,11] (hard := []) (by decide +kernel) .nil)

theorem f893 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [2,0,2,1]) :=
  row_of_forall (discharge bank [19,19,39,1,12] (hard := []) (by decide +kernel) .nil)

theorem f894 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [19,19,1,1,14] (hard := []) (by decide +kernel) .nil)

theorem f895 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [0,1,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
