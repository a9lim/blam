import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701157405494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v701157405494 : ¬ MinimalInterpreter v701157405494 :=
  chain_cut false 5 (by decide)
private def v701157405398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v701157405398 : ¬ MinimalInterpreter v701157405398 :=
  chain_cut false 5 (by decide)
private def v701157391670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v701157391670 : ¬ MinimalInterpreter v701157391670 :=
  chain_cut true 9 (by decide)
private def v701157391574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v701157391574 : ¬ MinimalInterpreter v701157391574 :=
  chain_cut true 9 (by decide)
private def v701157388118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v701157388118 : ¬ MinimalInterpreter v701157388118 :=
  chain_cut false 6 (by decide)
private def v701156520758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v701156520758 : ¬ MinimalInterpreter v701156520758 :=
  w_cut false 0 (by decide)
private def v701156520662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v701156520662 : ¬ MinimalInterpreter v701156520662 :=
  w_cut false 0 (by decide)
private def v701156506934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156506934 : ¬ MinimalInterpreter v701156506934 :=
  chain_cut false 6 (by decide)
private def v701156285750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v701156285750 : ¬ MinimalInterpreter v701156285750 :=
  w_cut false 0 (by decide)
private def v701156506838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v701156506838 : ¬ MinimalInterpreter v701156506838 :=
  chain_cut false 6 (by decide)
private def v701156503382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v701156503382 : ¬ MinimalInterpreter v701156503382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156285654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v701156285654 : ¬ MinimalInterpreter v701156285654 :=
  w_cut false 0 (by decide)
private def v701156282198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v701156282198 : ¬ MinimalInterpreter v701156282198 :=
  chain_cut false 7 (by decide)
private def v701156226902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v701156226902 : ¬ MinimalInterpreter v701156226902 :=
  w_cut false 0 (by decide)
theorem row48 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,2,0,0,1]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,2,0,0,1] = [v701157405494,v701157405398,v701157391670,v701157391574,v701157388118,v701156520758,v701156520662,v701156506934,v701156285750,v701156506838,v701156503382,v701156285654,v701156282198,v701156226902] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157405494) (.cons (no_v701157405398) (.cons (no_v701157391670) (.cons (no_v701157391574) (.cons (no_v701157388118) (.cons (no_v701156520758) (.cons (no_v701156520662) (.cons (no_v701156506934) (.cons (no_v701156285750) (.cons (no_v701156506838) (.cons (no_v701156503382) (.cons (no_v701156285654) (.cons (no_v701156282198) (.cons (no_v701156226902) .nil))))))))))))))

private def v701157405498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v701157405498 : ¬ MinimalInterpreter v701157405498 :=
  chain_cut false 5 (by decide)
private def v701157405402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v701157405402 : ¬ MinimalInterpreter v701157405402 :=
  chain_cut false 5 (by decide)
private def v701157391674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v701157391674 : ¬ MinimalInterpreter v701157391674 :=
  chain_cut true 9 (by decide)
private def v701157391578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v701157391578 : ¬ MinimalInterpreter v701157391578 :=
  chain_cut true 9 (by decide)
private def v701157388122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v701157388122 : ¬ MinimalInterpreter v701157388122 :=
  chain_cut false 6 (by decide)
private def v701156520762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v701156520762 : ¬ MinimalInterpreter v701156520762 :=
  w_cut false 0 (by decide)
private def v701156520666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v701156520666 : ¬ MinimalInterpreter v701156520666 :=
  w_cut false 0 (by decide)
private def v701156506938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156506938 : ¬ MinimalInterpreter v701156506938 :=
  chain_cut false 6 (by decide)
private def v701156285754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v701156285754 : ¬ MinimalInterpreter v701156285754 :=
  w_cut false 0 (by decide)
private def v701156506842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v701156506842 : ¬ MinimalInterpreter v701156506842 :=
  chain_cut false 6 (by decide)
private def v701156503386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v701156503386 : ¬ MinimalInterpreter v701156503386 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156285658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v701156285658 : ¬ MinimalInterpreter v701156285658 :=
  w_cut false 0 (by decide)
