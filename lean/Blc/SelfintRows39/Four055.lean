import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690684640886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))))))))
private theorem no_v690684640886 : ¬ MinimalInterpreter v690684640886 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684637110 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1))))))))
private theorem no_v690684637110 : ¬ MinimalInterpreter v690684637110 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684616310 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 1))))))))
private theorem no_v690684616310 : ¬ MinimalInterpreter v690684616310 :=
  cost_cut false 1 (by decide)
private def v690684612534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 1)))))))
private theorem no_v690684612534 : ¬ MinimalInterpreter v690684612534 :=
  cost_cut false 1 (by decide)
private def v690684606390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 1)))))))
private theorem no_v690684606390 : ¬ MinimalInterpreter v690684606390 :=
  cost_cut false 1 (by decide)
private def v690685156982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 1)))))))
private theorem no_v690685156982 : ¬ MinimalInterpreter v690685156982 :=
  cost_cut false 1 (by decide)
private def v690685153206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 1)))) (.var 1))))))
private theorem no_v690685153206 : ¬ MinimalInterpreter v690685153206 :=
  cost_cut false 1 (by decide)
private def v690685134774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 1))))))
private theorem no_v690685134774 : ¬ MinimalInterpreter v690685134774 :=
  cost_cut false 1 (by decide)
theorem row330 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,3,1,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,3,1,1] = [v690684640886,v690684637110,v690684616310,v690684612534,v690684606390,v690685156982,v690685153206,v690685134774] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684640886) (.cons (no_v690684637110) (.cons (no_v690684616310) (.cons (no_v690684612534) (.cons (no_v690684606390) (.cons (no_v690685156982) (.cons (no_v690685153206) (.cons (no_v690685134774) .nil))))))))

private def v690684640890 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v690684640890 : ¬ MinimalInterpreter v690684640890 :=
  cost_cut false 1 (by decide)
private def v690684637114 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v690684637114 : ¬ MinimalInterpreter v690684637114 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684616314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.var 0))))))))
private theorem no_v690684616314 : ¬ MinimalInterpreter v690684616314 :=
  cost_cut false 1 (by decide)
private def v690684612538 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0)))))))
private theorem no_v690684612538 : ¬ MinimalInterpreter v690684612538 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684606394 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.var 0)))))))
private theorem no_v690684606394 : ¬ MinimalInterpreter v690684606394 :=
  cost_cut false 1 (by decide)
private def v690685153210 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0))))))
private theorem no_v690685153210 : ¬ MinimalInterpreter v690685153210 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690687590010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v690687590010 : ¬ MinimalInterpreter v690687590010 :=
  cost_cut false 1 (by decide)
private def v690687586234 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v690687586234 : ¬ MinimalInterpreter v690687586234 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v690697027194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v690697027194 : ¬ MinimalInterpreter v690697027194 :=
  cost_cut false 1 (by decide)
private def v690697023418 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v690697023418 : ¬ MinimalInterpreter v690697023418 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
theorem row331 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,3,2,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,3,2,0] = [v690684640890,v690684637114,v690684616314,v690684612538,v690684606394,v690685153210,v690687590010,v690687586234,v690697027194,v690697023418] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684640890) (.cons (no_v690684637114) (.cons (no_v690684616314) (.cons (no_v690684612538) (.cons (no_v690684606394) (.cons (no_v690685153210) (.cons (no_v690687590010) (.cons (no_v690687586234) (.cons (no_v690697027194) (.cons (no_v690697023418) .nil))))))))))

private def v690684664286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v690684664286 : ¬ MinimalInterpreter v690684664286 :=
  cost_cut false 1 (by decide)
private def v690684663518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v690684663518 : ¬ MinimalInterpreter v690684663518 :=
  cost_cut false 1 (by decide)
private def v690684619230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v690684619230 : ¬ MinimalInterpreter v690684619230 :=
  cost_cut false 1 (by decide)
private def v690684618462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v690684618462 : ¬ MinimalInterpreter v690684618462 :=
  cost_cut false 1 (by decide)
private def v690684607198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v690684607198 : ¬ MinimalInterpreter v690684607198 :=
  cost_cut false 1 (by decide)
private def v690685370846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v690685370846 : ¬ MinimalInterpreter v690685370846 :=
  cost_cut false 1 (by decide)
private def v690685372190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v690685372190 : ¬ MinimalInterpreter v690685372190 :=
  cost_cut false 1 (by decide)
private def v690685369118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v690685369118 : ¬ MinimalInterpreter v690685369118 :=
  cost_cut false 1 (by decide)
private def v690685190622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v690685190622 : ¬ MinimalInterpreter v690685190622 :=
  cost_cut false 1 (by decide)
private def v690685191966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v690685191966 : ¬ MinimalInterpreter v690685191966 :=
  cost_cut false 1 (by decide)
