import Blc.SelfintCompact43.Base
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f2004 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,0,4,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2005 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,1,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2006 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,1,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2007 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,1,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2008 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,1,3,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2009 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,2,0,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2010 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,2,1,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2011 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,2,2,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2012 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,3,0,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2013 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,3,1,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2014 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [3,4,0,0]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2015 : BadRow (Grammar43.fourRow ⟨1,2,0,4,4,7⟩ [0,0] [4,0,0,3]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

end Blc.SelfintSingleObject.Compact43
