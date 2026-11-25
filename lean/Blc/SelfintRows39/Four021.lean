import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row126 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [0,3,0,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [0,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701154354798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v701154354798 : ¬ MinimalInterpreter v701154354798 :=
  cost_cut false 2 (by decide)
private def v701154354606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v701154354606 : ¬ MinimalInterpreter v701154354606 :=
  cost_cut false 2 (by decide)
private def v701154351726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v701154351726 : ¬ MinimalInterpreter v701154351726 :=
  cost_cut false 2 (by decide)
private def v701154351534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v701154351534 : ¬ MinimalInterpreter v701154351534 :=
  cost_cut false 2 (by decide)
private def v701154350766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v701154350766 : ¬ MinimalInterpreter v701154350766 :=
  cost_cut false 2 (by decide)
private def v701154174574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v701154174574 : ¬ MinimalInterpreter v701154174574 :=
  cost_cut false 2 (by decide)
private def v701154174382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v701154174382 : ¬ MinimalInterpreter v701154174382 :=
  cost_cut false 2 (by decide)
private def v701154171502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))))))))
private theorem no_v701154171502 : ¬ MinimalInterpreter v701154171502 :=
  cost_cut false 2 (by decide)
private def v701154126446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v701154126446 : ¬ MinimalInterpreter v701154126446 :=
  cost_cut false 2 (by decide)
private def v701154171310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 2)))))))
private theorem no_v701154171310 : ¬ MinimalInterpreter v701154171310 :=
  cost_cut false 2 (by decide)
private def v701154170542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 2)))))))
private theorem no_v701154170542 : ¬ MinimalInterpreter v701154170542 :=
  cost_cut false 2 (by decide)
private def v701154126254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v701154126254 : ¬ MinimalInterpreter v701154126254 :=
  cost_cut false 2 (by decide)
private def v701154125486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 2)))))))
private theorem no_v701154125486 : ¬ MinimalInterpreter v701154125486 :=
  cost_cut false 2 (by decide)
private def v701154114222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v701154114222 : ¬ MinimalInterpreter v701154114222 :=
  cost_cut false 2 (by decide)
theorem row127 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,0,0,2]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,0,0,2] = [v701154354798,v701154354606,v701154351726,v701154351534,v701154350766,v701154174574,v701154174382,v701154171502,v701154126446,v701154171310,v701154170542,v701154126254,v701154125486,v701154114222] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154354798) (.cons (no_v701154354606) (.cons (no_v701154351726) (.cons (no_v701154351534) (.cons (no_v701154350766) (.cons (no_v701154174574) (.cons (no_v701154174382) (.cons (no_v701154171502) (.cons (no_v701154126446) (.cons (no_v701154171310) (.cons (no_v701154170542) (.cons (no_v701154126254) (.cons (no_v701154125486) (.cons (no_v701154114222) .nil))))))))))))))

theorem row128 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,0,1,1]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701154354810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v701154354810 : ¬ MinimalInterpreter v701154354810 :=
  cost_cut false 2 (by decide)
private def v701154354618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v701154354618 : ¬ MinimalInterpreter v701154354618 :=
  cost_cut false 2 (by decide)
private def v701154351738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v701154351738 : ¬ MinimalInterpreter v701154351738 :=
  cost_cut false 2 (by decide)
private def v701154351546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v701154351546 : ¬ MinimalInterpreter v701154351546 :=
  cost_cut false 2 (by decide)
private def v701154350778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v701154350778 : ¬ MinimalInterpreter v701154350778 :=
  cost_cut false 2 (by decide)
private def v701154174586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v701154174586 : ¬ MinimalInterpreter v701154174586 :=
  cost_cut false 2 (by decide)
private def v701154174394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v701154174394 : ¬ MinimalInterpreter v701154174394 :=
  cost_cut false 2 (by decide)
private def v701154171514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v701154171514 : ¬ MinimalInterpreter v701154171514 :=
  cost_cut false 2 (by decide)
private def v701154126458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v701154126458 : ¬ MinimalInterpreter v701154126458 :=
  cost_cut false 2 (by decide)
private def v701154171322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0)))))))
private theorem no_v701154171322 : ¬ MinimalInterpreter v701154171322 :=
  cost_cut false 2 (by decide)
private def v701154170554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)))))))
private theorem no_v701154170554 : ¬ MinimalInterpreter v701154170554 :=
  cost_cut false 2 (by decide)
private def v701154126266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v701154126266 : ¬ MinimalInterpreter v701154126266 :=
  cost_cut false 2 (by decide)
private def v701154125498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 0)))))))
private theorem no_v701154125498 : ¬ MinimalInterpreter v701154125498 :=
  cost_cut false 2 (by decide)
private def v701154114234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v701154114234 : ¬ MinimalInterpreter v701154114234 :=
  cost_cut false 2 (by decide)
theorem row129 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,0,2,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,0,2,0] = [v701154354810,v701154354618,v701154351738,v701154351546,v701154350778,v701154174586,v701154174394,v701154171514,v701154126458,v701154171322,v701154170554,v701154126266,v701154125498,v701154114234] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154354810) (.cons (no_v701154354618) (.cons (no_v701154351738) (.cons (no_v701154351546) (.cons (no_v701154350778) (.cons (no_v701154174586) (.cons (no_v701154174394) (.cons (no_v701154171514) (.cons (no_v701154126458) (.cons (no_v701154171322) (.cons (no_v701154170554) (.cons (no_v701154126266) (.cons (no_v701154125498) (.cons (no_v701154114234) .nil))))))))))))))

theorem row130 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,1,0,1]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row131 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,1,1,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [1,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
