import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701157402222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v701157402222 : ¬ MinimalInterpreter v701157402222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157402030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v701157402030 : ¬ MinimalInterpreter v701157402030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157390958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v701157390958 : ¬ MinimalInterpreter v701157390958 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157390766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v701157390766 : ¬ MinimalInterpreter v701157390766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157387950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v701157387950 : ¬ MinimalInterpreter v701157387950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156517486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v701156517486 : ¬ MinimalInterpreter v701156517486 :=
  chain_cut false 4 (by decide)
private def v701156517294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v701156517294 : ¬ MinimalInterpreter v701156517294 :=
  chain_cut false 4 (by decide)
private def v701156506222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156506222 : ¬ MinimalInterpreter v701156506222 :=
  chain_cut false 4 (by decide)
private def v701156285038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156285038 : ¬ MinimalInterpreter v701156285038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156506030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))))))
private theorem no_v701156506030 : ¬ MinimalInterpreter v701156506030 :=
  chain_cut false 4 (by decide)
private def v701156503214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))))))
private theorem no_v701156503214 : ¬ MinimalInterpreter v701156503214 :=
  chain_cut false 4 (by decide)
private def v701156284846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v701156284846 : ¬ MinimalInterpreter v701156284846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156282030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))))
private theorem no_v701156282030 : ¬ MinimalInterpreter v701156282030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156226734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v701156226734 : ¬ MinimalInterpreter v701156226734 :=
  chain_cut false 5 (by decide)
theorem row42 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,0,0,2]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,0,0,2] = [v701157402222,v701157402030,v701157390958,v701157390766,v701157387950,v701156517486,v701156517294,v701156506222,v701156285038,v701156506030,v701156503214,v701156284846,v701156282030,v701156226734] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402222) (.cons (no_v701157402030) (.cons (no_v701157390958) (.cons (no_v701157390766) (.cons (no_v701157387950) (.cons (no_v701156517486) (.cons (no_v701156517294) (.cons (no_v701156506222) (.cons (no_v701156285038) (.cons (no_v701156506030) (.cons (no_v701156503214) (.cons (no_v701156284846) (.cons (no_v701156282030) (.cons (no_v701156226734) .nil))))))))))))))

private def v701157402230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v701157402230 : ¬ MinimalInterpreter v701157402230 :=
  chain_cut false 2 (by decide)
private def v701157402038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v701157402038 : ¬ MinimalInterpreter v701157402038 :=
  chain_cut false 2 (by decide)
private def v701157390966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v701157390966 : ¬ MinimalInterpreter v701157390966 :=
  chain_cut false 2 (by decide)
private def v701157390774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v701157390774 : ¬ MinimalInterpreter v701157390774 :=
  chain_cut false 2 (by decide)
private def v701157387958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v701157387958 : ¬ MinimalInterpreter v701157387958 :=
  chain_cut false 2 (by decide)
private def v701156517494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v701156517494 : ¬ MinimalInterpreter v701156517494 :=
  chain_cut false 2 (by decide)
private def v701156517302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v701156517302 : ¬ MinimalInterpreter v701156517302 :=
  chain_cut false 2 (by decide)
private def v701156506230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 1)))))))
private theorem no_v701156506230 : ¬ MinimalInterpreter v701156506230 :=
  chain_cut false 2 (by decide)
private def v701156285046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v701156285046 : ¬ MinimalInterpreter v701156285046 :=
  chain_cut false 2 (by decide)
private def v701156506038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 1))))))
private theorem no_v701156506038 : ¬ MinimalInterpreter v701156506038 :=
  chain_cut false 2 (by decide)
private def v701156503222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 1))))))
private theorem no_v701156503222 : ¬ MinimalInterpreter v701156503222 :=
  chain_cut false 2 (by decide)
private def v701156284854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v701156284854 : ¬ MinimalInterpreter v701156284854 :=
  chain_cut false 2 (by decide)
private def v701156282038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)) (.var 1))))))
private theorem no_v701156282038 : ¬ MinimalInterpreter v701156282038 :=
  chain_cut false 2 (by decide)
private def v701156226742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v701156226742 : ¬ MinimalInterpreter v701156226742 :=
  chain_cut false 2 (by decide)
theorem row43 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,0,1,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,0,1,1] = [v701157402230,v701157402038,v701157390966,v701157390774,v701157387958,v701156517494,v701156517302,v701156506230,v701156285046,v701156506038,v701156503222,v701156284854,v701156282038,v701156226742] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402230) (.cons (no_v701157402038) (.cons (no_v701157390966) (.cons (no_v701157390774) (.cons (no_v701157387958) (.cons (no_v701156517494) (.cons (no_v701156517302) (.cons (no_v701156506230) (.cons (no_v701156285046) (.cons (no_v701156506038) (.cons (no_v701156503222) (.cons (no_v701156284854) (.cons (no_v701156282038) (.cons (no_v701156226742) .nil))))))))))))))

