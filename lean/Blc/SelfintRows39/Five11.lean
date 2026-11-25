import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom2159514 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))
private def v725045164450 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v725045164450 : ¬ MinimalInterpreter v725045164450 :=
  chain_cut false 2 (by decide)
private def v700901815194 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v700901815194 : ¬ MinimalInterpreter v700901815194 :=
  chain_cut false 2 (by decide)
private def v699291202458 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v699291202458 : ¬ MinimalInterpreter v699291202458 :=
  chain_cut false 2 (by decide)
private def v699089875866 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v699089875866 : ¬ MinimalInterpreter v699089875866 :=
  chain_cut false 3 (by decide)
theorem atom2159514false : BadRow (sources false 2 4 atom2159514) := by
  have h : sources false 2 4 atom2159514 = [v725045164450,v700901815194,v699291202458,v699089875866] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045164450) (.cons (no_v700901815194) (.cons (no_v699291202458) (.cons (no_v699089875866) .nil))))

private def v593578151530 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)))
private theorem no_v593578151530 : ¬ MinimalInterpreter v593578151530 :=
  chain_cut false 2 (by decide)
private def v603661071258 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v603661071258 : ¬ MinimalInterpreter v603661071258 :=
  chain_cut true 2 (by decide)
private def v597016418842 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597016418842 : ¬ MinimalInterpreter v597016418842 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655607194 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v587655607194 : ¬ MinimalInterpreter v587655607194 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218620314 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v597218620314 : ¬ MinimalInterpreter v597218620314 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2159514true : BadRow (sources true 2 4 atom2159514) := by
  have h : sources true 2 4 atom2159514 = [v593578151530,v603661071258,v597016418842,v587655607194,v597218620314] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578151530) (.cons (no_v603661071258) (.cons (no_v597016418842) (.cons (no_v587655607194) (.cons (no_v597218620314) .nil)))))

private def atom2159338 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))
private def v725045161634 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725045161634 : ¬ MinimalInterpreter v725045161634 :=
  chain_cut false 2 (by decide)
private def v700901815018 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v700901815018 : ¬ MinimalInterpreter v700901815018 :=
  chain_cut false 2 (by decide)
private def v699291202282 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v699291202282 : ¬ MinimalInterpreter v699291202282 :=
  chain_cut false 2 (by decide)
private def v699089875690 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v699089875690 : ¬ MinimalInterpreter v699089875690 :=
  chain_cut false 3 (by decide)
theorem atom2159338false : BadRow (sources false 2 4 atom2159338) := by
  have h : sources false 2 4 atom2159338 = [v725045161634,v700901815018,v699291202282,v699089875690] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045161634) (.cons (no_v700901815018) (.cons (no_v699291202282) (.cons (no_v699089875690) .nil))))

private def v593578150826 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)))
private theorem no_v593578150826 : ¬ MinimalInterpreter v593578150826 :=
  chain_cut false 2 (by decide)
private def v603661071082 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v603661071082 : ¬ MinimalInterpreter v603661071082 :=
  chain_cut true 2 (by decide)
private def v597016373786 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597016373786 : ¬ MinimalInterpreter v597016373786 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655607018 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v587655607018 : ¬ MinimalInterpreter v587655607018 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218620138 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v597218620138 : ¬ MinimalInterpreter v597218620138 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2159338true : BadRow (sources true 2 4 atom2159338) := by
  have h : sources true 2 4 atom2159338 = [v593578150826,v603661071082,v597016373786,v587655607018,v597218620138] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578150826) (.cons (no_v603661071082) (.cons (no_v597016373786) (.cons (no_v587655607018) (.cons (no_v597218620138) .nil)))))

private def atom2145690 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))
private def v725044943266 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.lam (.var 0)))
private theorem no_v725044943266 : ¬ MinimalInterpreter v725044943266 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901801370 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v700901801370 : ¬ MinimalInterpreter v700901801370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291188634 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v699291188634 : ¬ MinimalInterpreter v699291188634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089862042 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v699089862042 : ¬ MinimalInterpreter v699089862042 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2145690false : BadRow (sources false 2 4 atom2145690) := by
  have h : sources false 2 4 atom2145690 = [v725044943266,v700901801370,v699291188634,v699089862042] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044943266) (.cons (no_v700901801370) (.cons (no_v699291188634) (.cons (no_v699089862042) .nil))))

