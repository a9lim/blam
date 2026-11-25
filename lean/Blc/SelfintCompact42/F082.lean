import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f1148 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1149 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1150 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1151 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1152 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1153 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1154 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1155 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1156 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1157 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1158 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1159 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1160 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1161 : BadRow (markedRow ⟨1,2,0,3,5,4⟩ [0,0] [0,1,1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
