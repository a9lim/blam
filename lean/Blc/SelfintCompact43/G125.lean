import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem g2000 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2001 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2002 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2003 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2004 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2005 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2006 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2007 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2008 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2009 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2010 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2011 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2012 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2013 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2014 : BadRow (Grammar43.fiveRow 7 5 7 false 6 2 5 [1,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem g2015 : BadRow (Grammar43.fiveRow 7 5 7 true 6 2 5 [1,1,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
