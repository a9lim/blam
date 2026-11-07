#!/usr/bin/env python3
"""Fixed algebra and source accounting for the 138-bit class theorem.
No term enumeration. Writes only in this directory.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,time
sys.path.insert(0,str(Path(__file__).resolve().parent))
from analyze37 import *
import blcc
HERE=Path(__file__).resolve().parent
FACTS=[]
WIRE_FACTS=[]

def named(src):
    p=blcc.P(blcc.strip_comments(src));t=blcc.p_lc(p);p.ws();assert p.i==len(p.t);return t

def op(src,vs):return blcc.to_db(named(src),vs)

def replace_named(t,needle,replacement):
    if t==needle:return replacement
    if t[0]=='var':return t
    if t[0]=='lam':return ('lam',t[1],replace_named(t[2],needle,replacement))
    return ('app',replace_named(t[1],needle,replacement),replace_named(t[2],needle,replacement))

def find_next(t):
    if t[0]=='lam' and t[1]=='bit1':return t
    if t[0]=='lam':return find_next(t[2])
    if t[0]=='app':return find_next(t[1]) or find_next(t[2])
    return None

def normal_step(t):
    if t[0]=='V':return None
    if t[0]=='L':
        u=normal_step(t[1]);return None if u is None else L(u)
    if t[1][0]=='L':return lc.beta(t[1],t[2])
    u=normal_step(t[1])
    if u is not None:return A(u,t[2])
    u=normal_step(t[2]);return None if u is None else A(t[1],u)

def fact(label,t,want):
    cur=t
    for k in range(1000):
        if cur==want:
            FACTS.append((label,t,k,want));return k
        nxt=normal_step(cur)
        assert nxt is not None,(label,lc.show(cur),lc.show(want))
        cur=nxt
    raise RuntimeError(label)

def lean(t):
    if t[0]=='V':return f'(.var {t[1]})'
    if t[0]=='L':return f'(.lam {lean(t[1])})'
    return f'(.app {lean(t[1])} {lean(t[2])})'

def collect():
    rows=[]
    for size in (162,165):
        src=(ROOT/f'data/self-interpreter/machines/int{size}.lam').read_text()
        whole=named(src);e=blcc.to_db(whole)
        gen=whole[2];h=gen[2][1];q=find_next(h)
        assert h[0:2]==('lam','intL') and h[2][0:2]==('lam','cont')
        hdb=blcc.to_db(h,('x',));assert not free(hdb)
        raw_r=h[2][2];r=replace_named(raw_r,q,('var','opaque_next'))
        rdb=blcc.to_db(r,('cont','opaque_next'))
        qbase=blcc.to_db(q,('cont','intL'))
        assert normal(qbase) and lc.size(qbase)==92
        # Locate actual q wire price by equality in this source's environment.
        qactual=blcc.to_db(q,('list','cont','intL','x') if size==162 else ('cont','intL','x'))
        # H = lambda p c.R, one closed insertion into 20-bit knot.
        context_cost=lc.size(hdb)-4-lc.size(qactual)
        assert lc.size(e)==size and lc.size(hdb)+20==size
        assert context_cost==(42 if size==162 else 49)
        # c=var0, q=var1, N=var2, R=var3, all independent rigid.
        z=lc.pair(lc.TRUE,V(3))
        fact(f'reader{size}_zero',A(rdb,z),A(V(3),V(1)))
        for n in (1,2,4,9):
            s=lc.bitlist('1'*n+'0',V(2));tail=lc.bitlist('1'*(n-1)+'0',V(2))
            fact(f'reader{size}_var{n}',A(rdb,s),A(A(V(0),tail),V(2)))
        rows.append(dict(machine=size,knot=20,functional=lc.size(hdb),outer_lambdas=4,next_base=92,next_actual=lc.size(qactual),reader_context=context_cost))
    # The complete application-only algebra is already forced at n=1.
    s=lc.bitlist('10',V(2));tail=lc.bitlist('0',V(2));q=L(V(3)) # lambda u.N
    fact('stream_square',A(s,s),q)
    fact('stream_constant_suffix',A(s,q),A(V(2),tail))
    for label,t in [('stream',s),('suffix',q),('neutral',A(V(0),V(1)))]:
        fact('constant_on_'+label,A(q,t),V(2))
    fact('stream_on_neutral',A(s,A(V(0),V(1))),A(A(A(V(0),V(1)),lc.FALSE),tail))
    # Reference Q branch equations with p,c,t independent and canonical values.
    qsrc=r'\b.p (\f.b (c (\e\a.f (\d\r.d a (r e)))) (p (\g.c (\e.f e (g e)))))'
    qdb=op(qsrc,('c','p','t'))
    want0=op(r'p (\f.c (\e\a.f (\d\r.d a (r e)))) t',('c','p','t'))
    want1=op(r'p (\f.p (\g.c (\e.f e (g e)))) t',('c','p','t'))
    fact('next_zero',A(A(qdb,lc.TRUE),V(2)),want0)
    fact('next_one',A(A(qdb,lc.FALSE),V(2)),want1)
    af=r'(\e\a.f (\b\r.b a (r e)))'
    bf=r'(\g.c (\e.f e (g e)))'
    k0=r'(\f.c '+af+')';k1=r'(\f.p '+bf+')'
    t0='(p '+k0+')';t1='(p '+k1+')'
    eta0=r'(\r.'+t0+' r)';eta1=r'(\r.'+t1+' r)'
    inner=r'(\f.b (c '+af+') (p '+bf+'))'
    forms=[(r'\b.b '+t0+' '+t1,99),(r'\b.p (b '+k0+' '+k1+')',93),
           (r'\b.p '+inner,92),(r'\b.b '+t0+' '+eta1,108),
           (r'\b.b '+eta0+' '+t1,107),(r'\b.b '+eta0+' '+eta1,116),
           (r'\b\r.b ('+t0+' r) ('+t1+' r)',115),
           (r'\b\r.p (b '+k0+' '+k1+') r',104),
           (r'\b\r.p '+inner+' r',103)]
    def free_occs(t,d=0):
        if t[0]=='V':return int(t[1]>=d)
        if t[0]=='L':return free_occs(t[1],d+1)
        return free_occs(t[1],d)+free_occs(t[2],d)
    for i,(src,size) in enumerate(forms):
        t=op(src,('c','p'));assert normal(t) and lc.size(t)==size
        occs=free_occs(t);assert occs>=4
        WIRE_FACTS.append((f'next_form_{i}',t,size,occs))
    return rows

PREAMBLE=r'''/- Fixed beta facts supporting floor138.md. The size theorem itself remains handwritten. -/
import Blc.SelfintKnot
import Blc.Wire

namespace Blc.Round3Floor
open Term
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def normalStep : Term → Option Term
  | .var _ => none
  | .lam b => (normalStep b).map .lam
  | .app f a => match f with
    | .lam b => some (contract b a)
    | _ => match normalStep f with
      | some f' => some (.app f' a)
      | none => (normalStep a).map (.app f)

theorem normalStep_sound {t u : Term} (h : normalStep t = some u) : Beta t u := by
  induction t generalizing u with
  | var n => simp [normalStep] at h
  | lam b ih =>
      simp only [normalStep, Option.map_eq_some_iff] at h
      obtain ⟨b', hb, rfl⟩ := h
      exact .lam (ih hb)
  | app f a ihf iha =>
      cases f with
      | var n =>
          simp only [normalStep, Option.map_eq_some_iff] at h
          obtain ⟨a', ha, rfl⟩ := h
          exact .appR _ (iha ha)
      | lam b =>
          simp only [normalStep, Option.some.injEq] at h
          subst u
          exact .beta _ _
      | app g x =>
          change (match normalStep (.app g x) with
            | some f' => some (.app f' a)
            | none => (normalStep a).map (.app (.app g x))) = some u at h
          cases hf : normalStep (.app g x) with
          | none =>
              simp only [hf, Option.map_eq_some_iff] at h
              obtain ⟨a', ha, rfl⟩ := h
              exact .appR _ (iha ha)
          | some f' =>
              simp only [hf, Option.some.injEq] at h
              subst u
              exact .appL _ (ihf hf)

def normalSteps : Nat → Term → Option Term
  | 0, t => some t
  | n+1, t => (normalStep t).bind (normalSteps n)

theorem normalSteps_sound {n : Nat} {t u : Term}
    (h : normalSteps n t = some u) : Betas t u := by
  induction n generalizing t with
  | zero => simp only [normalSteps, Option.some.injEq] at h; subst u; exact .refl _
  | succ n ih =>
      simp only [normalSteps, Option.bind_eq_some_iff] at h
      obtain ⟨v, hv, hrest⟩ := h
      exact .head (normalStep_sound hv) (ih hrest)

'''

if __name__=='__main__':
    start=time.monotonic();rows=collect()
    (HERE/'checks.json').write_text(json.dumps(dict(accounting=rows,identities=[dict(name=n,steps=k) for n,_,k,_ in FACTS],next_forms=[dict(name=n,bits=s,free_occurrences=f) for n,_,s,f in WIRE_FACTS],seconds=time.monotonic()-start),indent=2)+'\n')
    output=PREAMBLE
    for label,t,k,u in FACTS:
        output+=f'theorem {label} : Betas {lean(t)} {lean(u)} :=\n  normalSteps_sound (by decide : normalSteps {k} {lean(t)} = some {lean(u)})\n\n'
    for label,t,size,occs in WIRE_FACTS:
        output+=f'theorem {label}_size : (blcCode {lean(t)}).length = {size} := by decide\n'
        output+=f'theorem {label}_free : SelfintLowerBound.freeLeaves 0 {lean(t)} = {occs} := by decide\n\n'
    output+='end Blc.Round3Floor\n'
    (HERE/'Facts.lean').write_text(output)
    print(json.dumps(dict(accounting=rows,facts=len(FACTS),seconds=time.monotonic()-start),indent=2))
