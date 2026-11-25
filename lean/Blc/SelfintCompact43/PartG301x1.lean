import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg4821 (i : Nat) := Split43.five 8 i 7 6 5 true 3 2 4 [0,2,1,0]

private theorem g4821s0 : BadRow (bg4821 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4821s1 : BadRow (bg4821 1) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,3,26,14,1,1,1,2,2,11,6,24,12,1,1,1,4,26,5,1,1,2,2,9,4,1,16,1,1,1,1,2,2] (hard := []) (by decide +kernel) .nil)

private theorem g4821s2 : BadRow (bg4821 2) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4821s3 : BadRow (bg4821 3) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4821s4 : BadRow (bg4821 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4821s5 : BadRow (bg4821 5) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,15,4,1,7,41,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g4821s6 : BadRow (bg4821 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g4821s7 : BadRow (bg4821 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4821 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,2,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 true 3 2 4 [0,2,1,0] (.cons (g4821s0) (.cons (g4821s1) (.cons (g4821s2) (.cons (g4821s3) (.cons (g4821s4) (.cons (g4821s5) (.cons (g4821s6) (.cons (g4821s7) .nil))))))))

theorem g4822 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4823 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [0,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4824 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4825 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [1,0,0,2]) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4826 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4827 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [1,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4828 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4,5,4,4,4,4,5,4,4] (hard := []) (by decide +kernel) .nil)

theorem g4829 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [1,0,2,0]) :=
  row_of_forall (discharge bank [5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1,5,41,1,1,4,4,4,5,4,1,6,41,1,1] (hard := []) (by decide +kernel) .nil)

theorem g4830 : BadRow (Grammar43.fiveRow 7 6 5 false 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g4831 : BadRow (Grammar43.fiveRow 7 6 5 true 3 2 4 [1,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
