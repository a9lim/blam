import Blc.SelfintCompact41.Base
namespace Blc.SelfintSingleObject.Compact41
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1920 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1921 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,0,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1922 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,21,12,12,12,1,12,12,12,12,12,21,12,12,12,12,12,1,12,1,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1923 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,0,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1924 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1925 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,1,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1926 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1927 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,1,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1928 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1929 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,1,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1930 : BadRow (SharedShell.row 6 3 false 3 4 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,1,12,12,12,3,12,12,12,12,21,12,12,12,1,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1931 : BadRow (SharedShell.row 6 3 true 3 4 5 [1,2,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1932 : BadRow (SharedShell.row 6 3 false 3 4 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,1,12,12,12,12,12,12,66,12,12,12,1,12,12,12,2,12,12,12,12,66,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1933 : BadRow (SharedShell.row 6 3 true 3 4 5 [2,0,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1934 : BadRow (SharedShell.row 6 3 false 3 4 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,12,12,12,12,12,12,12,12,12,12,12,12,12,66,12,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1935 : BadRow (SharedShell.row 6 3 true 3 4 5 [2,0,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1936 : BadRow (SharedShell.row 6 3 false 3 4 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,1,12,12,12,1,12,12,12,12,12,1,12,12,12,12,12,2,12,20,12,12,12,12,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1937 : BadRow (SharedShell.row 6 3 true 3 4 5 [2,0,1,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1938 : BadRow (SharedShell.row 6 3 false 3 4 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,1,12,12,12,1,12,12,12,12,1,12,12,12,2,12,12,12,12,12,12,12,12] (hard := []) (by decide +kernel) .nil)

theorem g1939 : BadRow (SharedShell.row 6 3 true 3 4 5 [2,1,0,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact41
