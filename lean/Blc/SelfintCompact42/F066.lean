import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f924 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f925 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [8,7,8,1] (hard := []) (by decide +kernel) .nil)

theorem f926 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [8,8,7,8,7,24,3] (hard := []) (by decide +kernel) .nil)

theorem f927 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [8,8,7,1] (hard := []) (by decide +kernel) .nil)

theorem f928 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f929 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f930 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f931 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [5,5,5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f932 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [5,5,5] (hard := []) (by decide +kernel) .nil)

theorem f933 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f934 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f935 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f936 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f937 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
