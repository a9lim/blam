import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700482819642 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))
private theorem no_v700482819642 : ¬ MinimalInterpreter v700482819642 :=
  chain_cut false 2 (by decide)
private def v700482709050 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))
private theorem no_v700482709050 : ¬ MinimalInterpreter v700482709050 :=
  chain_cut false 2 (by decide)
private def v700482681402 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0))))))
private theorem no_v700482681402 : ¬ MinimalInterpreter v700482681402 :=
  chain_cut false 2 (by decide)
theorem row384 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [2,0,2,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [2,0,2,0] = [v700482819642,v700482709050,v700482681402] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482819642) (.cons (no_v700482709050) (.cons (no_v700482681402) .nil)))

private def v700482447158 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v700482447158 : ¬ MinimalInterpreter v700482447158 :=
  cost_cut false 2 (by decide)
private def v700482446806 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v700482446806 : ¬ MinimalInterpreter v700482446806 :=
  cost_cut false 2 (by decide)
private def v700482419510 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v700482419510 : ¬ MinimalInterpreter v700482419510 :=
  cost_cut false 2 (by decide)
private def v700482419158 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v700482419158 : ¬ MinimalInterpreter v700482419158 :=
  cost_cut false 2 (by decide)
private def v700482412246 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v700482412246 : ¬ MinimalInterpreter v700482412246 :=
  cost_cut false 2 (by decide)
private def v700482821318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v700482821318 : ¬ MinimalInterpreter v700482821318 :=
  chain_cut false 2 (by decide)
private def v700482819910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))
private theorem no_v700482819910 : ¬ MinimalInterpreter v700482819910 :=
  chain_cut false 2 (by decide)
private def v700482710726 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v700482710726 : ¬ MinimalInterpreter v700482710726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482708278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v700482708278 : ¬ MinimalInterpreter v700482708278 :=
  chain_cut false 2 (by decide)
private def v700482709318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))
private theorem no_v700482709318 : ¬ MinimalInterpreter v700482709318 :=
  chain_cut false 2 (by decide)
private def v700482681670 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v700482681670 : ¬ MinimalInterpreter v700482681670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482681046 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v700482681046 : ¬ MinimalInterpreter v700482681046 :=
  chain_cut false 2 (by decide)
theorem row385 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [2,1,0,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [2,1,0,1] = [v700482447158,v700482446806,v700482419510,v700482419158,v700482412246,v700482821318,v700482819910,v700482710726,v700482708278,v700482709318,v700482681670,v700482681046] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482447158) (.cons (no_v700482446806) (.cons (no_v700482419510) (.cons (no_v700482419158) (.cons (no_v700482412246) (.cons (no_v700482821318) (.cons (no_v700482819910) (.cons (no_v700482710726) (.cons (no_v700482708278) (.cons (no_v700482709318) (.cons (no_v700482681670) (.cons (no_v700482681046) .nil))))))))))))

private def v700482447162 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v700482447162 : ¬ MinimalInterpreter v700482447162 :=
  cost_cut false 2 (by decide)
private def v700482446810 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v700482446810 : ¬ MinimalInterpreter v700482446810 :=
  cost_cut false 2 (by decide)
private def v700482419514 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v700482419514 : ¬ MinimalInterpreter v700482419514 :=
  cost_cut false 2 (by decide)
private def v700482419162 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v700482419162 : ¬ MinimalInterpreter v700482419162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700482412250 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v700482412250 : ¬ MinimalInterpreter v700482412250 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700482819866 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))
private theorem no_v700482819866 : ¬ MinimalInterpreter v700482819866 :=
  chain_cut false 2 (by decide)
private def v700482708282 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v700482708282 : ¬ MinimalInterpreter v700482708282 :=
  chain_cut false 2 (by decide)
private def v700482709274 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))
private theorem no_v700482709274 : ¬ MinimalInterpreter v700482709274 :=
  chain_cut false 2 (by decide)
private def v700482681626 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))
private theorem no_v700482681626 : ¬ MinimalInterpreter v700482681626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482681050 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v700482681050 : ¬ MinimalInterpreter v700482681050 :=
  chain_cut false 2 (by decide)
theorem row386 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [2,1,1,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [2,1,1,0] = [v700482447162,v700482446810,v700482419514,v700482419162,v700482412250,v700482819866,v700482708282,v700482709274,v700482681626,v700482681050] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482447162) (.cons (no_v700482446810) (.cons (no_v700482419514) (.cons (no_v700482419162) (.cons (no_v700482412250) (.cons (no_v700482819866) (.cons (no_v700482708282) (.cons (no_v700482709274) (.cons (no_v700482681626) (.cons (no_v700482681050) .nil))))))))))

private def v700482708378 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v700482708378 : ¬ MinimalInterpreter v700482708378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482681066 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v700482681066 : ¬ MinimalInterpreter v700482681066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row387 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [2,2,0,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [2,2,0,0] = [v700482708378,v700482681066] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482708378) (.cons (no_v700482681066) .nil))

private def v700482450230 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v700482450230 : ¬ MinimalInterpreter v700482450230 :=
  chain_cut false 2 (by decide)
private def v700482450134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v700482450134 : ¬ MinimalInterpreter v700482450134 :=
  chain_cut false 2 (by decide)
private def v700482420022 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v700482420022 : ¬ MinimalInterpreter v700482420022 :=
  chain_cut false 2 (by decide)
private def v700482419926 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v700482419926 : ¬ MinimalInterpreter v700482419926 :=
  chain_cut false 2 (by decide)
private def v700482412374 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v700482412374 : ¬ MinimalInterpreter v700482412374 :=
  chain_cut false 2 (by decide)
theorem row388 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [3,0,0,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [3,0,0,1] = [v700482450230,v700482450134,v700482420022,v700482419926,v700482412374] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482450230) (.cons (no_v700482450134) (.cons (no_v700482420022) (.cons (no_v700482419926) (.cons (no_v700482412374) .nil)))))

private def v700482450234 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v700482450234 : ¬ MinimalInterpreter v700482450234 :=
  chain_cut false 2 (by decide)
private def v700482450138 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v700482450138 : ¬ MinimalInterpreter v700482450138 :=
  chain_cut false 2 (by decide)
private def v700482420026 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v700482420026 : ¬ MinimalInterpreter v700482420026 :=
  chain_cut false 2 (by decide)
private def v700482419930 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v700482419930 : ¬ MinimalInterpreter v700482419930 :=
  chain_cut false 2 (by decide)
private def v700482412378 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v700482412378 : ¬ MinimalInterpreter v700482412378 :=
  chain_cut false 2 (by decide)
theorem row389 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [3,0,1,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [3,0,1,0] = [v700482450234,v700482450138,v700482420026,v700482419930,v700482412378] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482450234) (.cons (no_v700482450138) (.cons (no_v700482420026) (.cons (no_v700482419930) (.cons (no_v700482412378) .nil)))))

end Blc.SelfintSingleObject.Rows39
