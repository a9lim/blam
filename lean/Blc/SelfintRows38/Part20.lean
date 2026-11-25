import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75699215930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v75699215930 : ¬ MinimalInterpreter v75699215930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75699162746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0))))))))
private theorem no_v75699162746 : ¬ MinimalInterpreter v75699162746 :=
  cost_cut false 2 (by decide)

private def v75699166778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v75699166778 : ¬ MinimalInterpreter v75699166778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75699154490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v75699154490 : ¬ MinimalInterpreter v75699154490 :=
  cost_cut false 2 (by decide)

private def v75699151802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0)))))))
private theorem no_v75699151802 : ¬ MinimalInterpreter v75699151802 :=
  cost_cut false 2 (by decide)

private def v75700395578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v75700395578 : ¬ MinimalInterpreter v75700395578 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v75705114170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v75705114170 : ¬ MinimalInterpreter v75705114170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem row120 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [0,2,2,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [0,2,2,0] = [v75699215930,v75699162746,v75699166778,v75699154490,v75699151802,v75700395578,v75705114170] := by decide
  rw [h]
  exact (.cons (no_v75699215930) (.cons (no_v75699162746) (.cons (no_v75699166778) (.cons (no_v75699154490) (.cons (no_v75699151802) (.cons (no_v75700395578) (.cons (no_v75705114170) .nil)))))))

private def v75698904886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v75698904886 : ¬ MinimalInterpreter v75698904886 :=
  cost_cut false 2 (by decide)

private def v75698902998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v75698902998 : ¬ MinimalInterpreter v75698902998 :=
  cost_cut false 2 (by decide)

private def v75698892598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1)))))))))
private theorem no_v75698892598 : ¬ MinimalInterpreter v75698892598 :=
  cost_cut false 2 (by decide)

private def v75698890710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1))))))))
private theorem no_v75698890710 : ¬ MinimalInterpreter v75698890710 :=
  cost_cut false 2 (by decide)

private def v75698887638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1))))))))
private theorem no_v75698887638 : ¬ MinimalInterpreter v75698887638 :=
  cost_cut false 2 (by decide)

private def v75699199798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v75699199798 : ¬ MinimalInterpreter v75699199798 :=
  cost_cut false 2 (by decide)

private def v75699197910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v75699197910 : ¬ MinimalInterpreter v75699197910 :=
  cost_cut false 2 (by decide)

private def v75699162934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1))))))))
private theorem no_v75699162934 : ¬ MinimalInterpreter v75699162934 :=
  cost_cut false 2 (by decide)

private def v75699151830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))))))
private theorem no_v75699151830 : ¬ MinimalInterpreter v75699151830 :=
  cost_cut false 2 (by decide)

private def v75705098038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v75705098038 : ¬ MinimalInterpreter v75705098038 :=
  cost_cut false 2 (by decide)

private def v75705096150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v75705096150 : ¬ MinimalInterpreter v75705096150 :=
  cost_cut false 2 (by decide)

theorem row121 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [0,3,0,1]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [0,3,0,1] = [v75698904886,v75698902998,v75698892598,v75698890710,v75698887638,v75699199798,v75699197910,v75699162934,v75699151830,v75705098038,v75705096150] := by decide
  rw [h]
  exact (.cons (no_v75698904886) (.cons (no_v75698902998) (.cons (no_v75698892598) (.cons (no_v75698890710) (.cons (no_v75698887638) (.cons (no_v75699199798) (.cons (no_v75699197910) (.cons (no_v75699162934) (.cons (no_v75699151830) (.cons (no_v75705098038) (.cons (no_v75705096150) .nil)))))))))))

private def v75698904890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v75698904890 : ¬ MinimalInterpreter v75698904890 :=
  cost_cut false 2 (by decide)

private def v75698903002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v75698903002 : ¬ MinimalInterpreter v75698903002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v75698892602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0)))))))))
private theorem no_v75698892602 : ¬ MinimalInterpreter v75698892602 :=
  cost_cut false 2 (by decide)

private def v75698890714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))))
private theorem no_v75698890714 : ¬ MinimalInterpreter v75698890714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v75698887642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0))))))))
private theorem no_v75698887642 : ¬ MinimalInterpreter v75698887642 :=
  cost_cut false 2 (by decide)

private def v75699199802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v75699199802 : ¬ MinimalInterpreter v75699199802 :=
  cost_cut false 2 (by decide)

private def v75699197914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v75699197914 : ¬ MinimalInterpreter v75699197914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v75699162938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))
private theorem no_v75699162938 : ¬ MinimalInterpreter v75699162938 :=
  cost_cut false 2 (by decide)

private def v75699151834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0)))))))
private theorem no_v75699151834 : ¬ MinimalInterpreter v75699151834 :=
  cost_cut false 2 (by decide)

private def v75705098042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v75705098042 : ¬ MinimalInterpreter v75705098042 :=
  cost_cut false 2 (by decide)

