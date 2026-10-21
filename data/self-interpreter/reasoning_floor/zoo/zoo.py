#!/usr/bin/env python3
"""Hand-written reader zoo. No term generation or candidate enumeration."""
import hashlib
import json
import os
from pathlib import Path
import re
import sys
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT / 'tools'))
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import blcc
import lc

MACROS = {
    'I': r'(\a.a)',
    'K': r'(\a \b.a)',
    'F': r'(\a \b.b)',
    'D': r'(\a.a a)',
    'RDR': r'(\t.t (\b.b (\u \r.r next) c) (t t t))',
}
NEXT = r'(\bit1.intL (\exp.bit1 (c (\args \arg.exp (\zx \zy.zx arg (zy args)))) (intL (\exp2.c (\args.exp args (exp2 args))))))'

# Every row is individually constructed. The explanatory fields are reduction
# arguments, not guesses inferred from the finite check.
CASES = [
('01_reference165', 'control', r's (\b.b (\u \r.r next) c) (s s s)',
 'The shared suffix is R at zero and N at a variable; K drops the duplicate tail, F selects c.'),
('02_reference162', 'control', r's I (\u.s (\q.c) (s s u)) next',
 's I is K R at zero and I at a variable. V next reopens s for c r and forces the diagonal with next.'),
('03_reference164', 'control', r's (\b.b F c) (s I (s s) next)',
 'The dual operand is R next at zero and N at a variable. The outer K branch uses F to discard the tail.'),
('04_shared_return', 'shared suffix', r's (\b \r.b (\t.t next) (c r)) (s s s)',
 'Select a function of the shared suffix: application to next at zero, and c r at a variable.'),
('05_bound_suffix', 'shared suffix', r's (\b \r \t.b (t next) (c r t)) (s s s)',
 'Bind the common suffix once and use it either as the second-tag stream or the return remainder.'),
('06_bit_force', 'branch-local diagonal', r's (\b \r.b (r next) (c r (s s b)))',
 'Direct Boolean dispatch; the first bit itself is the erased force of the whole-stream diagonal.'),
('07_cell_owned_return', 'branch-local diagonal', r's (\b \r.b (r next) (s (\q.c) (r r b)))',
 'The first cell supplies c with r; the separately bound r supplies the diagonal suffix, forced by b.'),
('08_split_tail_handlers', 'split tail handlers', r's (\b.b (\r.r next) (\r.c r (r r r)))',
 'Dispatch before binding the tail. Each selected handler then receives r from the stream cell.'),
('09_tail_opens_return', 'input-owned return', r's (\b \r.b (r next) (r (\q \t.c r) (r r r)))',
 'A variable tail is always a cell. Its two fields are discarded to expose c r before the suffix is supplied.'),
('10_whole_reopen', 'input-owned return', r's (\b \r.b (r next) (s (\q.c) (s s s)))',
 'The outer opening supplies only the zero tail; both variable output positions are recovered from another whole-stream opening.'),
('11_tail_thunk', 'NEXT last', r's (\b \r.b r (\u.c r (r r u))) next',
 'The zero branch is r itself. The variable branch receives next as the erased diagonal force; this is the known 168 witness.'),
('12_whole_thunk', 'NEXT last', r's (\b \r.b r (\u.s (\q.c) (s s u))) next',
 'Use an explicit bit/tail dispatcher but reopen the whole stream inside the selected variable thunk.'),
('13_thunk_rebind_tail', 'NEXT last', r's I (\u.s (\b \r.c r (r r u))) next',
 'The variable thunk opens s and binds r once for both its returned index and its skip diagonal.'),
('14_projected_diagonal', 'NEXT last', r's I (\u.s (\q.c) ((s F) (s F) u)) next',
 'The variable thunk computes the suffix by diagonalizing two independently projected tails.'),
('15_predecessor_return', 'NEXT last', r's I (\u.(s D) (\q \r.s (\a.c)) (s s u)) next',
 'In the selected variable branch, s D is r. Opening that cell with a constant handler yields c r.'),
('16_selected_cross', 'cross application', r's I (\u.s (\q.c) (s (s I s) u)) next',
 's I s equals s on variables and R on zero. The variable-only cross application therefore diagonalizes equal whole streams.'),
('17_tail_dual', 'dual operand', r's (\b.b F c) (s (\b \r.b r (r r)) next)',
 'The dual operand chooses R or the tail diagonal before receiving next, giving R next or N.'),
('18_split_force_dual', 'dual operand', r's (\b.b F c) (s (\b \r.b (r next) (r r next)))',
 'Both arms of the dual operand consume next: the zero arm retains it, the variable arm erases it.'),
('19_bit_force_dual', 'dual operand', r's (\b.b F c) (s (\b \r.b (r next) (s s b)))',
 'The dual operand dispatches directly and uses its locally bound first bit to force the whole-stream skip.'),
('20_projected_dual', 'dual operand', r's (\b.b F c) ((s K) ((s F) next) (s s next))',
 'A projected Boolean selects between tail application and diagonal forcing; neither arm binds the tail.'),
('21_predecessor_dual', 'conditional predecessor', r's (\b.b F c) (s I ((s D) (s D)) next)',
 'Only in the variable branch, both conditional predecessors equal r; their diagonal is K N. The zero branch erases them.'),
('22_pred_adaptive_handler', 'conditional predecessor', r's D (s (\b \r.b (r next) (\q \t.c r))) (s s s)',
 's D is K at zero and r at a variable. The adaptive operand is R next or a two-field constant returning c r.'),
('23_false_pred', 'conditional predecessor', r's (\b.b F) (\q \t.s (\a.c)) (s I (s s) next)',
 'The head is F at zero and r at a variable. F keeps the dual operand; r opens the constant handler to produce c r.'),
('24_reference57', 'cell-borrowed dispatch', r's (\b.b (\u \r.r next)) (\q \t.s (\a.c)) (s s s)',
 'The known beta-prime witness: zero selects the drop-and-apply handler; the variable tail opens a constant handler.'),
('25_reference65', 'cell-borrowed dispatch', r's (\b \r.s b (b (r next) (\q \t.c r))) (s s s)',
 'The known delta witness: s b is K or r, while a separate opening retains the original tail.'),
('26_projected_pred', 'cell-borrowed dispatch', r's (s K) (s (\b \r.b (r next) (\q \t.c r))) (s s s)',
 's (s K) is K at zero and r at a variable. It controls the same adaptive result/handler interface without a source diagonal lambda.'),
('27_projection_dispatch', 'projected Boolean', r'(s K) ((s F) next) (s (\q.c) (s s s))',
 'Project the first bit to choose the two complete computations; the variable return uses stream-owned applications.'),
('28_projection_tail_return', 'projected Boolean', r'(s K) ((s F) next) ((s F) (\b \r.c (s F)) (s s s))',
 'Under the variable selection, the projected tail is a cell whose fields can be discarded to produce c of another tail projection.'),
('29_projection_pred_skip', 'projected Boolean', r'(s K) ((s F) next) (s (\q.c) ((s D) (s D) s))',
 'Only the selected variable arm diagonalizes conditional predecessors; the whole stream is its erased force.'),
('30_projection_cross_skip', 'cross application', r'(s K) ((s F) next) (s (\q.c) (s (s I s) next))',
 'The variable arm cross-applies s to the conditional R-or-s object, which equals s there; next is erased there.'),
('31_reboxed_tail', 'rebuilt tail', r's (\b \r.b (r next) (c (\h.s (\q \t.t h)) (r r r)))',
 'The returned tail is rebuilt by opening s inside a fresh handler lambda. On a variable r is a Scott cell, so the reconstruction beta-reduces to r.'),
('32_projected_rebox', 'rebuilt tail', r's (\b \r.b (r next) (c (s (\q \t.\h.h (t K) (t F))) (r r r)))',
 'A variable tail is a cell; independently projecting its bit and remainder rebuilds that exact cell, including at index one.'),
('33_function_operand', 'callback operand', r's (\b \r \f.b (r next) (f r)) (\r.c r (r r r))',
 'Pass the entire variable action as a final operand. The selected Boolean decides whether to apply it to the original tail.'),
('34_callable_suffix', 'callback operand', r's (\b \r \f.b ((f s) next) (c r (f s))) (s s)',
 'The operand is a constant suffix function K R or K N; force it with s at either use.'),
('35_cps_suffix', 'CPS operand', r's (\b \r \f.b (f (\t.t next)) (f (c r))) (\k.k (s s s))',
 'A CPS suffix receives application-to-next at zero, or the partially applied return continuation at a variable.'),
('36_pair_operand', 'pair operand', r's (\b \r \p.b (p (\a \t.a next)) (p c)) (\f.f (s F) (s s s))',
 'The operand packages tail and skip. The zero callback ignores the skip; c consumes both in the variable branch.'),
('37_diagonal_callback', 'callback operand', r's (\b \r \f.b (r next) (f f r)) (\f \r.c r (r r f))',
 'Self-apply the variable callback, using the callback itself only as the erased force of r r.'),
('38_tail_supplied_force', 'input-owned callback', r's (\b \r \f.b (r next) (r f r)) (\d \t \r.c r (r r d))',
 'The variable tail supplies its own bit d and suffix t to the callback; the final operand restores the whole original tail, and d forces its diagonal.'),
('39_selector_packet', 'second-stage packet', r's (\b \r \t.b (r (t b)) (t b r (r r t))) (\b.b next c)',
 'The packet maps the first bit to next or c. The zero branch uses it as a tag reader and the variable branch as the return continuation.'),
('40_action_packet', 'second-stage packet', r's (\b \r \t.b (t b r) (t b r (r r t))) (\b.b (\r.r next) c)',
 'The packet stores zero action lambda r.r next and variable action c. Its selected action consumes the same original tail in either branch.'),
('41_cps_packet', 'second-stage packet', r's (\b \r \t.t b (b (\u.r u) (\u.u r (r r b)))) (\b \f.f (b next c))',
 'The packet receives both the tag and a selected consumer; it supplies next or c to that consumer, using b as the variable skip force.'),
('42_reverse_packet', 'second-stage packet', r's (\b \r \t.b (r (t F)) (t K r (r r t))) (\a.a c next)',
 'A reversed Church pair stores c before next; explicit selectors extract the requested component in the two branches.'),
('43_constant_var_return', 'constant-stream instruction', r'(\read.read (s (\b \r.b s (\u \v.c r (r r r))))) RDR',
 'Preprocess variables into K(K(c r N)) and leave zero streams intact. The 165 reader sends double constants to their stored result.'),
('44_constant_zero_return', 'constant-stream instruction', r'(\read.read (s (\b \r.b (\u \v.r next) s))) RDR',
 'Preprocess zero streams into K(K(R next)) and leave variable streams intact. The reader constant-stream identity supplies the other branch.'),
]

