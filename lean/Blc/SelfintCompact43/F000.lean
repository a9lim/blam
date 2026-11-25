import Blc.SelfintCompact43.Base
import Blc.SelfintSplit43
namespace Blc.SelfintSingleObject.Compact43
open Term SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false

theorem f0 : BadRow (Grammar43.fourRow ⟨0,2,0,2,5,9⟩ [0,0] [1,2,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f1 : BadRow (Grammar43.fourRow ⟨0,2,0,2,5,9⟩ [0,0] [2,1,2,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f2 : BadRow (Grammar43.fourRow ⟨0,2,0,2,5,9⟩ [0,0] [2,2,1,2,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f3 : BadRow (Grammar43.fourRow ⟨0,2,0,2,5,9⟩ [0,0] [2,2,2,1,2]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f4 : BadRow (Grammar43.fourRow ⟨0,2,0,2,5,9⟩ [0,0] [2,2,2,2,1]) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

theorem f5 (hard : BadRow [Floor43.e2423217379822,Floor43.e2423217377006,Floor43.e2423217370862]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,0,0,1,2,2]) :=
  row_of_forall (discharge bank [14,14,14,14,47,14,14,47,14,48,14,14,14,14,47,47,48,14,14,14,47,14,47,14,14,47,14,14,47,47,48,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,36,36,0,0,0,36,36,36] (hard := [Floor43.e2423217379822,Floor43.e2423217377006,Floor43.e2423217370862]) (by decide +kernel) hard)

theorem f6 (hard : BadRow [Floor43.e2423217380590,Floor43.e2423217377134,Floor43.e2423217370990]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,0,0,2,1,2]) :=
  row_of_forall (discharge bank [14,14,14,47,14,14,14,47,47,14,14,14,14,47,47,14,47,47,14,14,47,47,14,14,14,47,47,47,47,14,47,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,36,36,0,0,0,36,36,36] (hard := [Floor43.e2423217380590,Floor43.e2423217377134,Floor43.e2423217370990]) (by decide +kernel) hard)

theorem f7 (hard : BadRow [Floor43.e2422414817142,Floor43.e2422406470902,Floor43.e2423217380598,Floor43.e2423217377142,Floor43.e2423217370998]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,0,0,2,2,1]) :=
  row_of_forall (discharge bank [47,48,48,47,47,48,0,14,47,47,14,14,14,47,47,47,48,0,48,48,47,47,47,14,14,47,47,47,47,14,47,48,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,36,36,0,0,0,36,36,36] (hard := [Floor43.e2422414817142,Floor43.e2422406470902,Floor43.e2423217380598,Floor43.e2423217377142,Floor43.e2423217370998]) (by decide +kernel) hard)

private abbrev bf8 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,0,1,0,2,2]

private theorem f8s0 : BadRow (bf8 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f8s1 : BadRow (bf8 1) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f8s2 : BadRow (bf8 2) :=
  row_of_forall (discharge bank [14,14,14,14,14] (hard := []) (by decide +kernel) .nil)

private theorem f8s3 (h : BadRow [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886]) : BadRow (bf8 3) :=
  row_of_forall (discharge bank [14,14,48,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,36,36,36,36,0,0,0,0,0] (hard := [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886]) (by decide +kernel) h)

private theorem f8s4 : BadRow (bf8 4) :=
  row_of_forall (discharge bank [14,14,47,14,47] (hard := []) (by decide +kernel) .nil)

private theorem f8s5 : BadRow (bf8 5) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,1,47,1,1,47,1,47] (hard := []) (by decide +kernel) .nil)

private theorem f8s6 : BadRow (bf8 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f8s7 : BadRow (bf8 7) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f8 (hard : BadRow [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,0,1,0,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,0,1,0,2,2] (.cons (f8s0) (.cons (f8s1) (.cons (f8s2) (.cons (f8s3 (.cons (hard.get (by decide : Floor43.e2422407010030 ∈ [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886])) (.cons (hard.get (by decide : Floor43.e2423217428974 ∈ [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886])) (.cons (hard.get (by decide : Floor43.e2423217428206 ∈ [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886])) (.cons (hard.get (by decide : Floor43.e2423217383918 ∈ [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886])) (.cons (hard.get (by decide : Floor43.e2423217383150 ∈ [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886])) (.cons (hard.get (by decide : Floor43.e2423217371886 ∈ [Floor43.e2422407010030,Floor43.e2423217428974,Floor43.e2423217428206,Floor43.e2423217383918,Floor43.e2423217383150,Floor43.e2423217371886])) .nil))))))) (.cons (f8s4) (.cons (f8s5) (.cons (f8s6) (.cons (f8s7) .nil))))))))

theorem f9 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,0,1,1,1,2]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f10 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,0,1,1,2,1]) :=
  row_of_forall (discharge bank [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

private abbrev bf11 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,5⟩ [0,0] [0,0,1,2,0,2]

private theorem f11s0 : BadRow (bf11 0) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f11s1 : BadRow (bf11 1) :=
  row_of_forall (discharge bank [1,25,1,1,1,1,25,1,1,1,1,1,1,1,36,36,36,36,36] (hard := []) (by decide +kernel) .nil)

private theorem f11s2 : BadRow (bf11 2) :=
  row_of_forall (discharge bank [14,25,14,14,14] (hard := []) (by decide +kernel) .nil)

private theorem f11s3 (h : BadRow [Floor43.e2423217430126,Floor43.e2423217428398,Floor43.e2423217383342]) : BadRow (bf11 3) :=
  row_of_forall (discharge bank [14,25,47,25,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,36,36,36,36,0,0,36,0,36] (hard := [Floor43.e2423217430126,Floor43.e2423217428398,Floor43.e2423217383342]) (by decide +kernel) h)

private theorem f11s4 (h : BadRow [Floor43.e2422406475374]) : BadRow (bf11 4) :=
  row_of_forall (discharge bank [14,14,47,14,0] (hard := [Floor43.e2422406475374]) (by decide +kernel) h)

private theorem f11s5 : BadRow (bf11 5) :=
  row_of_forall (discharge bank [1,1,1,1,1,14,14,1,47,1,1,47,1,48] (hard := []) (by decide +kernel) .nil)

private theorem f11s6 : BadRow (bf11 6) :=
  row_of_forall (discharge bank [] (hard := []) (by decide +kernel) .nil)

private theorem f11s7 : BadRow (bf11 7) :=
  row_of_forall (discharge bank [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] (hard := []) (by decide +kernel) .nil)

theorem f11 (hard : BadRow [Floor43.e2422406475374,Floor43.e2423217430126,Floor43.e2423217428398,Floor43.e2423217383342]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,5⟩ [0,0] [0,0,1,2,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,5⟩ [0,0] [0,0,1,2,0,2] (.cons (f11s0) (.cons (f11s1) (.cons (f11s2) (.cons (f11s3 (.cons (hard.get (by decide : Floor43.e2423217430126 ∈ [Floor43.e2422406475374,Floor43.e2423217430126,Floor43.e2423217428398,Floor43.e2423217383342])) (.cons (hard.get (by decide : Floor43.e2423217428398 ∈ [Floor43.e2422406475374,Floor43.e2423217430126,Floor43.e2423217428398,Floor43.e2423217383342])) (.cons (hard.get (by decide : Floor43.e2423217383342 ∈ [Floor43.e2422406475374,Floor43.e2423217430126,Floor43.e2423217428398,Floor43.e2423217383342])) .nil)))) (.cons (f11s4 (.cons (hard.get (by decide : Floor43.e2422406475374 ∈ [Floor43.e2422406475374,Floor43.e2423217430126,Floor43.e2423217428398,Floor43.e2423217383342])) .nil)) (.cons (f11s5) (.cons (f11s6) (.cons (f11s7) .nil))))))))

end Blc.SelfintSingleObject.Compact43
