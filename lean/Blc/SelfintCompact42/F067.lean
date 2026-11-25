import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f938 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f939 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f940 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f941 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f942 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f943 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f944 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f945 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [1,2,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f946 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [1,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f947 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [2,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f948 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [2,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f949 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [2,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f950 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f951 : BadRow (markedRow ⟨1,3,2,2,4,4⟩ [1,0,1] [2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
