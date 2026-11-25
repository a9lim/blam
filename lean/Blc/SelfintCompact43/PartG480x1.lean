import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

private abbrev bg7686 (i : Nat) := Split43.five 8 i 8 5 3 false 3 2 4 [2,0,1,0]

private theorem g7686s0 : BadRow (bg7686 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7686s1 : BadRow (bg7686 1) :=
  row_of_forall (discharge bank [7,17,15,37,5,6,6,7,15,7,30,7,17,1,17,9,11,36,7,17,15,37,5,6,6,7,15,7,30,7,17,1,17,11,13,36] (hard := []) (by decide +kernel) .nil)

private theorem g7686s2 : BadRow (bg7686 2) :=
  row_of_forall (discharge bank [7,9,15,31,5,6,6,7,15,17,30,7,9,15,24,13,11,36] (hard := []) (by decide +kernel) .nil)

private theorem g7686s3 : BadRow (bg7686 3) :=
  row_of_forall (discharge bank [7,17,15,31,5,6,6,7,15,7,30,7,17,1,17,13,13,36,7,9,15,44,5,6,6,7,15,17,30,7,9,15,24,61,24,36] (hard := []) (by decide +kernel) .nil)

private theorem g7686s4 : BadRow (bg7686 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7686s5 : BadRow (bg7686 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7686s6 : BadRow (bg7686 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7686s7 : BadRow (bg7686 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7686 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [2,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 false 3 2 4 [2,0,1,0] (.cons (g7686s0) (.cons (g7686s1) (.cons (g7686s2) (.cons (g7686s3) (.cons (g7686s4) (.cons (g7686s5) (.cons (g7686s6) (.cons (g7686s7) .nil))))))))

private abbrev bg7687 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 4 [2,0,1,0]

private theorem g7687s0 : BadRow (bg7687 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7687s1 : BadRow (bg7687 1) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,7,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,7,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7687s2 : BadRow (bg7687 2) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,7,39,9,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7687s3 : BadRow (bg7687 3) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,7,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,7,39,9,30,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7687s4 : BadRow (bg7687 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7687s5 : BadRow (bg7687 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7687s6 : BadRow (bg7687 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7687s7 : BadRow (bg7687 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7687 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [2,0,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 4 [2,0,1,0] (.cons (g7687s0) (.cons (g7687s1) (.cons (g7687s2) (.cons (g7687s3) (.cons (g7687s4) (.cons (g7687s5) (.cons (g7687s6) (.cons (g7687s7) .nil))))))))

theorem g7688 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [2,1,0,0]) :=
  row_of_forall (discharge bank [7,17,15,11,5,6,6,7,15,7,17,7,17,9,17,11,11,36,7,17,15,11,5,6,6,7,15,7,17,7,17,14,17,11,13,36,7,17,15,13,5,6,6,7,15,7,17,7,17,9,17,13,13,36] (hard := []) (by decide +kernel) .nil)

private abbrev bg7689 (i : Nat) := Split43.five 8 i 8 5 3 true 3 2 4 [2,1,0,0]

private theorem g7689s0 : BadRow (bg7689 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7689s1 : BadRow (bg7689 1) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,7,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,41,41,41,1,1,1,1,7,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7689s2 : BadRow (bg7689 2) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7689s3 : BadRow (bg7689 3) :=
  row_of_forall (discharge bank [4,41,41,41,1,1,1,1,7,39,17,25,1,1,4,41,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private theorem g7689s4 : BadRow (bg7689 4) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7689s5 : BadRow (bg7689 5) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7689s6 : BadRow (bg7689 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem g7689s7 : BadRow (bg7689 7) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7689 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [2,1,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 3 true 3 2 4 [2,1,0,0] (.cons (g7689s0) (.cons (g7689s1) (.cons (g7689s2) (.cons (g7689s3) (.cons (g7689s4) (.cons (g7689s5) (.cons (g7689s6) (.cons (g7689s7) .nil))))))))

theorem g7690 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7691 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 4 [3,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7692 : BadRow (Grammar43.fiveRow 8 5 3 false 3 2 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g7693 : BadRow (Grammar43.fiveRow 8 5 3 true 3 2 5 [0,0,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)


end Blc.SelfintSingleObject.Compact43
