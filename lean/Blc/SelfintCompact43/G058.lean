import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g928 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g929 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g930 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g931 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,4,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g932 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g933 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,4,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g934 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g935 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,0,5,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g936 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g937 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,0,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g938 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g939 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g940 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g941 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g942 : BadRow (Grammar43.fiveRow 7 5 7 false 5 2 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g943 : BadRow (Grammar43.fiveRow 7 5 7 true 5 2 5 [0,1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