private def v701157402234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v701157402234 : ¬ MinimalInterpreter v701157402234 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157402042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v701157402042 : ¬ MinimalInterpreter v701157402042 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157390970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v701157390970 : ¬ MinimalInterpreter v701157390970 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157390778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v701157390778 : ¬ MinimalInterpreter v701157390778 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157387962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v701157387962 : ¬ MinimalInterpreter v701157387962 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156517498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v701156517498 : ¬ MinimalInterpreter v701156517498 :=
  chain_cut false 4 (by decide)
private def v701156517306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v701156517306 : ¬ MinimalInterpreter v701156517306 :=
  chain_cut false 4 (by decide)
private def v701156506234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156506234 : ¬ MinimalInterpreter v701156506234 :=
  chain_cut false 4 (by decide)
private def v701156285050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156285050 : ¬ MinimalInterpreter v701156285050 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v701156506042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v701156506042 : ¬ MinimalInterpreter v701156506042 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156503226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))))
private theorem no_v701156503226 : ¬ MinimalInterpreter v701156503226 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156284858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v701156284858 : ¬ MinimalInterpreter v701156284858 :=
  chain_cut false 4 (by decide)
private def v701156282042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v701156282042 : ¬ MinimalInterpreter v701156282042 :=
  chain_cut false 4 (by decide)
private def v701156226746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v701156226746 : ¬ MinimalInterpreter v701156226746 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem row44 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,0,2,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,0,2,0] = [v701157402234,v701157402042,v701157390970,v701157390778,v701157387962,v701156517498,v701156517306,v701156506234,v701156285050,v701156506042,v701156503226,v701156284858,v701156282042,v701156226746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402234) (.cons (no_v701157402042) (.cons (no_v701157390970) (.cons (no_v701157390778) (.cons (no_v701157387962) (.cons (no_v701156517498) (.cons (no_v701156517306) (.cons (no_v701156506234) (.cons (no_v701156285050) (.cons (no_v701156506042) (.cons (no_v701156503226) (.cons (no_v701156284858) (.cons (no_v701156282042) (.cons (no_v701156226746) .nil))))))))))))))

private def v701157402422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v701157402422 : ¬ MinimalInterpreter v701157402422 :=
  chain_cut false 2 (by decide)
private def v701157402070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v701157402070 : ¬ MinimalInterpreter v701157402070 :=
  chain_cut false 2 (by decide)
private def v701157391158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v701157391158 : ¬ MinimalInterpreter v701157391158 :=
  chain_cut false 2 (by decide)
private def v701157390806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v701157390806 : ¬ MinimalInterpreter v701157390806 :=
  chain_cut false 2 (by decide)
private def v701157387990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v701157387990 : ¬ MinimalInterpreter v701157387990 :=
  chain_cut false 2 (by decide)
private def v701156517686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v701156517686 : ¬ MinimalInterpreter v701156517686 :=
  chain_cut false 2 (by decide)
private def v701156517334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v701156517334 : ¬ MinimalInterpreter v701156517334 :=
  chain_cut false 2 (by decide)
private def v701156506422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156506422 : ¬ MinimalInterpreter v701156506422 :=
  chain_cut false 2 (by decide)
private def v701156285238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v701156285238 : ¬ MinimalInterpreter v701156285238 :=
  chain_cut false 2 (by decide)
private def v701156506070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 1))))))
private theorem no_v701156506070 : ¬ MinimalInterpreter v701156506070 :=
  chain_cut false 2 (by decide)
private def v701156503254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 1))))))
private theorem no_v701156503254 : ¬ MinimalInterpreter v701156503254 :=
  chain_cut false 2 (by decide)
private def v701156284886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v701156284886 : ¬ MinimalInterpreter v701156284886 :=
  chain_cut false 2 (by decide)
private def v701156282070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v701156282070 : ¬ MinimalInterpreter v701156282070 :=
  chain_cut false 2 (by decide)
private def v701156226774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v701156226774 : ¬ MinimalInterpreter v701156226774 :=
  chain_cut false 2 (by decide)
theorem row45 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,1,0,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,1,0,1] = [v701157402422,v701157402070,v701157391158,v701157390806,v701157387990,v701156517686,v701156517334,v701156506422,v701156285238,v701156506070,v701156503254,v701156284886,v701156282070,v701156226774] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402422) (.cons (no_v701157402070) (.cons (no_v701157391158) (.cons (no_v701157390806) (.cons (no_v701157387990) (.cons (no_v701156517686) (.cons (no_v701156517334) (.cons (no_v701156506422) (.cons (no_v701156285238) (.cons (no_v701156506070) (.cons (no_v701156503254) (.cons (no_v701156284886) (.cons (no_v701156282070) (.cons (no_v701156226774) .nil))))))))))))))

