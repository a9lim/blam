import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g7872 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 6 [3,0,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7873 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 6 [3,0,0,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7874 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7875 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7876 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7877 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7878 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7879 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7880 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7881 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7882 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7883 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7884 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7885 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [1,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7886 : BadRow (Grammar43.fiveRow 8 5 3 false 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7887 : BadRow (Grammar43.fiveRow 8 5 3 true 3 3 3 [1,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