private def v701156282202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v701156282202 : ¬ MinimalInterpreter v701156282202 :=
  chain_cut false 7 (by decide)
private def v701156226906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v701156226906 : ¬ MinimalInterpreter v701156226906 :=
  w_cut false 0 (by decide)
theorem row49 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,2,0,1,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,2,0,1,0] = [v701157405498,v701157405402,v701157391674,v701157391578,v701157388122,v701156520762,v701156520666,v701156506938,v701156285754,v701156506842,v701156503386,v701156285658,v701156282202,v701156226906] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157405498) (.cons (no_v701157405402) (.cons (no_v701157391674) (.cons (no_v701157391578) (.cons (no_v701157388122) (.cons (no_v701156520762) (.cons (no_v701156520666) (.cons (no_v701156506938) (.cons (no_v701156285754) (.cons (no_v701156506842) (.cons (no_v701156503386) (.cons (no_v701156285658) (.cons (no_v701156282202) (.cons (no_v701156226906) .nil))))))))))))))

private def v701157405594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v701157405594 : ¬ MinimalInterpreter v701157405594 :=
  chain_cut false 5 (by decide)
private def v701157405418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v701157405418 : ¬ MinimalInterpreter v701157405418 :=
  chain_cut false 5 (by decide)
private def v701157391770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v701157391770 : ¬ MinimalInterpreter v701157391770 :=
  chain_cut true 9 (by decide)
private def v701157391594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v701157391594 : ¬ MinimalInterpreter v701157391594 :=
  chain_cut true 9 (by decide)
private def v701157388138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v701157388138 : ¬ MinimalInterpreter v701157388138 :=
  chain_cut false 6 (by decide)
private def v701156520858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v701156520858 : ¬ MinimalInterpreter v701156520858 :=
  w_cut false 0 (by decide)
private def v701156520682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v701156520682 : ¬ MinimalInterpreter v701156520682 :=
  w_cut false 0 (by decide)
private def v701156507034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156507034 : ¬ MinimalInterpreter v701156507034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156285850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v701156285850 : ¬ MinimalInterpreter v701156285850 :=
  w_cut false 0 (by decide)
private def v701156506858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v701156506858 : ¬ MinimalInterpreter v701156506858 :=
  chain_cut false 6 (by decide)
private def v701156503402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v701156503402 : ¬ MinimalInterpreter v701156503402 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v701156285674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v701156285674 : ¬ MinimalInterpreter v701156285674 :=
  w_cut false 0 (by decide)
private def v701156282218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v701156282218 : ¬ MinimalInterpreter v701156282218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156226922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v701156226922 : ¬ MinimalInterpreter v701156226922 :=
  w_cut false 0 (by decide)
theorem row50 : BadRow (row ⟨0,2,0,2,5,5⟩ [0,0] [2,2,1,0,0]) := by
  have h : row ⟨0,2,0,2,5,5⟩ [0,0] [2,2,1,0,0] = [v701157405594,v701157405418,v701157391770,v701157391594,v701157388138,v701156520858,v701156520682,v701156507034,v701156285850,v701156506858,v701156503402,v701156285674,v701156282218,v701156226922] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157405594) (.cons (no_v701157405418) (.cons (no_v701157391770) (.cons (no_v701157391594) (.cons (no_v701157388138) (.cons (no_v701156520858) (.cons (no_v701156520682) (.cons (no_v701156507034) (.cons (no_v701156285850) (.cons (no_v701156506858) (.cons (no_v701156503402) (.cons (no_v701156285674) (.cons (no_v701156282218) (.cons (no_v701156226922) .nil))))))))))))))

