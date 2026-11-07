"""92 fixed callback reductions for the depth-2, four-c corner."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
from itertools import permutations
from collections import Counter
import json
from checks import op,lc,V,A,normal_step,normal,lean,PREAMBLE
HERE=Path(__file__).resolve().parent

def trees(xs):
    if len(xs)==1:
        yield xs[0];return
    for k in range(1,len(xs)):
        for a in trees(xs[:k]):
            for b in trees(xs[k:]):yield f'({a} {b})'

def bodies(xs):
    for ss in sorted(set(permutations(xs))):yield from trees(ss)

def free(t,d=0):
    if t[0]=='V':return {t[1]-d} if t[1]>=d else set()
    if t[0]=='L':return free(t[1],d+1)
    return free(t[1],d)|free(t[2],d)

rows=[];out=PREAMBLE+r"""
def callbackHead : Term → Term
  | .app f _ => callbackHead f
  | t => t

def callbackFree (q d : Nat) : Term → Nat
  | .var n => if n=q+d then 1 else 0
  | .lam b => callbackFree q (d+1) b
  | .app f a => callbackFree q d f + callbackFree q d a

def callbackOutcome (kind : Nat) (t : Term) : Prop :=
  match kind with
  | 0 => t = .var 1 ∨ t = .app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 2)
  | 2 => callbackHead t = .var 0 ∨ callbackHead t = .var 1
  | 3 => callbackHead t = .var 1 ∨ t = .app (.app (.var 2) (.lam (.lam (.var 1)))) (.var 2)
  | _ => callbackFree 1 0 t = 0 ∨ callbackFree 2 0 t = 0 ∨
      callbackHead t = .var 0 ∨ callbackHead t = .var 1

instance (k : Nat) (t : Term) : Decidable (callbackOutcome k t) := by
  unfold callbackOutcome
  split <;> infer_instance

"""
for label,xs in [('linear','xj'),('binary','xxj'),('capture_c','cxj'),('capture_s','sxj'),('capture_c_binary','xxcj')]:
    for body in bodies(xs):
        t=A(op('\\s.s (\\x.'+body+')',('c','j','r')),lc.pair(lc.TRUE,V(2)))
        nf=t
        for steps in range(100):
            nxt=normal_step(nf)
            if nxt is None:break
            nf=nxt
        else:raise RuntimeError('unresolved')
        assert normal(nf)
        if label=='linear':assert nf in (V(1),A(A(V(1),lc.TRUE),V(2)))
        if label=='binary':
            # Every result either lacks r, lacks j, or is j-headed.
            hd=nf
            while hd[0]=='A':hd=hd[1]
            assert hd==V(1) or nf in (('L',V(3)),('L',V(2)))
        if label=='capture_c':
            hd=nf
            while hd[0]=='A':hd=hd[1]
            assert hd in (V(0),V(1))
        if label=='capture_s':
            hd=nf
            while hd[0]=='A':hd=hd[1]
            assert hd==V(1) or nf==A(A(V(2),lc.TRUE),V(2))
        if label=='capture_c_binary':
            hd=nf
            while hd[0]=='A':hd=hd[1]
            assert 1 not in free(nf) or 2 not in free(nf) or hd in (V(0),V(1))
        idx=len(rows)
        rows.append(dict(case=label,body=body,steps=steps,nf=lc.enc(nf),display=lc.show(nf)))
        kind=['linear','binary','capture_c','capture_s','capture_c_binary'].index(label)
        out+=f'theorem depth2_four_c_{idx} : Betas {lean(t)} {lean(nf)} ∧ NFt {lean(nf)} ∧ callbackOutcome {kind} {lean(nf)} :=\n  ⟨normalSteps_sound (by decide : normalSteps {steps} {lean(t)} = some {lean(nf)}), by decide, by decide⟩\n\n'
out+='end Blc.Round3Floor\n'
(HERE/'Depth2Cases.lean').write_text(out)
(HERE/'depth2-cases.json').write_text(json.dumps(rows,indent=2)+'\n')
print(json.dumps(dict(count=len(rows),cases=dict(Counter(r['case'] for r in rows)),max_steps=max(r['steps'] for r in rows)),indent=2))
