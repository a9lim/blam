import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f910 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [1,0,0] [2,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f911 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [1,0,0] [2,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f912 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [1,0,0] [2,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f913 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [1,0,0] [2,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f914 : BadRow (markedRow ⟨1,3,1,2,4,5⟩ [1,0,0] [2,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f915 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [0,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f916 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [0,1,1,2]) :=
  row_of_forall (discharge bank [7,7,7] (hard := []) (by decide +kernel) .nil)

theorem f917 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [0,1,2,1]) :=
  row_of_forall (discharge bank [8,7,7] (hard := []) (by decide +kernel) .nil)

theorem f918 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f919 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [7,8,7] (hard := []) (by decide +kernel) .nil)

theorem f920 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f921 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,1] (hard := []) (by decide +kernel) .nil)

theorem f922 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [8,7,8,7,7,3] (hard := []) (by decide +kernel) .nil)

theorem f923 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [0,1,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [7,7,7,7,7,1,1] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
