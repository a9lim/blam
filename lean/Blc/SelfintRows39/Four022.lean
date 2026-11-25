import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701154355098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v701154355098 : ¬ MinimalInterpreter v701154355098 :=
  cost_cut false 2 (by decide)
private def v701154354666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v701154354666 : ¬ MinimalInterpreter v701154354666 :=
  cost_cut false 2 (by decide)
private def v701154352026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154352026 : ¬ MinimalInterpreter v701154352026 :=
  cost_cut false 2 (by decide)
private def v701154351594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v701154351594 : ¬ MinimalInterpreter v701154351594 :=
  cost_cut false 2 (by decide)
private def v701154350826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v701154350826 : ¬ MinimalInterpreter v701154350826 :=
  cost_cut false 2 (by decide)
private def v701154174874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154174874 : ¬ MinimalInterpreter v701154174874 :=
  cost_cut false 2 (by decide)
private def v701154174442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v701154174442 : ¬ MinimalInterpreter v701154174442 :=
  cost_cut false 2 (by decide)
private def v701154171802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v701154171802 : ¬ MinimalInterpreter v701154171802 :=
  cost_cut false 2 (by decide)
private def v701154126746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v701154126746 : ¬ MinimalInterpreter v701154126746 :=
  cost_cut false 2 (by decide)
private def v701154171370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0)))))))
private theorem no_v701154171370 : ¬ MinimalInterpreter v701154171370 :=
  cost_cut false 2 (by decide)
private def v701154170602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0)))))))
private theorem no_v701154170602 : ¬ MinimalInterpreter v701154170602 :=
  cost_cut false 2 (by decide)
private def v701154126314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v701154126314 : ¬ MinimalInterpreter v701154126314 :=
  cost_cut false 2 (by decide)
private def v701154125546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v701154125546 : ¬ MinimalInterpreter v701154125546 :=
  cost_cut false 2 (by decide)
private def v701154114282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v701154114282 : ¬ MinimalInterpreter v701154114282 :=
  cost_cut false 2 (by decide)
theorem row132 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,2,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,2,0,0] = [v701154355098,v701154354666,v701154352026,v701154351594,v701154350826,v701154174874,v701154174442,v701154171802,v701154126746,v701154171370,v701154170602,v701154126314,v701154125546,v701154114282] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154355098) (.cons (no_v701154354666) (.cons (no_v701154352026) (.cons (no_v701154351594) (.cons (no_v701154350826) (.cons (no_v701154174874) (.cons (no_v701154174442) (.cons (no_v701154171802) (.cons (no_v701154126746) (.cons (no_v701154171370) (.cons (no_v701154170602) (.cons (no_v701154126314) (.cons (no_v701154125546) (.cons (no_v701154114282) .nil))))))))))))))

theorem row133 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,1,0,0,1]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row134 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,1,0,1,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row135 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,1,1,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701154359706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0))))))))))
private theorem no_v701154359706 : ¬ MinimalInterpreter v701154359706 :=
  cost_cut false 2 (by decide)
private def v701154359658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0)))))))))
private theorem no_v701154359658 : ¬ MinimalInterpreter v701154359658 :=
  cost_cut false 2 (by decide)
private def v701154352794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154352794 : ¬ MinimalInterpreter v701154352794 :=
  cost_cut false 2 (by decide)
private def v701154352746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0))))))))
private theorem no_v701154352746 : ¬ MinimalInterpreter v701154352746 :=
  cost_cut false 2 (by decide)
private def v701154351018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0))))))))
private theorem no_v701154351018 : ¬ MinimalInterpreter v701154351018 :=
  cost_cut false 2 (by decide)
private def v701154179482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154179482 : ¬ MinimalInterpreter v701154179482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154179434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v701154179434 : ¬ MinimalInterpreter v701154179434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154172570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0))))))))
private theorem no_v701154172570 : ¬ MinimalInterpreter v701154172570 :=
  cost_cut false 2 (by decide)
