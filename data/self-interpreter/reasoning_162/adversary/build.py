"""Fixed algebraic constructions. No candidate enumeration."""
from pathlib import Path
import json
import sys

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
sys.dont_write_bytecode = True
sys.path[:0] = [str(ROOT / 'tools'), str(ROOT / 'tools/self-interpreter')]
import blcc
import lc

I = r'(\a.a)'
M = r'(\a \b \d.a)'
ABS = r'(c (\e \a.f (\b \r.b a (r e))))'
APP = r'(p (\g.c (\e.f e (g e))))'
Q = rf'(\b.p (\f.b {ABS} {APP}))'
V = r'(\u.s (\q.c) (s s u))'

def knot(body):
    return rf'(\x.x x) (\x.(\p.{body}) (x x))'

def parse(src, frame=()):
    p = blcc.P(src)
    named = blcc.p_lc(p)
    p.ws()
    assert p.i == len(src)
    return blcc.to_db(named, frame)

rows = []
def save(name, source, purpose, expected):
    tree = parse(source)
    (LANE / (name + '.lam')).write_text(source + '\n')
    (LANE / (name + '.blc')).write_text(blcc.encode(tree) + '\n')
    row = dict(name=name, bits=blcc.size(tree), purpose=purpose, expected=expected)
    rows.append(row)
    print(json.dumps(row))

# A third operand supplies the actual recursion resource to both arms.
# Unlike continuation_last, this moves the x x share into the Scott handoff.
Q_pass = rf'(\b \rest \p.p (\f.b {ABS} {APP}) rest)'
V_pass = r'(\u \p.s (\q.c) (s s p))'
save('parser_operand',
     rf'(\x.x x) (\x.\c \s.s {I} {V_pass} {Q_pass} (x x))',
     'Three operands after I; the final operand supplies recursion and skip force.', True)

# A correlated NEXT is an actual destructor only when the outer tag is K.
# On a variable it is already c applied to the variable value.
Q_stream = rf'(s (\tag.tag (\unused.{Q}) c))'
save('stream_dependent_next',
     knot(rf'\c \s.s {I} (\u.u (s s u)) {Q_stream}'),
     'Use the original stream to make NEXT itself the variable return prefix.', True)

# The recorded shared-head NEXT gains a continuation-extraction mode.
# For m = lambda a b d.a, Qm m I = lambda f.c, because P k I = k.
Q_mode = r'''(\b.p (\f.(b c p)
    (\y.b (\a.f (\x \r.x a (r y)))
           (c (\e.f e (y e))))))'''
save('next_continuation_mode',
     knot(rf'\c \s.s {I} (\u.s (u {M} {I}) (s s u)) {Q_mode}'),
     'Attempt to borrow K c from shared-head NEXT; the changed reset law cycles.', False)

# An independent third tag mode avoids that circular reset.
# Q K and Q F parse normally; Q T returns K c directly, with no parser call.
T = r'(\a \b \d.d)'
Q_third = r'''(\b.b
    (\d.p (\f.d f (\e \a.f (\x \r.x a (r e)))))
    (\d.p (\f.p (\g.d g (\e.f e (g e)))))
    (\q.c))'''
save('third_tag_projection',
     knot(rf'\c \s.s {I} (\u.s (u {T}) (s s u)) {Q_third}'),
     'NEXT has a literal third projection mode, exposing K c without recursive reset.', True)

# Dual operand: destructor at zero, *bare suffix* at variables. V is c r.
# This differs from zoo's dual operand, whose zero case is the completed r NEXT.
Q_suffix = rf'(s (\b.b (\unused.{Q}) (s s)))'
save('suffix_or_next',
     knot(rf'\c \s.s {I} (s (\q.c)) {Q_suffix}'),
     'The second operand is NEXT at zero and the raw suffix on variables.', True)

# Borrow the known K tag itself as the constant destructor arm, and fuse
# the two outer openings. This repairs the old c144 trailing candidate.
Q_suffix_bit = rf'(s (\b.b (b {Q}) (s s)))'
save('tail_preserving_dual',
     knot(rf'\c \s.s (\b.b {I} c) {Q_suffix_bit}'),
     'Repair c144 with a NEXT-or-suffix operand; its K arm borrows the input bit.', True)

# A correlated handler supplies an extra operand that the two branches consume.
# It is useful to retain this as an arity witness rather than claim k=2.
# Variant: the incoming stream moves to a local operand, reducing its indices.
Q_stream_pass = rf'(\b \rest \t.p (\f.b {ABS} {APP}) rest)'
V_stream_pass = r'(\u \t.t (\q.c) (t t u))'
save('stream_operand',
     knot(rf'\c \s.s {I} {V_stream_pass} {Q_stream_pass} s'),
     'Third operand is the whole stream, used locally by V and consumed by NEXT.', True)

save('right_associated_skip',
     knot(rf'\c \s.s {I} (\u.s (\q.c) (s (s s))) {Q}'),
     'Grok I5 proposed 163-bit right-associated skip; predicted N-headed suffix.', False)

# A complete splice of the already documented favourable-body cell witness.
# Its pointwise success is deliberately not asserted uniformly.
bad_abs = r'(c (\e \a.f (f a a e)))'
save('borrowed_body_cell',
     knot(rf'\c \s.s {I} {V} (\b.p (\f.b {bad_abs} {APP}))'),
     'Use the documented 17-bit exp a a e cell outside its favourable body.', False)

# A deliberately large but exact counterexample to deriving IdentityCut
# from the closed contract. H ignores the child parse and replays the parent
# through the known interpreter; J=f is a two-bit leaf and is never entered.
reference = lc.show(lc.decode((ROOT / 'data/self-interpreter/machines/int162.blc').read_text().strip())[0])
replay_head = rf'(\k \t.({reference}) c s)'
replay_app = r'(f (\g.c (\e.f e (g e))))'
save('identity_cut_counterexample',
     rf'\c \s.s {I} {V} (\b.{replay_head} (\f.b {ABS} {replay_app}))',
     'Knotless two-head skeleton, H replays the parent and J=f; IdentityCut is false.', True)

(LANE / 'candidates.json').write_text(json.dumps(rows, indent=2) + '\n')
