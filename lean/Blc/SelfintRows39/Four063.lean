import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700482440826 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v700482440826 : ¬ MinimalInterpreter v700482440826 :=
  cost_cut false 2 (by decide)
private def v700482440122 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v700482440122 : ¬ MinimalInterpreter v700482440122 :=
  cost_cut false 2 (by decide)
private def v700482418298 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v700482418298 : ¬ MinimalInterpreter v700482418298 :=
  cost_cut false 2 (by decide)
private def v700482417594 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v700482417594 : ¬ MinimalInterpreter v700482417594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700482411962 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v700482411962 : ¬ MinimalInterpreter v700482411962 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700482784890 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v700482784890 : ¬ MinimalInterpreter v700482784890 :=
  cost_cut false 2 (by decide)
private def v700482784186 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v700482784186 : ¬ MinimalInterpreter v700482784186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v700482700922 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v700482700922 : ¬ MinimalInterpreter v700482700922 :=
  chain_cut false 2 (by decide)
private def v700482679226 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v700482679226 : ¬ MinimalInterpreter v700482679226 :=
  chain_cut false 2 (by decide)
theorem row378 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,1,2,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,1,2,0] = [v700482440826,v700482440122,v700482418298,v700482417594,v700482411962,v700482784890,v700482784186,v700482700922,v700482679226] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482440826) (.cons (no_v700482440122) (.cons (no_v700482418298) (.cons (no_v700482417594) (.cons (no_v700482411962) (.cons (no_v700482784890) (.cons (no_v700482784186) (.cons (no_v700482700922) (.cons (no_v700482679226) .nil)))))))))

private def v700482441014 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v700482441014 : ¬ MinimalInterpreter v700482441014 :=
  cost_cut false 2 (by decide)
private def v700482440150 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v700482440150 : ¬ MinimalInterpreter v700482440150 :=
  cost_cut false 2 (by decide)
private def v700482418486 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v700482418486 : ¬ MinimalInterpreter v700482418486 :=
  cost_cut false 2 (by decide)
private def v700482417622 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v700482417622 : ¬ MinimalInterpreter v700482417622 :=
  cost_cut false 2 (by decide)
private def v700482411990 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v700482411990 : ¬ MinimalInterpreter v700482411990 :=
  cost_cut false 2 (by decide)
private def v700482785078 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v700482785078 : ¬ MinimalInterpreter v700482785078 :=
  cost_cut false 2 (by decide)
private def v700482784214 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v700482784214 : ¬ MinimalInterpreter v700482784214 :=
  cost_cut false 2 (by decide)
private def v700482796742 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v700482796742 : ¬ MinimalInterpreter v700482796742 :=
  chain_cut false 2 (by decide)
private def v700482793286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))
private theorem no_v700482793286 : ¬ MinimalInterpreter v700482793286 :=
  chain_cut false 2 (by decide)
private def v700482706630 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v700482706630 : ¬ MinimalInterpreter v700482706630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482703174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))
private theorem no_v700482703174 : ¬ MinimalInterpreter v700482703174 :=
  chain_cut false 2 (by decide)
private def v700482680646 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v700482680646 : ¬ MinimalInterpreter v700482680646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row379 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,2,0,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,2,0,1] = [v700482441014,v700482440150,v700482418486,v700482417622,v700482411990,v700482785078,v700482784214,v700482796742,v700482793286,v700482706630,v700482703174,v700482680646] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482441014) (.cons (no_v700482440150) (.cons (no_v700482418486) (.cons (no_v700482417622) (.cons (no_v700482411990) (.cons (no_v700482785078) (.cons (no_v700482784214) (.cons (no_v700482796742) (.cons (no_v700482793286) (.cons (no_v700482706630) (.cons (no_v700482703174) (.cons (no_v700482680646) .nil))))))))))))

private def v700482441018 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v700482441018 : ¬ MinimalInterpreter v700482441018 :=
  cost_cut false 2 (by decide)
private def v700482440154 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v700482440154 : ¬ MinimalInterpreter v700482440154 :=
  cost_cut false 2 (by decide)
private def v700482418490 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v700482418490 : ¬ MinimalInterpreter v700482418490 :=
  cost_cut false 2 (by decide)
private def v700482417626 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v700482417626 : ¬ MinimalInterpreter v700482417626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700482411994 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v700482411994 : ¬ MinimalInterpreter v700482411994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700482785082 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v700482785082 : ¬ MinimalInterpreter v700482785082 :=
  cost_cut false 2 (by decide)
private def v700482784218 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v700482784218 : ¬ MinimalInterpreter v700482784218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v700482793242 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))
private theorem no_v700482793242 : ¬ MinimalInterpreter v700482793242 :=
  chain_cut false 2 (by decide)
private def v700482703130 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))
private theorem no_v700482703130 : ¬ MinimalInterpreter v700482703130 :=
  chain_cut false 2 (by decide)
