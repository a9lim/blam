import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g896 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g897 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,0,1,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g898 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g899 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,0,2,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g900 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g901 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,0,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g902 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g903 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,0,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g904 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g905 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,0,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g906 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g907 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,1,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g908 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g909 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,1,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g910 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g911 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