private def v75705096154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v75705096154 : ¬ MinimalInterpreter v75705096154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

theorem row122 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [0,3,1,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [0,3,1,0] = [v75698904890,v75698903002,v75698892602,v75698890714,v75698887642,v75699199802,v75699197914,v75699162938,v75699151834,v75705098042,v75705096154] := by decide
  rw [h]
  exact (.cons (no_v75698904890) (.cons (no_v75698903002) (.cons (no_v75698892602) (.cons (no_v75698890714) (.cons (no_v75698887642) (.cons (no_v75699199802) (.cons (no_v75699197914) (.cons (no_v75699162938) (.cons (no_v75699151834) (.cons (no_v75705098042) (.cons (no_v75705096154) .nil)))))))))))

theorem row123 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [0,4,0,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [0,4,0,0] = [] := by decide
  rw [h]
  exact .nil

private def v75698916574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3))))))))))
private theorem no_v75698916574 : ¬ MinimalInterpreter v75698916574 :=
  cost_cut false 2 (by decide)

private def v75698916190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3)))))))))
private theorem no_v75698916190 : ¬ MinimalInterpreter v75698916190 :=
  cost_cut false 2 (by decide)

private def v75698894046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3)))))))))
private theorem no_v75698894046 : ¬ MinimalInterpreter v75698894046 :=
  cost_cut false 2 (by decide)

private def v75698893662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3))))))))
private theorem no_v75698893662 : ¬ MinimalInterpreter v75698893662 :=
  cost_cut false 2 (by decide)

private def v75698888030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3))))))))
private theorem no_v75698888030 : ¬ MinimalInterpreter v75698888030 :=
  cost_cut false 2 (by decide)

private def v75699270430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v75699270430 : ¬ MinimalInterpreter v75699270430 :=
  cost_cut false 2 (by decide)

private def v75699268894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v75699268894 : ¬ MinimalInterpreter v75699268894 :=
  cost_cut false 2 (by decide)

private def v75699180318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v75699180318 : ¬ MinimalInterpreter v75699180318 :=
  cost_cut false 2 (by decide)

private def v75699178782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3))))))))
private theorem no_v75699178782 : ¬ MinimalInterpreter v75699178782 :=
  cost_cut false 2 (by decide)

private def v75699156254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v75699156254 : ¬ MinimalInterpreter v75699156254 :=
  cost_cut false 2 (by decide)

theorem row124 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,0,0,3]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,0,0,3] = [v75698916574,v75698916190,v75698894046,v75698893662,v75698888030,v75699270430,v75699268894,v75699180318,v75699178782,v75699156254] := by decide
  rw [h]
  exact (.cons (no_v75698916574) (.cons (no_v75698916190) (.cons (no_v75698894046) (.cons (no_v75698893662) (.cons (no_v75698888030) (.cons (no_v75699270430) (.cons (no_v75699268894) (.cons (no_v75699180318) (.cons (no_v75699178782) (.cons (no_v75699156254) .nil))))))))))

private def v75698916590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v75698916590 : ¬ MinimalInterpreter v75698916590 :=
  cost_cut false 2 (by decide)

private def v75698916206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v75698916206 : ¬ MinimalInterpreter v75698916206 :=
  cost_cut false 2 (by decide)

private def v75698894062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v75698894062 : ¬ MinimalInterpreter v75698894062 :=
  cost_cut false 2 (by decide)

private def v75698893678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v75698893678 : ¬ MinimalInterpreter v75698893678 :=
  cost_cut false 2 (by decide)

private def v75698888046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v75698888046 : ¬ MinimalInterpreter v75698888046 :=
  cost_cut false 2 (by decide)

private def v75699260654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v75699260654 : ¬ MinimalInterpreter v75699260654 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v75699260270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v75699260270 : ¬ MinimalInterpreter v75699260270 :=
  cost_cut false 2 (by decide)

private def v75699268718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2))))))))
private theorem no_v75699268718 : ¬ MinimalInterpreter v75699268718 :=
  cost_cut false 2 (by decide)

private def v75699178606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v75699178606 : ¬ MinimalInterpreter v75699178606 :=
  cost_cut false 2 (by decide)

private def v75699156078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v75699156078 : ¬ MinimalInterpreter v75699156078 :=
  cost_cut false 2 (by decide)

theorem row125 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,0,1,2]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,0,1,2] = [v75698916590,v75698916206,v75698894062,v75698893678,v75698888046,v75699260654,v75699260270,v75699268718,v75699178606,v75699156078] := by decide
  rw [h]
  exact (.cons (no_v75698916590) (.cons (no_v75698916206) (.cons (no_v75698894062) (.cons (no_v75698893678) (.cons (no_v75698888046) (.cons (no_v75699260654) (.cons (no_v75699260270) (.cons (no_v75699268718) (.cons (no_v75699178606) (.cons (no_v75699156078) .nil))))))))))

end Blc.SelfintSingleObject.Rows38