def expand(src):
    for name, replacement in MACROS.items():
        src = re.sub(r'\b' + name + r'\b', lambda _: replacement, src)
    return src

def parse(src, frame=()):
    p = blcc.P(src)
    named = blcc.p_lc(p)
    p.ws()
    assert p.i == len(src), (p.i, src[p.i:])
    return blcc.to_db(named, frame)

def wrap(body, inline=False):
    if inline:
        body = re.sub(r'\bnext\b', lambda _: NEXT, body)
        inner = r'\s.' + body
    else:
        inner = r'(\next.\s.' + body + ') ' + NEXT
    return r'(\x.x x) (\x.(\intL.\c.' + inner + ') (x x))'

def main():
    rows, seen = [], {}
    for name, family, display, argument in CASES:
        start = time.monotonic()
        body = expand(display)
        term = parse(body, ('s', 'next', 'c', 'intL', 'x'))
        size = blcc.size(term)
        normal = lc.nf(term, [30000])
        normhash = hashlib.sha256(lc.enc(normal).encode()).hexdigest()
        duplicate = seen.get(normhash)
        seen.setdefault(normhash, name)
        # Fixed probes, not a candidate search. next, c, intL, x, R, N are rigid.
        frame = ('next', 'c', 'intL', 'x', 'R', 'N')
        fn = parse(r'\s.' + body, frame)
        cases = [('zero', lc.pair(lc.TRUE, ('V', 4)), ('A', ('V', 4), ('V', 0)))]
        for n in [*range(1, 17), 31, 64]:
            stream = lc.bitlist('1' * n + '0', ('V', 5))
            tail = lc.bitlist('1' * (n - 1) + '0', ('V', 5))
            want = ('A', ('A', ('V', 1), tail), ('V', 5))
            cases.append((str(n), stream, want))
        failures = []
        for tag, stream, want in cases:
            try:
                got = lc.nf(('A', fn, stream), [30000])
                correct = got == lc.nf(want, [30000])
                if not correct:
                    failures.append({'probe': tag, 'got': lc.show(got), 'want': lc.show(want)})
            except lc.Fuel:
                failures.append({'probe': tag, 'fuel': True})
        row = dict(name=name, family=family, body=display, expanded_body=body,
                   argument=argument, isolated_bits=size, beta_normal_bits=blcc.size(normal),
                   beta_normal_hash=normhash, duplicate=duplicate, probes=len(cases),
                   failures=failures, check_seconds=round(time.monotonic()-start, 3), frames={})
        if not failures:
            for label, inline in [('let165', False), ('inline162', True)]:
                # Inlining NEXT is sensible here only when it occurs once.
                if inline and len(re.findall(r'\bnext\b', body)) != 1:
                    continue
                src = wrap(body, inline)
                full = parse(src)
                path = LANE / 'candidates' / (name + '_' + label + '.lam')
                path.write_text(src + '\n')
                row['frames'][label] = dict(path=str(path), bits=blcc.size(full),
                                            wire=lc.enc(full))
        rows.append(row)
        print(f'{name}: body {size}, frames {[v["bits"] for v in row["frames"].values()]}, checks {len(cases)-len(failures)}/{len(cases)}, duplicate={duplicate}', flush=True)
        if failures:
            print(json.dumps(failures[:2]))
    (LANE / 'zoo.json').write_text(json.dumps(rows, indent=2) + '\n')
    print(f'{len(rows)} hand-written bodies; {len(seen)} distinct beta-normal forms; {sum(not r["failures"] for r in rows)} valid on probes')

if __name__ == '__main__':
    main()