private def v690685188894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v690685188894 : ¬ MinimalInterpreter v690685188894 :=
  cost_cut false 1 (by decide)
private def v690685143838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v690685143838 : ¬ MinimalInterpreter v690685143838 :=
  cost_cut false 1 (by decide)
private def v690688104926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v690688104926 : ¬ MinimalInterpreter v690688104926 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v690688104158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v690688104158 : ¬ MinimalInterpreter v690688104158 :=
  cost_cut false 1 (by decide)
private def v690688124702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v690688124702 : ¬ MinimalInterpreter v690688124702 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690688121630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v690688121630 : ¬ MinimalInterpreter v690688121630 :=
  cost_cut false 1 (by decide)
theorem row332 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,0,1,3]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,0,1,3] = [v690684664286,v690684663518,v690684619230,v690684618462,v690684607198,v690685370846,v690685372190,v690685369118,v690685190622,v690685191966,v690685188894,v690685143838,v690688104926,v690688104158,v690688124702,v690688121630] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684664286) (.cons (no_v690684663518) (.cons (no_v690684619230) (.cons (no_v690684618462) (.cons (no_v690684607198) (.cons (no_v690685370846) (.cons (no_v690685372190) (.cons (no_v690685369118) (.cons (no_v690685190622) (.cons (no_v690685191966) (.cons (no_v690685188894) (.cons (no_v690685143838) (.cons (no_v690688104926) (.cons (no_v690688104158) (.cons (no_v690688124702) (.cons (no_v690688121630) .nil))))))))))))))))

private def v690684664302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v690684664302 : ¬ MinimalInterpreter v690684664302 :=
  cost_cut false 1 (by decide)
private def v690684663534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v690684663534 : ¬ MinimalInterpreter v690684663534 :=
  cost_cut false 1 (by decide)
private def v690684619246 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v690684619246 : ¬ MinimalInterpreter v690684619246 :=
  cost_cut false 1 (by decide)
private def v690684618478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v690684618478 : ¬ MinimalInterpreter v690684618478 :=
  cost_cut false 1 (by decide)
private def v690684607214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v690684607214 : ¬ MinimalInterpreter v690684607214 :=
  cost_cut false 1 (by decide)
private def v690685372302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v690685372302 : ¬ MinimalInterpreter v690685372302 :=
  cost_cut false 1 (by decide)
private def v690685369230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v690685369230 : ¬ MinimalInterpreter v690685369230 :=
  cost_cut false 1 (by decide)
private def v690685368558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v690685368558 : ¬ MinimalInterpreter v690685368558 :=
  cost_cut false 1 (by decide)
private def v690685192078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v690685192078 : ¬ MinimalInterpreter v690685192078 :=
  cost_cut false 1 (by decide)
private def v690685189006 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v690685189006 : ¬ MinimalInterpreter v690685189006 :=
  cost_cut false 1 (by decide)
private def v690685143950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v690685143950 : ¬ MinimalInterpreter v690685143950 :=
  cost_cut false 1 (by decide)
private def v690685188334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v690685188334 : ¬ MinimalInterpreter v690685188334 :=
  cost_cut false 1 (by decide)
private def v690685143278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v690685143278 : ¬ MinimalInterpreter v690685143278 :=
  cost_cut false 1 (by decide)
private def v690688124814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v690688124814 : ¬ MinimalInterpreter v690688124814 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690688121742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v690688121742 : ¬ MinimalInterpreter v690688121742 :=
  cost_cut false 1 (by decide)
private def v690688121070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v690688121070 : ¬ MinimalInterpreter v690688121070 :=
  cost_cut false 1 (by decide)
theorem row333 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,0,2,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,0,2,2] = [v690684664302,v690684663534,v690684619246,v690684618478,v690684607214,v690685372302,v690685369230,v690685368558,v690685192078,v690685189006,v690685143950,v690685188334,v690685143278,v690688124814,v690688121742,v690688121070] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684664302) (.cons (no_v690684663534) (.cons (no_v690684619246) (.cons (no_v690684618478) (.cons (no_v690684607214) (.cons (no_v690685372302) (.cons (no_v690685369230) (.cons (no_v690685368558) (.cons (no_v690685192078) (.cons (no_v690685189006) (.cons (no_v690685143950) (.cons (no_v690685188334) (.cons (no_v690685143278) (.cons (no_v690688124814) (.cons (no_v690688121742) (.cons (no_v690688121070) .nil))))))))))))))))

private def v690684664310 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v690684664310 : ¬ MinimalInterpreter v690684664310 :=
  cost_cut false 1 (by decide)
private def v690684663542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v690684663542 : ¬ MinimalInterpreter v690684663542 :=
  cost_cut false 1 (by decide)