private def v700482680602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))
private theorem no_v700482680602 : ¬ MinimalInterpreter v700482680602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row380 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,2,1,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,2,1,0] = [v700482441018,v700482440154,v700482418490,v700482417626,v700482411994,v700482785082,v700482784218,v700482793242,v700482703130,v700482680602] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482441018) (.cons (no_v700482440154) (.cons (no_v700482418490) (.cons (no_v700482417626) (.cons (no_v700482411994) (.cons (no_v700482785082) (.cons (no_v700482784218) (.cons (no_v700482793242) (.cons (no_v700482703130) (.cons (no_v700482680602) .nil))))))))))

private def v700482441114 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v700482441114 : ¬ MinimalInterpreter v700482441114 :=
  chain_cut false 2 (by decide)
private def v700482440170 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v700482440170 : ¬ MinimalInterpreter v700482440170 :=
  chain_cut false 2 (by decide)
private def v700482418586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v700482418586 : ¬ MinimalInterpreter v700482418586 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v700482417642 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v700482417642 : ¬ MinimalInterpreter v700482417642 :=
  chain_cut false 2 (by decide)
private def v700482412010 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v700482412010 : ¬ MinimalInterpreter v700482412010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v700482701210 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))
private theorem no_v700482701210 : ¬ MinimalInterpreter v700482701210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v700482679274 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))
private theorem no_v700482679274 : ¬ MinimalInterpreter v700482679274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
theorem row381 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [1,3,0,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [1,3,0,0] = [v700482441114,v700482440170,v700482418586,v700482417642,v700482412010,v700482701210,v700482679274] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482441114) (.cons (no_v700482440170) (.cons (no_v700482418586) (.cons (no_v700482417642) (.cons (no_v700482412010) (.cons (no_v700482701210) (.cons (no_v700482679274) .nil)))))))

private def v700482820494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v700482820494 : ¬ MinimalInterpreter v700482820494 :=
  chain_cut false 2 (by decide)
private def v700482819726 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))
private theorem no_v700482819726 : ¬ MinimalInterpreter v700482819726 :=
  chain_cut false 2 (by decide)
private def v700482709902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v700482709902 : ¬ MinimalInterpreter v700482709902 :=
  chain_cut false 2 (by decide)
private def v700482709134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))
private theorem no_v700482709134 : ¬ MinimalInterpreter v700482709134 :=
  chain_cut false 2 (by decide)
private def v700482681486 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v700482681486 : ¬ MinimalInterpreter v700482681486 :=
  chain_cut false 2 (by decide)
theorem row382 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [2,0,0,2]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [2,0,0,2] = [v700482820494,v700482819726,v700482709902,v700482709134,v700482681486] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482820494) (.cons (no_v700482819726) (.cons (no_v700482709902) (.cons (no_v700482709134) (.cons (no_v700482681486) .nil)))))

private def v700482446966 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v700482446966 : ¬ MinimalInterpreter v700482446966 :=
  cost_cut false 2 (by decide)
private def v700482446774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v700482446774 : ¬ MinimalInterpreter v700482446774 :=
  cost_cut false 2 (by decide)
private def v700482419318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v700482419318 : ¬ MinimalInterpreter v700482419318 :=
  cost_cut false 2 (by decide)
private def v700482419126 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v700482419126 : ¬ MinimalInterpreter v700482419126 :=
  cost_cut false 2 (by decide)
private def v700482412214 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v700482412214 : ¬ MinimalInterpreter v700482412214 :=
  cost_cut false 2 (by decide)
private def v700482820550 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v700482820550 : ¬ MinimalInterpreter v700482820550 :=
  chain_cut false 2 (by decide)
private def v700482819782 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))
private theorem no_v700482819782 : ¬ MinimalInterpreter v700482819782 :=
  chain_cut false 2 (by decide)
private def v700482819638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))
private theorem no_v700482819638 : ¬ MinimalInterpreter v700482819638 :=
  chain_cut false 2 (by decide)
private def v700482709958 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v700482709958 : ¬ MinimalInterpreter v700482709958 :=
  chain_cut false 2 (by decide)
private def v700482709190 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))
private theorem no_v700482709190 : ¬ MinimalInterpreter v700482709190 :=
  chain_cut false 2 (by decide)
private def v700482681542 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v700482681542 : ¬ MinimalInterpreter v700482681542 :=
  chain_cut false 2 (by decide)
private def v700482709046 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))
private theorem no_v700482709046 : ¬ MinimalInterpreter v700482709046 :=
  chain_cut false 2 (by decide)
private def v700482681398 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1))))))
private theorem no_v700482681398 : ¬ MinimalInterpreter v700482681398 :=
  chain_cut false 2 (by decide)
theorem row383 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [2,0,1,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [2,0,1,1] = [v700482446966,v700482446774,v700482419318,v700482419126,v700482412214,v700482820550,v700482819782,v700482819638,v700482709958,v700482709190,v700482681542,v700482709046,v700482681398] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482446966) (.cons (no_v700482446774) (.cons (no_v700482419318) (.cons (no_v700482419126) (.cons (no_v700482412214) (.cons (no_v700482820550) (.cons (no_v700482819782) (.cons (no_v700482819638) (.cons (no_v700482709958) (.cons (no_v700482709190) (.cons (no_v700482681542) (.cons (no_v700482709046) (.cons (no_v700482681398) .nil)))))))))))))

end Blc.SelfintSingleObject.Rows39
