import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2000 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2001 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2002 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2003 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2004 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2005 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,1,2,0,2]) :=
  row_of_forall (discharge bank [12,1,7,1,7,1] (hard := []) (by decide +kernel) .nil)

theorem g2006 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2007 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2008 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2009 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,1,2,2,0]) :=
  row_of_forall (discharge bank [8,1,7] (hard := []) (by decide +kernel) .nil)

theorem g2010 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2011 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2012 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2013 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2014 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2015 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2016 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2017 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,0,0,3]) :=
  row_of_forall (discharge bank [9,9,9,9,9,9,9,9,9,9,9,9,9,9] (hard := []) (by decide +kernel) .nil)

theorem g2018 : BadRow (SharedShell.row 5 6 false 6 2 5 [1,2,0,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2019 : BadRow (SharedShell.row 5 6 true 6 2 5 [1,2,0,1,2]) :=
  row_of_forall (discharge bank [1,4,24,3,1,1,7,7,7] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
