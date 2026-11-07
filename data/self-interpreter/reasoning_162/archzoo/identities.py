#!/usr/bin/env python3
"""Fixed proof leaves, replayed by Python beta reduction and the Rust KN machine."""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import json
import time

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import build
b = build.battery
import lc
b.BLAM = str(HERE / 'blam.frozen')

def pair(x,y):
    return rf'(\handler.handler ({x}) ({y}))'

def unary(n, suffix='n'):
    t = pair(build.K, suffix)
    for _ in range(n):
        t = pair(build.F, t)
    return t

def boxed(f):
    return rf'({build.BOX} ({f}))'

def resume(f):
    return rf'(\handler.handler gen ({f}))'

def run():
    start = time.monotonic()
    cases = [
        ('pointwise_box_decode', rf'\f.{boxed("f")} {build.F}', r'\f.f'),
        ('pointwise_box_application', rf'\f\g.{boxed("f")} {boxed("g")}',
         rf'\f\g.{boxed(build.APP)}'),
        ('resumption_pair_decode', rf'\gen\f.{resume("f")} {build.F}', r'\gen\f.f'),
        ('resumption_pair_diagonal', rf'\gen\f.{resume("f")} {resume("f")}',
         r'\gen\f.gen gen f f'),
        ('neutral_seed_on_lambda_payload',
         rf'\payload.\e.{build.F} e ((\q.payload q) e)', r'\payload\q.payload q'),
        ('argument_thunk_erases_suffix',
         rf'\a\e\n.{unary(0)} (\bit.bit (\junk.a) (\r.r e))', r'\a\e\n.a'),
        ('constructor_phase_is_not_environment_phase',
         rf'\n.(\e\a.(\u\v.u {build.K} n) {build.F} (\z\y.z a (y e)))',
         r'\n\e\a.n'),
        ('fold_variable',
         rf'\r.(\a\app\v.v r) {build.ABS_ALGEBRA} {build.APP_ALGEBRA} {build.I}',
         r'\r.r'),
        ('fold_abstraction',
         rf'\f.(\a\app\v.a (f a app v)) {build.ABS_ALGEBRA} {build.APP_ALGEBRA} {build.I}',
         rf'\f.{build.ABS_ALGEBRA} (f {build.ABS_ALGEBRA} {build.APP_ALGEBRA} {build.I})'),
        ('fold_application',
         rf'\f\g.(\a\app\v.app (f a app v) (g a app v)) {build.ABS_ALGEBRA} {build.APP_ALGEBRA} {build.I}',
         rf'\f\g.{build.APP_ALGEBRA} (f {build.ABS_ALGEBRA} {build.APP_ALGEBRA} {build.I}) (g {build.ABS_ALGEBRA} {build.APP_ALGEBRA} {build.I})'),
    ]
    # Q is rigid: these reader equations do not presume the parser normalizes.
    reader = rf'(\q\c\s.s {build.I} (\u.u s (s s u)) (s {build.K} q c))'
    cases.append(('whole_prefix_reader_zero',
                  rf'\q\c\r.{reader} q c ({pair(build.K,"r")})', r'\q\c\r.r q'))
    for n in [1,2,3,8,16]:
        cases.append((f'whole_prefix_reader_variable_{n}',
                      rf'\q\c\n.{reader} q c ({unary(n)})',
                      rf'\q\c\n.c ({unary(n)}) n'))
        if n == 1:
            target = 'a'
        else:
            target = rf'({unary(n-1)}) e'
        cases.append((f'whole_prefix_lookup_{n}',
                      rf'\a\e\n.({unary(n)}) {build.PREFIX_CELL}',
                      rf'\a\e\n.{target}'))
    out = []
    for name,left,right in cases:
        terms = [b.compile_lam(s) for s in [left,right]]
        py = [lc.enc(lc.nf(t, [20000])) for t in terms]
        rust = [b.normalize(b.enc(t), 1 << 16) for t in terms]
        assert py[0] == py[1] == rust[0] == rust[1], name
        out.append(dict(identity=name, python_beta=True, rust_kn=True,
                        normal_form_bits=py[0]))
    # These are finite exact counterexamples, not capped negative tests.
    negatives = []
    for candidate, source in [('argument_thunks', r'\x.x'), ('local_phase', r'\x\y.x')]:
        term = b.compile_lam((HERE/(candidate+'.lam')).read_text())
        src = b.compile_lam(source)
        got = ('L', ('L', ('A', ('A', b.shift(term, 2), ('V', 1)),
                                  b.bitlist(b.enc(src), ('V', 0)))))
        want = ('L', ('L', ('A', ('A', ('V', 1), ('L', b.shift(src, 3))), ('V', 0))))
        nfs = [lc.enc(lc.nf(t,[20000])) for t in [got,want]]
        assert nfs[0] != nfs[1]
        assert nfs == [b.normalize(b.enc(t),1<<16) for t in [got,want]]
        negatives.append(dict(candidate=candidate, source=source, got=nfs[0], want=nfs[1],
                              unequal_normal_forms=True, python_beta=True, rust_kn=True))
    result = dict(identities=out, refutations=negatives, count=len(out),
                  elapsed_seconds=round(time.monotonic()-start,3), enumeration=False)
    (HERE/'identities.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(identities=len(out), exact_refutations=len(negatives),
                         seconds=result['elapsed_seconds'])))

if __name__ == '__main__':
    run()
