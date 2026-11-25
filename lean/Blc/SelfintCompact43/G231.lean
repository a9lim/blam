import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g3696 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3697 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3698 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3699 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3700 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3701 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3702 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3703 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3704 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3705 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,0,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3706 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3707 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,0,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g3708 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3709 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,0,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3710 : BadRow (Grammar43.fiveRow 7 5 7 false 7 2 5 [3,1,1,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g3711 : BadRow (Grammar43.fiveRow 7 5 7 true 7 2 5 [3,1,1,0,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
