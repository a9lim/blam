import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308710298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308710298 : ¬ MinimalInterpreter v1402308710298 :=
  chain_cut false 2 (by decide)

private def v1402308709354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v1402308709354 : ¬ MinimalInterpreter v1402308709354 :=
  chain_cut false 2 (by decide)

private def v1402308704154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308704154 : ¬ MinimalInterpreter v1402308704154 :=
  chain_cut false 2 (by decide)

private def v1402308703210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 0))))))))
private theorem no_v1402308703210 : ¬ MinimalInterpreter v1402308703210 :=
  chain_cut false 2 (by decide)

private def v1402308701674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 0))))))))
private theorem no_v1402308701674 : ¬ MinimalInterpreter v1402308701674 :=
  chain_cut false 2 (by decide)

private def v1402308349850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308349850 : ¬ MinimalInterpreter v1402308349850 :=
  chain_cut false 2 (by decide)

private def v1402308348906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v1402308348906 : ¬ MinimalInterpreter v1402308348906 :=
  chain_cut false 2 (by decide)

private def v1402308343706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308343706 : ¬ MinimalInterpreter v1402308343706 :=
  chain_cut false 2 (by decide)

private def v1402308253594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308253594 : ¬ MinimalInterpreter v1402308253594 :=
  chain_cut false 2 (by decide)

private def v1402308342762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0)))) (.var 0)))))))
private theorem no_v1402308342762 : ¬ MinimalInterpreter v1402308342762 :=
  chain_cut false 2 (by decide)

private def v1402308341226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 0)))))))
private theorem no_v1402308341226 : ¬ MinimalInterpreter v1402308341226 :=
  chain_cut false 2 (by decide)

private def v1402308252650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v1402308252650 : ¬ MinimalInterpreter v1402308252650 :=
  chain_cut false 2 (by decide)

private def v1402308251114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v1402308251114 : ¬ MinimalInterpreter v1402308251114 :=
  chain_cut false 2 (by decide)

private def v1402308228586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v1402308228586 : ¬ MinimalInterpreter v1402308228586 :=
  chain_cut false 2 (by decide)

private def v1402314344346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402314344346 : ¬ MinimalInterpreter v1402314344346 :=
  chain_cut false 2 (by decide)

private def v1402314338794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v1402314338794 : ¬ MinimalInterpreter v1402314338794 :=
  chain_cut false 2 (by decide)

private def v1402312902554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312902554 : ¬ MinimalInterpreter v1402312902554 :=
  chain_cut false 2 (by decide)

private def v1402312542106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312542106 : ¬ MinimalInterpreter v1402312542106 :=
  chain_cut false 2 (by decide)

private def v1402312897002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0))) (.var 0))))))
private theorem no_v1402312897002 : ¬ MinimalInterpreter v1402312897002 :=
  chain_cut false 2 (by decide)

private def v1402312536554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0)) (.var 0))))))
private theorem no_v1402312536554 : ¬ MinimalInterpreter v1402312536554 :=
  chain_cut false 2 (by decide)

private def v1402312446442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0)) (.var 0))))))
private theorem no_v1402312446442 : ¬ MinimalInterpreter v1402312446442 :=
  chain_cut false 2 (by decide)

theorem four126 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,3,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,0,3,0,0] = [v1402308710298,v1402308709354,v1402308704154,v1402308703210,v1402308701674,v1402308349850,v1402308348906,v1402308343706,v1402308253594,v1402308342762,v1402308341226,v1402308252650,v1402308251114,v1402308228586,v1402314344346,v1402314338794,v1402312902554,v1402312542106,v1402312897002,v1402312536554,v1402312446442] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308710298) (.cons (no_v1402308709354) (.cons (no_v1402308704154) (.cons (no_v1402308703210) (.cons (no_v1402308701674) (.cons (no_v1402308349850) (.cons (no_v1402308348906) (.cons (no_v1402308343706) (.cons (no_v1402308253594) (.cons (no_v1402308342762) (.cons (no_v1402308341226) (.cons (no_v1402308252650) (.cons (no_v1402308251114) (.cons (no_v1402308228586) (.cons (no_v1402314344346) (.cons (no_v1402314338794) (.cons (no_v1402312902554) (.cons (no_v1402312542106) (.cons (no_v1402312897002) (.cons (no_v1402312536554) (.cons (no_v1402312446442) .nil)))))))))))))))))))))

private def v1402308716142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402308716142 : ¬ MinimalInterpreter v1402308716142 :=
  cost_cut false 2 (by decide)

private def v1402308715950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v1402308715950 : ¬ MinimalInterpreter v1402308715950 :=
  cost_cut false 2 (by decide)

private def v1402308704878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402308704878 : ¬ MinimalInterpreter v1402308704878 :=
  cost_cut false 2 (by decide)

