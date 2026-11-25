import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690684639734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1)))))))))
private theorem no_v690684639734 : ¬ MinimalInterpreter v690684639734 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1)))) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684636918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1))))))))
private theorem no_v690684636918 : ¬ MinimalInterpreter v690684636918 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684615158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 1))))))))
private theorem no_v690684615158 : ¬ MinimalInterpreter v690684615158 :=
  cost_cut false 1 (by decide)
private def v690684612342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 1)))))))
private theorem no_v690684612342 : ¬ MinimalInterpreter v690684612342 :=
  cost_cut false 1 (by decide)
private def v690684606198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 1)))))))
private theorem no_v690684606198 : ¬ MinimalInterpreter v690684606198 :=
  cost_cut false 1 (by decide)
private def v690685272566 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v690685272566 : ¬ MinimalInterpreter v690685272566 :=
  cost_cut false 1 (by decide)
private def v690685262070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1)))))))
private theorem no_v690685262070 : ¬ MinimalInterpreter v690685262070 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v690685174262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v690685174262 : ¬ MinimalInterpreter v690685174262 :=
  cost_cut false 1 (by decide)
private def v690685153014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 3)))) (.var 1))))))
private theorem no_v690685153014 : ¬ MinimalInterpreter v690685153014 :=
  cost_cut false 1 (by decide)
private def v690685163766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 1))))))
private theorem no_v690685163766 : ¬ MinimalInterpreter v690685163766 :=
  cost_cut false 1 (by decide)
private def v690685139190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1))))))
private theorem no_v690685139190 : ¬ MinimalInterpreter v690685139190 :=
  cost_cut false 1 (by decide)
private def v690687631862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v690687631862 : ¬ MinimalInterpreter v690687631862 :=
  cost_cut false 1 (by decide)
private def v690697069046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v690697069046 : ¬ MinimalInterpreter v690697069046 :=
  cost_cut false 1 (by decide)
theorem row324 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,1,3,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,1,3,1] = [v690684639734,v690684636918,v690684615158,v690684612342,v690684606198,v690685272566,v690685262070,v690685174262,v690685153014,v690685163766,v690685139190,v690687631862,v690697069046] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684639734) (.cons (no_v690684636918) (.cons (no_v690684615158) (.cons (no_v690684612342) (.cons (no_v690684606198) (.cons (no_v690685272566) (.cons (no_v690685262070) (.cons (no_v690685174262) (.cons (no_v690685153014) (.cons (no_v690685163766) (.cons (no_v690685139190) (.cons (no_v690687631862) (.cons (no_v690697069046) .nil)))))))))))))

private def v690684640478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v690684640478 : ¬ MinimalInterpreter v690684640478 :=
  cost_cut false 1 (by decide)
private def v690684637022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v690684637022 : ¬ MinimalInterpreter v690684637022 :=
  cost_cut false 1 (by decide)
private def v690684615902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 3))))))))
private theorem no_v690684615902 : ¬ MinimalInterpreter v690684615902 :=
  cost_cut false 1 (by decide)
private def v690684612446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 3)))))))
private theorem no_v690684612446 : ¬ MinimalInterpreter v690684612446 :=
  cost_cut false 1 (by decide)
private def v690684606302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3)))))))
private theorem no_v690684606302 : ¬ MinimalInterpreter v690684606302 :=
  cost_cut false 1 (by decide)
private def v690687589598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v690687589598 : ¬ MinimalInterpreter v690687589598 :=
  cost_cut false 1 (by decide)
private def v690687586142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v690687586142 : ¬ MinimalInterpreter v690687586142 :=
  cost_cut false 1 (by decide)
private def v690697026782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v690697026782 : ¬ MinimalInterpreter v690697026782 :=
  cost_cut false 1 (by decide)
private def v690697023326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v690697023326 : ¬ MinimalInterpreter v690697023326 :=
  cost_cut false 1 (by decide)
theorem row325 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,2,0,3]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,2,0,3] = [v690684640478,v690684637022,v690684615902,v690684612446,v690684606302,v690687589598,v690687586142,v690697026782,v690697023326] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684640478) (.cons (no_v690684637022) (.cons (no_v690684615902) (.cons (no_v690684612446) (.cons (no_v690684606302) (.cons (no_v690687589598) (.cons (no_v690687586142) (.cons (no_v690697026782) (.cons (no_v690697023326) .nil)))))))))

private def v690684640494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v690684640494 : ¬ MinimalInterpreter v690684640494 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690684637038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v690684637038 : ¬ MinimalInterpreter v690684637038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690684615918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v690684615918 : ¬ MinimalInterpreter v690684615918 :=
  cost_cut false 1 (by decide)