private def v690684619254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v690684619254 : ¬ MinimalInterpreter v690684619254 :=
  cost_cut false 1 (by decide)
private def v690684618486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v690684618486 : ¬ MinimalInterpreter v690684618486 :=
  cost_cut false 1 (by decide)
private def v690684607222 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v690684607222 : ¬ MinimalInterpreter v690684607222 :=
  cost_cut false 1 (by decide)
private def v690685370870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v690685370870 : ¬ MinimalInterpreter v690685370870 :=
  cost_cut false 1 (by decide)
private def v690685368566 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v690685368566 : ¬ MinimalInterpreter v690685368566 :=
  cost_cut false 1 (by decide)
private def v690685190646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v690685190646 : ¬ MinimalInterpreter v690685190646 :=
  cost_cut false 1 (by decide)
private def v690685188342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v690685188342 : ¬ MinimalInterpreter v690685188342 :=
  cost_cut false 1 (by decide)
private def v690685143286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v690685143286 : ¬ MinimalInterpreter v690685143286 :=
  cost_cut false 1 (by decide)
private def v690688104950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v690688104950 : ¬ MinimalInterpreter v690688104950 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v690688104182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v690688104182 : ¬ MinimalInterpreter v690688104182 :=
  cost_cut false 1 (by decide)
private def v690688121078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v690688121078 : ¬ MinimalInterpreter v690688121078 :=
  cost_cut false 1 (by decide)
theorem row334 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,0,3,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,0,3,1] = [v690684664310,v690684663542,v690684619254,v690684618486,v690684607222,v690685370870,v690685368566,v690685190646,v690685188342,v690685143286,v690688104950,v690688104182,v690688121078] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684664310) (.cons (no_v690684663542) (.cons (no_v690684619254) (.cons (no_v690684618486) (.cons (no_v690684607222) (.cons (no_v690685370870) (.cons (no_v690685368566) (.cons (no_v690685190646) (.cons (no_v690685188342) (.cons (no_v690685143286) (.cons (no_v690688104950) (.cons (no_v690688104182) (.cons (no_v690688121078) .nil)))))))))))))

private def v690684665054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v690684665054 : ¬ MinimalInterpreter v690684665054 :=
  cost_cut false 1 (by decide)
private def v690684663646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v690684663646 : ¬ MinimalInterpreter v690684663646 :=
  cost_cut false 1 (by decide)
private def v690684619998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 3))))))))
private theorem no_v690684619998 : ¬ MinimalInterpreter v690684619998 :=
  cost_cut false 1 (by decide)
private def v690684618590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 3)))))))
private theorem no_v690684618590 : ¬ MinimalInterpreter v690684618590 :=
  cost_cut false 1 (by decide)
private def v690684607326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 3)))))))
private theorem no_v690684607326 : ¬ MinimalInterpreter v690684607326 :=
  cost_cut false 1 (by decide)
private def v690685375262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v690685375262 : ¬ MinimalInterpreter v690685375262 :=
  cost_cut false 1 (by decide)
private def v690685369630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v690685369630 : ¬ MinimalInterpreter v690685369630 :=
  cost_cut false 1 (by decide)
private def v690685195038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v690685195038 : ¬ MinimalInterpreter v690685195038 :=
  cost_cut false 1 (by decide)
private def v690685189406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v690685189406 : ¬ MinimalInterpreter v690685189406 :=
  cost_cut false 1 (by decide)
private def v690685144350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v690685144350 : ¬ MinimalInterpreter v690685144350 :=
  cost_cut false 1 (by decide)
private def v690688105694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v690688105694 : ¬ MinimalInterpreter v690688105694 :=
  cost_cut false 1 (by decide)
private def v690688104286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v690688104286 : ¬ MinimalInterpreter v690688104286 :=
  cost_cut false 1 (by decide)
private def v690688127774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v690688127774 : ¬ MinimalInterpreter v690688127774 :=
  cost_cut false 1 (by decide)
private def v690688122142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v690688122142 : ¬ MinimalInterpreter v690688122142 :=
  cost_cut false 1 (by decide)
theorem row335 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,1,0,3]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,1,0,3] = [v690684665054,v690684663646,v690684619998,v690684618590,v690684607326,v690685375262,v690685369630,v690685195038,v690685189406,v690685144350,v690688105694,v690688104286,v690688127774,v690688122142] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684665054) (.cons (no_v690684663646) (.cons (no_v690684619998) (.cons (no_v690684618590) (.cons (no_v690684607326) (.cons (no_v690685375262) (.cons (no_v690685369630) (.cons (no_v690685195038) (.cons (no_v690685189406) (.cons (no_v690685144350) (.cons (no_v690688105694) (.cons (no_v690688104286) (.cons (no_v690688127774) (.cons (no_v690688122142) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