private def v1402308704686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v1402308704686 : ¬ MinimalInterpreter v1402308704686 :=
  cost_cut false 2 (by decide)

private def v1402308701870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v1402308701870 : ¬ MinimalInterpreter v1402308701870 :=
  cost_cut false 2 (by decide)

private def v1402308355694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402308355694 : ¬ MinimalInterpreter v1402308355694 :=
  cost_cut false 2 (by decide)

private def v1402308355502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1402308355502 : ¬ MinimalInterpreter v1402308355502 :=
  cost_cut false 2 (by decide)

private def v1402308344430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308344430 : ¬ MinimalInterpreter v1402308344430 :=
  cost_cut false 2 (by decide)

private def v1402308254318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308254318 : ¬ MinimalInterpreter v1402308254318 :=
  cost_cut false 2 (by decide)

private def v1402308344238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2)))))))
private theorem no_v1402308344238 : ¬ MinimalInterpreter v1402308344238 :=
  cost_cut false 2 (by decide)

private def v1402308341422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2)))))))
private theorem no_v1402308341422 : ¬ MinimalInterpreter v1402308341422 :=
  cost_cut false 2 (by decide)

private def v1402308254126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1402308254126 : ¬ MinimalInterpreter v1402308254126 :=
  cost_cut false 2 (by decide)

private def v1402308251310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)) (.var 2)))))))
private theorem no_v1402308251310 : ¬ MinimalInterpreter v1402308251310 :=
  cost_cut false 2 (by decide)

private def v1402308228782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1402308228782 : ¬ MinimalInterpreter v1402308228782 :=
  cost_cut false 2 (by decide)

private def v1402314221166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402314221166 : ¬ MinimalInterpreter v1402314221166 :=
  cost_cut false 2 (by decide)

private def v1402314220974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v1402314220974 : ¬ MinimalInterpreter v1402314220974 :=
  cost_cut false 2 (by decide)

private def v1402314209902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402314209902 : ¬ MinimalInterpreter v1402314209902 :=
  cost_cut false 2 (by decide)

private def v1402314209710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v1402314209710 : ¬ MinimalInterpreter v1402314209710 :=
  cost_cut false 2 (by decide)

private def v1402314206894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v1402314206894 : ¬ MinimalInterpreter v1402314206894 :=
  cost_cut false 2 (by decide)

private def v1402312877678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1402312877678 : ¬ MinimalInterpreter v1402312877678 :=
  chain_cut false 2 (by decide)

private def v1402312877486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1402312877486 : ¬ MinimalInterpreter v1402312877486 :=
  chain_cut false 2 (by decide)

private def v1402312530542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312530542 : ¬ MinimalInterpreter v1402312530542 :=
  chain_cut false 2 (by decide)

private def v1402312530350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1402312530350 : ¬ MinimalInterpreter v1402312530350 :=
  chain_cut false 2 (by decide)

private def v1402312443566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1402312443566 : ¬ MinimalInterpreter v1402312443566 :=
  chain_cut false 2 (by decide)

theorem four127 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,0,0,2]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,0,0,2] = [v1402308716142,v1402308715950,v1402308704878,v1402308704686,v1402308701870,v1402308355694,v1402308355502,v1402308344430,v1402308254318,v1402308344238,v1402308341422,v1402308254126,v1402308251310,v1402308228782,v1402314221166,v1402314220974,v1402314209902,v1402314209710,v1402314206894,v1402312877678,v1402312877486,v1402312530542,v1402312530350,v1402312443566] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308716142) (.cons (no_v1402308715950) (.cons (no_v1402308704878) (.cons (no_v1402308704686) (.cons (no_v1402308701870) (.cons (no_v1402308355694) (.cons (no_v1402308355502) (.cons (no_v1402308344430) (.cons (no_v1402308254318) (.cons (no_v1402308344238) (.cons (no_v1402308341422) (.cons (no_v1402308254126) (.cons (no_v1402308251310) (.cons (no_v1402308228782) (.cons (no_v1402314221166) (.cons (no_v1402314220974) (.cons (no_v1402314209902) (.cons (no_v1402314209710) (.cons (no_v1402314206894) (.cons (no_v1402312877678) (.cons (no_v1402312877486) (.cons (no_v1402312530542) (.cons (no_v1402312530350) (.cons (no_v1402312443566) .nil))))))))))))))))))))))))

theorem four128 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,0,1,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402308716154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402308716154 : ¬ MinimalInterpreter v1402308716154 :=
  cost_cut false 2 (by decide)

private def v1402308715962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v1402308715962 : ¬ MinimalInterpreter v1402308715962 :=
  cost_cut false 2 (by decide)

private def v1402308704890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402308704890 : ¬ MinimalInterpreter v1402308704890 :=
  cost_cut false 2 (by decide)

