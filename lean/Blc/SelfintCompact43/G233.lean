import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3728 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,2,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3729 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,2,1,0,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3730 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,2,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3731 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,2,1,1,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3732 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3733 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,2,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3734 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3735 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,3,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3736 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3737 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,3,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3738 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3739 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,3,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3740 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3741 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,4,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3742 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [4,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3743 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [4,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
