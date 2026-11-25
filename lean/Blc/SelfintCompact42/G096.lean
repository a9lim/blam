import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g1920 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,2,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1921 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,2,1,0]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,1,1,12] (hard := []) (by decide +kernel) .nil)

theorem g1922 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1923 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,3,3,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1924 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1925 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,4,0,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1926 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1927 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,4,0,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1928 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1929 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,4,0,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1930 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1931 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,4,1,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1932 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1933 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,4,1,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1934 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1935 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,4,2,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1936 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1937 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,5,0,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1938 : BadRow (SharedShell.row 5 6 false 6 2 5 [0,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g1939 : BadRow (SharedShell.row 5 6 true 6 2 5 [0,5,0,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