private def v1402308704698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v1402308704698 : ¬ MinimalInterpreter v1402308704698 :=
  cost_cut false 2 (by decide)

private def v1402308701882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v1402308701882 : ¬ MinimalInterpreter v1402308701882 :=
  cost_cut false 2 (by decide)

private def v1402308355706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402308355706 : ¬ MinimalInterpreter v1402308355706 :=
  cost_cut false 2 (by decide)

private def v1402308355514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1402308355514 : ¬ MinimalInterpreter v1402308355514 :=
  cost_cut false 2 (by decide)

private def v1402308344442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308344442 : ¬ MinimalInterpreter v1402308344442 :=
  cost_cut false 2 (by decide)

private def v1402308254330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308254330 : ¬ MinimalInterpreter v1402308254330 :=
  cost_cut false 2 (by decide)

private def v1402308344250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0)))))))
private theorem no_v1402308344250 : ¬ MinimalInterpreter v1402308344250 :=
  cost_cut false 2 (by decide)

private def v1402308341434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0)))))))
private theorem no_v1402308341434 : ¬ MinimalInterpreter v1402308341434 :=
  cost_cut false 2 (by decide)

private def v1402308254138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1402308254138 : ¬ MinimalInterpreter v1402308254138 :=
  cost_cut false 2 (by decide)

private def v1402308251322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)) (.var 0)))))))
private theorem no_v1402308251322 : ¬ MinimalInterpreter v1402308251322 :=
  cost_cut false 2 (by decide)

private def v1402308228794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1402308228794 : ¬ MinimalInterpreter v1402308228794 :=
  cost_cut false 2 (by decide)

private def v1402314221178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402314221178 : ¬ MinimalInterpreter v1402314221178 :=
  cost_cut false 2 (by decide)

private def v1402314220986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v1402314220986 : ¬ MinimalInterpreter v1402314220986 :=
  cost_cut false 2 (by decide)

private def v1402314209914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402314209914 : ¬ MinimalInterpreter v1402314209914 :=
  cost_cut false 2 (by decide)

private def v1402314209722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v1402314209722 : ¬ MinimalInterpreter v1402314209722 :=
  cost_cut false 2 (by decide)

private def v1402314206906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v1402314206906 : ¬ MinimalInterpreter v1402314206906 :=
  cost_cut false 2 (by decide)

private def v1402312866234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0))))))
private theorem no_v1402312866234 : ¬ MinimalInterpreter v1402312866234 :=
  cost_cut false 2 (by decide)

private def v1402312863418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0))))))
private theorem no_v1402312863418 : ¬ MinimalInterpreter v1402312863418 :=
  cost_cut false 2 (by decide)

private def v1402312877690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1402312877690 : ¬ MinimalInterpreter v1402312877690 :=
  chain_cut false 2 (by decide)

private def v1402312877498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1402312877498 : ¬ MinimalInterpreter v1402312877498 :=
  chain_cut false 2 (by decide)

private def v1402312530554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312530554 : ¬ MinimalInterpreter v1402312530554 :=
  chain_cut false 2 (by decide)

private def v1402312530362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1402312530362 : ¬ MinimalInterpreter v1402312530362 :=
  chain_cut false 2 (by decide)

private def v1402312443578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1402312443578 : ¬ MinimalInterpreter v1402312443578 :=
  chain_cut false 2 (by decide)

theorem four129 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,0,2,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,0,2,0] = [v1402308716154,v1402308715962,v1402308704890,v1402308704698,v1402308701882,v1402308355706,v1402308355514,v1402308344442,v1402308254330,v1402308344250,v1402308341434,v1402308254138,v1402308251322,v1402308228794,v1402314221178,v1402314220986,v1402314209914,v1402314209722,v1402314206906,v1402312866234,v1402312863418,v1402312877690,v1402312877498,v1402312530554,v1402312530362,v1402312443578] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308716154) (.cons (no_v1402308715962) (.cons (no_v1402308704890) (.cons (no_v1402308704698) (.cons (no_v1402308701882) (.cons (no_v1402308355706) (.cons (no_v1402308355514) (.cons (no_v1402308344442) (.cons (no_v1402308254330) (.cons (no_v1402308344250) (.cons (no_v1402308341434) (.cons (no_v1402308254138) (.cons (no_v1402308251322) (.cons (no_v1402308228794) (.cons (no_v1402314221178) (.cons (no_v1402314220986) (.cons (no_v1402314209914) (.cons (no_v1402314209722) (.cons (no_v1402314206906) (.cons (no_v1402312866234) (.cons (no_v1402312863418) (.cons (no_v1402312877690) (.cons (no_v1402312877498) (.cons (no_v1402312530554) (.cons (no_v1402312530362) (.cons (no_v1402312443578) .nil))))))))))))))))))))))))))