private def v690684612462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v690684612462 : ¬ MinimalInterpreter v690684612462 :=
  cost_cut false 1 (by decide)
private def v690684606318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v690684606318 : ¬ MinimalInterpreter v690684606318 :=
  cost_cut false 1 (by decide)
private def v690685276398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v690685276398 : ¬ MinimalInterpreter v690685276398 :=
  cost_cut false 1 (by decide)
private def v690685277070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v690685277070 : ¬ MinimalInterpreter v690685277070 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685263246 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2))))))))
private theorem no_v690685263246 : ¬ MinimalInterpreter v690685263246 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685178094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v690685178094 : ¬ MinimalInterpreter v690685178094 :=
  cost_cut false 1 (by decide)
private def v690685178766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 2))))))))
private theorem no_v690685178766 : ¬ MinimalInterpreter v690685178766 :=
  cost_cut false 1 (by decide)
private def v690685156590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 1) (.var 2)))))))
private theorem no_v690685156590 : ¬ MinimalInterpreter v690685156590 :=
  cost_cut false 1 (by decide)
private def v690685164942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 2)))))))
private theorem no_v690685164942 : ¬ MinimalInterpreter v690685164942 :=
  cost_cut false 1 (by decide)
private def v690685140366 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 2)))))))
private theorem no_v690685140366 : ¬ MinimalInterpreter v690685140366 :=
  cost_cut false 1 (by decide)
private def v690685153134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v690685153134 : ¬ MinimalInterpreter v690685153134 :=
  cost_cut false 1 (by decide)
private def v690685134702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2))))))
private theorem no_v690685134702 : ¬ MinimalInterpreter v690685134702 :=
  cost_cut false 1 (by decide)
private def v690687635694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v690687635694 : ¬ MinimalInterpreter v690687635694 :=
  cost_cut false 1 (by decide)
private def v690697072878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v690697072878 : ¬ MinimalInterpreter v690697072878 :=
  cost_cut false 1 (by decide)
theorem row326 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,2,1,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,2,1,2] = [v690684640494,v690684637038,v690684615918,v690684612462,v690684606318,v690685276398,v690685277070,v690685263246,v690685178094,v690685178766,v690685156590,v690685164942,v690685140366,v690685153134,v690685134702,v690687635694,v690697072878] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684640494) (.cons (no_v690684637038) (.cons (no_v690684615918) (.cons (no_v690684612462) (.cons (no_v690684606318) (.cons (no_v690685276398) (.cons (no_v690685277070) (.cons (no_v690685263246) (.cons (no_v690685178094) (.cons (no_v690685178766) (.cons (no_v690685156590) (.cons (no_v690685164942) (.cons (no_v690685140366) (.cons (no_v690685153134) (.cons (no_v690685134702) (.cons (no_v690687635694) (.cons (no_v690697072878) .nil)))))))))))))))))

private def v690684640502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v690684640502 : ¬ MinimalInterpreter v690684640502 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690684637046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v690684637046 : ¬ MinimalInterpreter v690684637046 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))
private def v690684615926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v690684615926 : ¬ MinimalInterpreter v690684615926 :=
  cost_cut false 1 (by decide)
private def v690684612470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v690684612470 : ¬ MinimalInterpreter v690684612470 :=
  cost_cut false 1 (by decide)
private def v690684606326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v690684606326 : ¬ MinimalInterpreter v690684606326 :=
  cost_cut false 1 (by decide)
private def v690685276406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v690685276406 : ¬ MinimalInterpreter v690685276406 :=
  cost_cut false 1 (by decide)
private def v690685262966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1)))))))
private theorem no_v690685262966 : ¬ MinimalInterpreter v690685262966 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685178102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v690685178102 : ¬ MinimalInterpreter v690685178102 :=
  cost_cut false 1 (by decide)
private def v690685156598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 1)))))))
private theorem no_v690685156598 : ¬ MinimalInterpreter v690685156598 :=
  cost_cut false 1 (by decide)
private def v690685164662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 1))))))
private theorem no_v690685164662 : ¬ MinimalInterpreter v690685164662 :=
  cost_cut false 1 (by decide)
private def v690685140086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 1))))))
private theorem no_v690685140086 : ¬ MinimalInterpreter v690685140086 :=
  cost_cut false 1 (by decide)
private def v690685134710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 1))))))
private theorem no_v690685134710 : ¬ MinimalInterpreter v690685134710 :=
  cost_cut false 1 (by decide)