private def v593578096234 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.var 0)))
private theorem no_v593578096234 : ¬ MinimalInterpreter v593578096234 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661057434 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v603661057434 : ¬ MinimalInterpreter v603661057434 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597012879898 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012879898 : ¬ MinimalInterpreter v597012879898 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655593370 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v587655593370 : ¬ MinimalInterpreter v587655593370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218606490 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v597218606490 : ¬ MinimalInterpreter v597218606490 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2145690true : BadRow (sources true 2 4 atom2145690) := by
  have h : sources true 2 4 atom2145690 = [v593578096234,v603661057434,v597012879898,v587655593370,v597218606490] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578096234) (.cons (no_v603661057434) (.cons (no_v597012879898) (.cons (no_v587655593370) (.cons (no_v597218606490) .nil)))))

private def atom2145514 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))
private def v725044940450 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044940450 : ¬ MinimalInterpreter v725044940450 :=
  chain_cut false 2 (by decide)
private def v700901801194 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v700901801194 : ¬ MinimalInterpreter v700901801194 :=
  chain_cut false 2 (by decide)
private def v699291188458 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v699291188458 : ¬ MinimalInterpreter v699291188458 :=
  chain_cut false 2 (by decide)
private def v699089861866 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v699089861866 : ¬ MinimalInterpreter v699089861866 :=
  chain_cut false 3 (by decide)
theorem atom2145514false : BadRow (sources false 2 4 atom2145514) := by
  have h : sources false 2 4 atom2145514 = [v725044940450,v700901801194,v699291188458,v699089861866] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044940450) (.cons (no_v700901801194) (.cons (no_v699291188458) (.cons (no_v699089861866) .nil))))

private def v593578095530 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 0)))
private theorem no_v593578095530 : ¬ MinimalInterpreter v593578095530 :=
  chain_cut false 2 (by decide)
private def v603661057258 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v603661057258 : ¬ MinimalInterpreter v603661057258 :=
  chain_cut true 2 (by decide)
private def v597012834842 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597012834842 : ¬ MinimalInterpreter v597012834842 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v587655593194 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v587655593194 : ¬ MinimalInterpreter v587655593194 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v597218606314 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v597218606314 : ¬ MinimalInterpreter v597218606314 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom2145514true : BadRow (sources true 2 4 atom2145514) := by
  have h : sources true 2 4 atom2145514 = [v593578095530,v603661057258,v597012834842,v587655593194,v597218606314] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578095530) (.cons (no_v603661057258) (.cons (no_v597012834842) (.cons (no_v587655593194) (.cons (no_v597218606314) .nil)))))

private def atom2142058 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))
private def v725044885154 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) (.lam (.var 0)))
private theorem no_v725044885154 : ¬ MinimalInterpreter v725044885154 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))
private def v700901797738 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v700901797738 : ¬ MinimalInterpreter v700901797738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699291185002 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v699291185002 : ¬ MinimalInterpreter v699291185002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v699089858410 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v699089858410 : ¬ MinimalInterpreter v699089858410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2142058false : BadRow (sources false 2 4 atom2142058) := by
  have h : sources false 2 4 atom2142058 = [v725044885154,v700901797738,v699291185002,v699089858410] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044885154) (.cons (no_v700901797738) (.cons (no_v699291185002) (.cons (no_v699089858410) .nil))))

private def v593578081706 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) (.var 0)))
private theorem no_v593578081706 : ¬ MinimalInterpreter v593578081706 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))
private def v603661053802 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v603661053802 : ¬ MinimalInterpreter v603661053802 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597011950106 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v597011950106 : ¬ MinimalInterpreter v597011950106 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v587655589738 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v587655589738 : ¬ MinimalInterpreter v587655589738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v597218602858 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v597218602858 : ¬ MinimalInterpreter v597218602858 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom2142058true : BadRow (sources true 2 4 atom2142058) := by
  have h : sources true 2 4 atom2142058 = [v593578081706,v603661053802,v597011950106,v587655589738,v597218602858] := by decide +kernel
  rw [h]
  exact (.cons (no_v593578081706) (.cons (no_v603661053802) (.cons (no_v597011950106) (.cons (no_v587655589738) (.cons (no_v597218602858) .nil)))))

theorem atoms33 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [2,1,0,0]) := by
  have h : atoms 2 4 [2,1,0,0] = [atom2159514,atom2159338,atom2145690,atom2145514,atom2142058] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom2159514false | exact atom2159514true) (.cons (fun lit => by cases lit <;> first | exact atom2159338false | exact atom2159338true) (.cons (fun lit => by cases lit <;> first | exact atom2145690false | exact atom2145690true) (.cons (fun lit => by cases lit <;> first | exact atom2145514false | exact atom2145514true) (.cons (fun lit => by cases lit <;> first | exact atom2142058false | exact atom2142058true) .nil)))))
theorem atoms34 : Every (fun b => ∀ lit, BadRow (sources lit 2 4 b)) (atoms 2 4 [3,0,0,0]) := by
  have h : atoms 2 4 [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms35 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,0,0,3]) := by
  have h : atoms 2 5 [0,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