private def v700952295918 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v700952295918 : ¬ MinimalInterpreter v700952295918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v700952293102 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v700952293102 : ¬ MinimalInterpreter v700952293102 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700952271342 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v700952271342 : ¬ MinimalInterpreter v700952271342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952268526 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v700952268526 : ¬ MinimalInterpreter v700952268526 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v700952262382 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v700952262382 : ¬ MinimalInterpreter v700952262382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341683182 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v699341683182 : ¬ MinimalInterpreter v699341683182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v699341680366 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v699341680366 : ¬ MinimalInterpreter v699341680366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699341658606 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v699341658606 : ¬ MinimalInterpreter v699341658606 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341655790 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v699341655790 : ¬ MinimalInterpreter v699341655790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341649646 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v699341649646 : ¬ MinimalInterpreter v699341649646 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row51 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [0,1,2,2]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [0,1,2,2] = [v700952295918,v700952293102,v700952271342,v700952268526,v700952262382,v699341683182,v699341680366,v699341658606,v699341655790,v699341649646] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952295918) (.cons (no_v700952293102) (.cons (no_v700952271342) (.cons (no_v700952268526) (.cons (no_v700952262382) (.cons (no_v699341683182) (.cons (no_v699341680366) (.cons (no_v699341658606) (.cons (no_v699341655790) (.cons (no_v699341649646) .nil))))))))))

private def v700952296686 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v700952296686 : ¬ MinimalInterpreter v700952296686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700952293230 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v700952293230 : ¬ MinimalInterpreter v700952293230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700952272110 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v700952272110 : ¬ MinimalInterpreter v700952272110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v700952268654 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v700952268654 : ¬ MinimalInterpreter v700952268654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v700952262510 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v700952262510 : ¬ MinimalInterpreter v700952262510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v699341683950 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v699341683950 : ¬ MinimalInterpreter v699341683950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699341680494 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v699341680494 : ¬ MinimalInterpreter v699341680494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699341659374 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v699341659374 : ¬ MinimalInterpreter v699341659374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341655918 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v699341655918 : ¬ MinimalInterpreter v699341655918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341649774 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v699341649774 : ¬ MinimalInterpreter v699341649774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row52 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [0,2,1,2]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [0,2,1,2] = [v700952296686,v700952293230,v700952272110,v700952268654,v700952262510,v699341683950,v699341680494,v699341659374,v699341655918,v699341649774] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952296686) (.cons (no_v700952293230) (.cons (no_v700952272110) (.cons (no_v700952268654) (.cons (no_v700952262510) (.cons (no_v699341683950) (.cons (no_v699341680494) (.cons (no_v699341659374) (.cons (no_v699341655918) (.cons (no_v699341649774) .nil))))))))))

private def v700952296694 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v700952296694 : ¬ MinimalInterpreter v700952296694 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700952293238 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v700952293238 : ¬ MinimalInterpreter v700952293238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v700952272118 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v700952272118 : ¬ MinimalInterpreter v700952272118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v700952268662 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v700952268662 : ¬ MinimalInterpreter v700952268662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
private def v700952262518 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v700952262518 : ¬ MinimalInterpreter v700952262518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
private def v699341683958 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v699341683958 : ¬ MinimalInterpreter v699341683958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699341680502 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v699341680502 : ¬ MinimalInterpreter v699341680502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v699341659382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v699341659382 : ¬ MinimalInterpreter v699341659382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341655926 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v699341655926 : ¬ MinimalInterpreter v699341655926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v699341649782 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v699341649782 : ¬ MinimalInterpreter v699341649782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row53 : BadRow (row ⟨0,3,0,2,4,5⟩ [0,0,0] [0,2,2,1]) := by
  have h : row ⟨0,3,0,2,4,5⟩ [0,0,0] [0,2,2,1] = [v700952296694,v700952293238,v700952272118,v700952268662,v700952262518,v699341683958,v699341680502,v699341659382,v699341655926,v699341649782] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952296694) (.cons (no_v700952293238) (.cons (no_v700952272118) (.cons (no_v700952268662) (.cons (no_v700952262518) (.cons (no_v699341683958) (.cons (no_v699341680502) (.cons (no_v699341659382) (.cons (no_v699341655926) (.cons (no_v699341649782) .nil))))))))))

end Blc.SelfintSingleObject.Rows39
