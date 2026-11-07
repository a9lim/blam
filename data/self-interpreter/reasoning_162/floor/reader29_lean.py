"""Export the 3484 fixed refutations to Lean, with no enumeration."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
from checks import PREAMBLE,lean,lc,A,V
HERE=Path(__file__).resolve().parent
result=json.loads((HERE/'reader29.json').read_text())
src=PREAMBLE
src+=r'''
/-- A checked normal form different from the target refutes beta joinability. -/
theorem reject_by_nf {t u v : Term} (hr : Betas t u)
    (hu : NFt u) (hv : NFt v) (hne : u ≠ v) : ¬ BetaJoin t v := by
  intro hj
  obtain ⟨w, htw, hvw⟩ := hj
  have hnu : NormalForm u := fun _ hb => nft_no_beta hu hb
  have hnv : NormalForm v := fun _ hb => nft_no_beta hv hb
  have hw := normalForm_betas_eq hnv hvw
  have htv : Betas t v := by simpa [hw] using htw
  exact hne (normalForm_unique hr htv hnu hnv)

'''
for i,row in enumerate(result['rows']):
    r,_=lc.decode(row['reader']);nf,_=lc.decode(row['nf'])
    if row['probe']=='zero':
        inp=lc.pair(lc.TRUE,V(3));want=A(V(3),V(1))
    else:
        inp=lc.bitlist('10',V(2));want=A(A(V(0),lc.bitlist('0',V(2))),V(2))
    start=A(r,inp);k=row['steps']
    src+=f'theorem reader29_reject_{i} : ¬ BetaJoin {lean(start)} {lean(want)} :=\n'
    src+=f'  reject_by_nf (normalSteps_sound (by decide : normalSteps {k} {lean(start)} = some {lean(nf)}))\n'
    src+='    (by decide) (by decide) (by decide)\n\n'
src+='end Blc.Round3Floor\n'
(HERE/'ReaderChecks.lean').write_text(src)
print('exported',len(result['rows']),'kernel refutations;',len(src),'bytes')