private def v690687635702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v690687635702 : ¬ MinimalInterpreter v690687635702 :=
  cost_cut false 1 (by decide)
private def v690697072886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v690697072886 : ¬ MinimalInterpreter v690697072886 :=
  cost_cut false 1 (by decide)
theorem row327 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,2,2,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,2,2,1] = [v690684640502,v690684637046,v690684615926,v690684612470,v690684606326,v690685276406,v690685262966,v690685178102,v690685156598,v690685164662,v690685140086,v690685134710,v690687635702,v690697072886] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684640502) (.cons (no_v690684637046) (.cons (no_v690684615926) (.cons (no_v690684612470) (.cons (no_v690684606326) (.cons (no_v690685276406) (.cons (no_v690685262966) (.cons (no_v690685178102) (.cons (no_v690685156598) (.cons (no_v690685164662) (.cons (no_v690685140086) (.cons (no_v690685134710) (.cons (no_v690687635702) (.cons (no_v690697072886) .nil))))))))))))))

private def v690684640506 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v690684640506 : ¬ MinimalInterpreter v690684640506 :=
  cost_cut false 1 (by decide)
private def v690684637050 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v690684637050 : ¬ MinimalInterpreter v690684637050 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684615930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.var 0))))))))
private theorem no_v690684615930 : ¬ MinimalInterpreter v690684615930 :=
  cost_cut false 1 (by decide)
private def v690684612474 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0)))))))
private theorem no_v690684612474 : ¬ MinimalInterpreter v690684612474 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684606330 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.var 0)))))))
private theorem no_v690684606330 : ¬ MinimalInterpreter v690684606330 :=
  cost_cut false 1 (by decide)
private def v690685153146 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0))))))
private theorem no_v690685153146 : ¬ MinimalInterpreter v690685153146 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (.var 0)) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690687589626 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v690687589626 : ¬ MinimalInterpreter v690687589626 :=
  cost_cut false 1 (by decide)
private def v690687586170 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v690687586170 : ¬ MinimalInterpreter v690687586170 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v690697026810 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v690697026810 : ¬ MinimalInterpreter v690697026810 :=
  cost_cut false 1 (by decide)
private def v690697023354 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v690697023354 : ¬ MinimalInterpreter v690697023354 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
theorem row328 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,2,3,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,2,3,0] = [v690684640506,v690684637050,v690684615930,v690684612474,v690684606330,v690685153146,v690687589626,v690687586170,v690697026810,v690697023354] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684640506) (.cons (no_v690684637050) (.cons (no_v690684615930) (.cons (no_v690684612474) (.cons (no_v690684606330) (.cons (no_v690685153146) (.cons (no_v690687589626) (.cons (no_v690687586170) (.cons (no_v690697026810) (.cons (no_v690697023354) .nil))))))))))

private def v690684640878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v690684640878 : ¬ MinimalInterpreter v690684640878 :=
  cost_cut false 1 (by decide)
private def v690684637102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v690684637102 : ¬ MinimalInterpreter v690684637102 :=
  cost_cut false 1 (by decide)
private def v690684616302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 2))))))))
private theorem no_v690684616302 : ¬ MinimalInterpreter v690684616302 :=
  cost_cut false 1 (by decide)
private def v690684612526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 2)))))))
private theorem no_v690684612526 : ¬ MinimalInterpreter v690684612526 :=
  cost_cut false 1 (by decide)
private def v690684606382 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2)))))))
private theorem no_v690684606382 : ¬ MinimalInterpreter v690684606382 :=
  cost_cut false 1 (by decide)
private def v690687589998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v690687589998 : ¬ MinimalInterpreter v690687589998 :=
  cost_cut false 1 (by decide)
private def v690687586222 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v690687586222 : ¬ MinimalInterpreter v690687586222 :=
  cost_cut false 1 (by decide)
private def v690697027182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v690697027182 : ¬ MinimalInterpreter v690697027182 :=
  cost_cut false 1 (by decide)
private def v690697023406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v690697023406 : ¬ MinimalInterpreter v690697023406 :=
  cost_cut false 1 (by decide)
theorem row329 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,3,0,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,3,0,2] = [v690684640878,v690684637102,v690684616302,v690684612526,v690684606382,v690687589998,v690687586222,v690697027182,v690697023406] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684640878) (.cons (no_v690684637102) (.cons (no_v690684616302) (.cons (no_v690684612526) (.cons (no_v690684606382) (.cons (no_v690687589998) (.cons (no_v690687586222) (.cons (no_v690697027182) (.cons (no_v690697023406) .nil)))))))))

end Blc.SelfintSingleObject.Rows39