theorem four130 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,1,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four131 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,1,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402308716442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308716442 : ¬ MinimalInterpreter v1402308716442 :=
  cost_cut false 2 (by decide)

private def v1402308716010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v1402308716010 : ¬ MinimalInterpreter v1402308716010 :=
  cost_cut false 2 (by decide)

private def v1402308705178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308705178 : ¬ MinimalInterpreter v1402308705178 :=
  cost_cut false 2 (by decide)

private def v1402308704746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v1402308704746 : ¬ MinimalInterpreter v1402308704746 :=
  cost_cut false 2 (by decide)

private def v1402308701930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v1402308701930 : ¬ MinimalInterpreter v1402308701930 :=
  cost_cut false 2 (by decide)

private def v1402308355994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308355994 : ¬ MinimalInterpreter v1402308355994 :=
  cost_cut false 2 (by decide)

private def v1402308355562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1402308355562 : ¬ MinimalInterpreter v1402308355562 :=
  cost_cut false 2 (by decide)

private def v1402308344730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308344730 : ¬ MinimalInterpreter v1402308344730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308254618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308254618 : ¬ MinimalInterpreter v1402308254618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308344298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)))))))
private theorem no_v1402308344298 : ¬ MinimalInterpreter v1402308344298 :=
  cost_cut false 2 (by decide)

private def v1402308341482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))))))
private theorem no_v1402308341482 : ¬ MinimalInterpreter v1402308341482 :=
  cost_cut false 2 (by decide)

private def v1402308254186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1402308254186 : ¬ MinimalInterpreter v1402308254186 :=
  cost_cut false 2 (by decide)

private def v1402308251370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v1402308251370 : ¬ MinimalInterpreter v1402308251370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308228842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1402308228842 : ¬ MinimalInterpreter v1402308228842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402314221466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402314221466 : ¬ MinimalInterpreter v1402314221466 :=
  cost_cut false 2 (by decide)

private def v1402314221034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v1402314221034 : ¬ MinimalInterpreter v1402314221034 :=
  cost_cut false 2 (by decide)

private def v1402314210202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402314210202 : ¬ MinimalInterpreter v1402314210202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402314209770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v1402314209770 : ¬ MinimalInterpreter v1402314209770 :=
  cost_cut false 2 (by decide)

private def v1402314206954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v1402314206954 : ¬ MinimalInterpreter v1402314206954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402312866282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0))))))
private theorem no_v1402312866282 : ¬ MinimalInterpreter v1402312866282 :=
  cost_cut false 2 (by decide)

private def v1402312863466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))))))
private theorem no_v1402312863466 : ¬ MinimalInterpreter v1402312863466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))))

private def v1402312877978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1402312877978 : ¬ MinimalInterpreter v1402312877978 :=
  chain_cut false 2 (by decide)

private def v1402312877546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1402312877546 : ¬ MinimalInterpreter v1402312877546 :=
  chain_cut false 2 (by decide)

private def v1402312530842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312530842 : ¬ MinimalInterpreter v1402312530842 :=
  chain_cut false 2 (by decide)

private def v1402312530410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1402312530410 : ¬ MinimalInterpreter v1402312530410 :=
  chain_cut false 2 (by decide)

private def v1402312443626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1402312443626 : ¬ MinimalInterpreter v1402312443626 :=
  chain_cut false 2 (by decide)

theorem four132 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,2,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [1,1,2,0,0] = [v1402308716442,v1402308716010,v1402308705178,v1402308704746,v1402308701930,v1402308355994,v1402308355562,v1402308344730,v1402308254618,v1402308344298,v1402308341482,v1402308254186,v1402308251370,v1402308228842,v1402314221466,v1402314221034,v1402314210202,v1402314209770,v1402314206954,v1402312866282,v1402312863466,v1402312877978,v1402312877546,v1402312530842,v1402312530410,v1402312443626] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308716442) (.cons (no_v1402308716010) (.cons (no_v1402308705178) (.cons (no_v1402308704746) (.cons (no_v1402308701930) (.cons (no_v1402308355994) (.cons (no_v1402308355562) (.cons (no_v1402308344730) (.cons (no_v1402308254618) (.cons (no_v1402308344298) (.cons (no_v1402308341482) (.cons (no_v1402308254186) (.cons (no_v1402308251370) (.cons (no_v1402308228842) (.cons (no_v1402314221466) (.cons (no_v1402314221034) (.cons (no_v1402314210202) (.cons (no_v1402314209770) (.cons (no_v1402314206954) (.cons (no_v1402312866282) (.cons (no_v1402312863466) (.cons (no_v1402312877978) (.cons (no_v1402312877546) (.cons (no_v1402312530842) (.cons (no_v1402312530410) (.cons (no_v1402312443626) .nil))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