private def v701154127514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v701154127514 : ¬ MinimalInterpreter v701154127514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154172522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0)))))))
private theorem no_v701154172522 : ¬ MinimalInterpreter v701154172522 :=
  cost_cut false 2 (by decide)
private def v701154170794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 0)))))))
private theorem no_v701154170794 : ¬ MinimalInterpreter v701154170794 :=
  cost_cut false 2 (by decide)
private def v701154127466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v701154127466 : ¬ MinimalInterpreter v701154127466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154125738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 0)))))))
private theorem no_v701154125738 : ¬ MinimalInterpreter v701154125738 :=
  cost_cut false 2 (by decide)
private def v701154114474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v701154114474 : ¬ MinimalInterpreter v701154114474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row136 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,2,0,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,2,0,0,0] = [v701154359706,v701154359658,v701154352794,v701154352746,v701154351018,v701154179482,v701154179434,v701154172570,v701154127514,v701154172522,v701154170794,v701154127466,v701154125738,v701154114474] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154359706) (.cons (no_v701154359658) (.cons (no_v701154352794) (.cons (no_v701154352746) (.cons (no_v701154351018) (.cons (no_v701154179482) (.cons (no_v701154179434) (.cons (no_v701154172570) (.cons (no_v701154127514) (.cons (no_v701154172522) (.cons (no_v701154170794) (.cons (no_v701154127466) (.cons (no_v701154125738) (.cons (no_v701154114474) .nil))))))))))))))

private def v701154407222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v701154407222 : ¬ MinimalInterpreter v701154407222 :=
  cost_cut false 2 (by decide)
private def v701154407126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v701154407126 : ¬ MinimalInterpreter v701154407126 :=
  cost_cut false 2 (by decide)
private def v701154405686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701154405686 : ¬ MinimalInterpreter v701154405686 :=
  cost_cut false 2 (by decide)
private def v701154405590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v701154405590 : ¬ MinimalInterpreter v701154405590 :=
  cost_cut false 2 (by decide)
private def v701154405206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v701154405206 : ¬ MinimalInterpreter v701154405206 :=
  cost_cut false 2 (by decide)
private def v701154186038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v701154186038 : ¬ MinimalInterpreter v701154186038 :=
  cost_cut false 2 (by decide)
private def v701154185942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v701154185942 : ¬ MinimalInterpreter v701154185942 :=
  cost_cut false 2 (by decide)
private def v701154184502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v701154184502 : ¬ MinimalInterpreter v701154184502 :=
  cost_cut false 2 (by decide)
private def v701154129206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v701154129206 : ¬ MinimalInterpreter v701154129206 :=
  cost_cut false 2 (by decide)
private def v701154184406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))))))
private theorem no_v701154184406 : ¬ MinimalInterpreter v701154184406 :=
  cost_cut false 2 (by decide)
private def v701154184022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))))))
private theorem no_v701154184022 : ¬ MinimalInterpreter v701154184022 :=
  cost_cut false 2 (by decide)
private def v701154129110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v701154129110 : ¬ MinimalInterpreter v701154129110 :=
  cost_cut false 2 (by decide)
private def v701154128726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v701154128726 : ¬ MinimalInterpreter v701154128726 :=
  cost_cut false 2 (by decide)
private def v701154114902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v701154114902 : ¬ MinimalInterpreter v701154114902 :=
  cost_cut false 2 (by decide)
theorem row137 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [2,0,0,0,1]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [2,0,0,0,1] = [v701154407222,v701154407126,v701154405686,v701154405590,v701154405206,v701154186038,v701154185942,v701154184502,v701154129206,v701154184406,v701154184022,v701154129110,v701154128726,v701154114902] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154407222) (.cons (no_v701154407126) (.cons (no_v701154405686) (.cons (no_v701154405590) (.cons (no_v701154405206) (.cons (no_v701154186038) (.cons (no_v701154185942) (.cons (no_v701154184502) (.cons (no_v701154129206) (.cons (no_v701154184406) (.cons (no_v701154184022) (.cons (no_v701154129110) (.cons (no_v701154128726) (.cons (no_v701154114902) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