private def v701157402426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v701157402426 : ¬ MinimalInterpreter v701157402426 :=
  chain_cut false 2 (by decide)
private def v701157402074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v701157402074 : ¬ MinimalInterpreter v701157402074 :=
  chain_cut false 2 (by decide)
private def v701157391162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v701157391162 : ¬ MinimalInterpreter v701157391162 :=
  chain_cut false 2 (by decide)
private def v701157390810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v701157390810 : ¬ MinimalInterpreter v701157390810 :=
  chain_cut false 2 (by decide)
private def v701157387994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v701157387994 : ¬ MinimalInterpreter v701157387994 :=
  chain_cut false 2 (by decide)
private def v701156517690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v701156517690 : ¬ MinimalInterpreter v701156517690 :=
  chain_cut false 2 (by decide)
private def v701156517338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v701156517338 : ¬ MinimalInterpreter v701156517338 :=
  chain_cut false 2 (by decide)
private def v701156506426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156506426 : ¬ MinimalInterpreter v701156506426 :=
  chain_cut false 2 (by decide)
private def v701156285242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v701156285242 : ¬ MinimalInterpreter v701156285242 :=
  chain_cut false 2 (by decide)
private def v701156506074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0))))))
private theorem no_v701156506074 : ¬ MinimalInterpreter v701156506074 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 1)))) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156503258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0))))))
private theorem no_v701156503258 : ¬ MinimalInterpreter v701156503258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 1))) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156284890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v701156284890 : ¬ MinimalInterpreter v701156284890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 1))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156282074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v701156282074 : ¬ MinimalInterpreter v701156282074 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 1)) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156226778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v701156226778 : ¬ MinimalInterpreter v701156226778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row46 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,1,1,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,1,1,0] = [v701157402426,v701157402074,v701157391162,v701157390810,v701157387994,v701156517690,v701156517338,v701156506426,v701156285242,v701156506074,v701156503258,v701156284890,v701156282074,v701156226778] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402426) (.cons (no_v701157402074) (.cons (no_v701157391162) (.cons (no_v701157390810) (.cons (no_v701157387994) (.cons (no_v701156517690) (.cons (no_v701156517338) (.cons (no_v701156506426) (.cons (no_v701156285242) (.cons (no_v701156506074) (.cons (no_v701156503258) (.cons (no_v701156284890) (.cons (no_v701156282074) (.cons (no_v701156226778) .nil))))))))))))))

private def v701157402522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v701157402522 : ¬ MinimalInterpreter v701157402522 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157402090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v701157402090 : ¬ MinimalInterpreter v701157402090 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157391258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v701157391258 : ¬ MinimalInterpreter v701157391258 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157390826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v701157390826 : ¬ MinimalInterpreter v701157390826 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701157388010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v701157388010 : ¬ MinimalInterpreter v701157388010 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156517786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v701156517786 : ¬ MinimalInterpreter v701156517786 :=
  chain_cut false 4 (by decide)
private def v701156517354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v701156517354 : ¬ MinimalInterpreter v701156517354 :=
  chain_cut false 4 (by decide)
private def v701156506522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156506522 : ¬ MinimalInterpreter v701156506522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156285338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v701156285338 : ¬ MinimalInterpreter v701156285338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156506090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v701156506090 : ¬ MinimalInterpreter v701156506090 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156503274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v701156503274 : ¬ MinimalInterpreter v701156503274 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156284906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v701156284906 : ¬ MinimalInterpreter v701156284906 :=
  chain_cut false 4 (by decide)
private def v701156282090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v701156282090 : ¬ MinimalInterpreter v701156282090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156226794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v701156226794 : ¬ MinimalInterpreter v701156226794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row47 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,2,0,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,1,2,0,0] = [v701157402522,v701157402090,v701157391258,v701157390826,v701157388010,v701156517786,v701156517354,v701156506522,v701156285338,v701156506090,v701156503274,v701156284906,v701156282090,v701156226794] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157402522) (.cons (no_v701157402090) (.cons (no_v701157391258) (.cons (no_v701157390826) (.cons (no_v701157388010) (.cons (no_v701156517786) (.cons (no_v701156517354) (.cons (no_v701156506522) (.cons (no_v701156285338) (.cons (no_v701156506090) (.cons (no_v701156503274) (.cons (no_v701156284906) (.cons (no_v701156282090) (.cons (no_v701156226794) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
