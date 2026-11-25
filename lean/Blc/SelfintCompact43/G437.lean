import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g6992 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [2,2,2,2,53,4,4,4,4,1,4,4,4,4,4,4,53,4,4,4,4,4,4,4,4,1,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,7,7,7,7,7,7,7,7,7,31,14,36,36,9,36,4,4,4,4,6,6,36,4,6] (hard := []) (by decide +kernel) .nil)

theorem g6993 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g6994 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,25,27,4,4,4,39,4,1,1,4,4,4,4,4,25,1,4,4,25,1,4,4,39,4,4,39,4,4,4,4,4,39,1,1,1,1,1,4,4,4,4,4,4,4,4,4,4,7,7,7,36,44,36,14,36,14,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6995 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg6996 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [1,0,3,0,1]

private theorem g6996s0 : BadRow (bg6996 0) :=
  row_of_forall (discharge bank [2,4] (hard := []) (by decide +kernel) .nil)

private theorem g6996s1 : BadRow (bg6996 1) :=
  row_of_forall (discharge bank [4,4,6,6] (hard := []) (by decide +kernel) .nil)

private theorem g6996s2 : BadRow (bg6996 2) :=
  row_of_forall (discharge bank [2,2,2,4,4,2,4,4,4,4,2,4,2,2,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6996s3 : BadRow (bg6996 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4,4,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6996s4 : BadRow (bg6996 4) :=
  row_of_forall (discharge bank [2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6996s5 : BadRow (bg6996 5) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6996s6 : BadRow (bg6996 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6996s7 : BadRow (bg6996 7) :=
  row_of_forall (discharge bank [4,4,15,15,15,15,15,15,15,7,30,1,7,9,9,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6996 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,3,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [1,0,3,0,1] (.cons (g6996s0) (.cons (g6996s1) (.cons (g6996s2) (.cons (g6996s3) (.cons (g6996s4) (.cons (g6996s5) (.cons (g6996s6) (.cons (g6996s7) .nil))))))))

theorem g6997 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private abbrev bg6998 (i : Nat) := Split43.five 8 i 7 6 5 false 5 4 5 [1,0,3,1,0]

private theorem g6998s0 : BadRow (bg6998 0) :=
  row_of_forall (discharge bank [2,4] (hard := []) (by decide +kernel) .nil)

private theorem g6998s1 : BadRow (bg6998 1) :=
  row_of_forall (discharge bank [4,4,4,4,4,2,4,4,4,4,6] (hard := []) (by decide +kernel) .nil)

private theorem g6998s2 : BadRow (bg6998 2) :=
  row_of_forall (discharge bank [2,2,2,2,2,4,4,4,4,4,4,4,4,4,14,11] (hard := []) (by decide +kernel) .nil)

private theorem g6998s3 : BadRow (bg6998 3) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6998s4 : BadRow (bg6998 4) :=
  row_of_forall (discharge bank [2,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6998s5 : BadRow (bg6998 5) :=
  row_of_forall (discharge bank [2,2,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6998s6 : BadRow (bg6998 6) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,4,4] (hard := []) (by decide +kernel) .nil)

private theorem g6998s7 : BadRow (bg6998 7) :=
  row_of_forall (discharge bank [4,4,4,4,15,15,15,15,1,7,1,7,9,9,4,4] (hard := []) (by decide +kernel) .nil)

theorem g6998 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,3,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 5 false 5 4 5 [1,0,3,1,0] (.cons (g6998s0) (.cons (g6998s1) (.cons (g6998s2) (.cons (g6998s3) (.cons (g6998s4) (.cons (g6998s5) (.cons (g6998s6) (.cons (g6998s7) .nil))))))))

theorem g6999 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7000 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4] (hard := []) (by decide +kernel) .nil)

theorem g7001 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,0,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7002 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,4,2,4,4,4,4,2,4,2,2,4,4,4,1,1,4,4,4,4,4,4,4,4,4,2,2,1,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,4,4,4,4,4,4,4,4,4,15,15,15,15,15,7,7,1,7,1,7,7,37,1,1,1,38,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem g7003 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7004 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,1,4,4,4,4,4,1,1,4,4,4,4,4,4,6,4,4,4,4,4,4,4,4,4,7,7,7,7,7,1,7,7,7,37,1,1,1,7,36,4,14,6,14] (hard := []) (by decide +kernel) .nil)

theorem g7005 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7006 : BadRow (Grammar43.fiveRow 7 6 5 false 5 4 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [2,2,2,2,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,4,1,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,74,4,4,4,4,7,7,7,7,7,36,7,7,7,7,7,38,1,38,38,1,1,7,36,4,36,6,1,37,4,4,6,6,47] (hard := []) (by decide +kernel) .nil)

theorem g7007 : BadRow (Grammar43.fiveRow 7 6 5 true 5 4 5 [1,1,0,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
