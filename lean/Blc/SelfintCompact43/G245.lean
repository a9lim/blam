import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3920 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3921 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,2,3,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3922 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3923 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,2,4,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3924 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3925 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,2,5,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3926 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3927 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,3,0,4]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3928 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3929 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,3,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3930 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3931 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,3,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3932 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3933 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,3,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3934 : BadRow (Grammar43.fiveRow 7 5 7 false 7 3 4 [0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3935 : BadRow (Grammar43.fiveRow 7 5 7 true 7 3 4 [0,3,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
