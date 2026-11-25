import Blc.SelfintCompact42.Base
namespace Blc.SelfintSingleObject.Compact42
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2002 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,2,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2003 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2004 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2005 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,2,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2006 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,3,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2007 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,3,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2008 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [0,3,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2009 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,0,1,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2010 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,0,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2011 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,0,3,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2012 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2013 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2014 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2015 : BadRow (markedRow ⟨2,2,1,3,4,5⟩ [1,0] [1,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact42
