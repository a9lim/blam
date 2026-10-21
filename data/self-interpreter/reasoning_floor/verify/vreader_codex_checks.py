#!/usr/bin/env python3
"""Hand-selected reader-proof counterchecks; no reader enumeration.

The lane's named-term helpers and untagged normalizer are used for comparison.
An independent, origin-tagged de Bruijn normalizer checks the residual claims.
"""
from pathlib import Path
import json
import sys
import time

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / 'tmp/overnight/reader-proof/tools'))
from rt import A, L, V, K, F, I, P, zero, cons, db, size, counts, laws, eq, nf, subst_s, lc, FRAME, RIGID, delta


def tag(t, origin='B'):
    if t[0] == 'V':
        return ('V', t[1], origin)
    if t[0] == 'L':
        return ('L', tag(t[1], origin + '.b'), origin)
    return ('A', tag(t[1], origin + '.f'), tag(t[2], origin + '.a'), origin)


def strip(t):
    if t[0] == 'V':
        return t[:2]
    if t[0] == 'L':
        return ('L', strip(t[1]))
    return ('A', strip(t[1]), strip(t[2]))


def shift(t, amount, cutoff=0):
    if t[0] == 'V':
        return ('V', t[1] + amount if t[1] >= cutoff else t[1], t[-1])
    if t[0] == 'L':
        return ('L', shift(t[1], amount, cutoff + 1), t[-1])
    return ('A', shift(t[1], amount, cutoff), shift(t[2], amount, cutoff), t[-1])


def contract(body, arg, depth=0):
    if body[0] == 'V':
        if body[1] == depth:
            return shift(arg, depth)
        return ('V', body[1] - (body[1] > depth), body[-1])
    if body[0] == 'L':
        return ('L', contract(body[1], arg, depth + 1), body[-1])
    return ('A', contract(body[1], arg, depth), contract(body[2], arg, depth), body[-1])


def tagged_nf(term, fuel=100000):
    events = []
    def whnf(t):
        nonlocal fuel
        if t[0] != 'A':
            return t
        f = whnf(t[1])
        while f[0] == 'L':
            fuel -= 1
            if fuel < 0:
                raise RuntimeError('tagged normalizer fuel exhausted')
            events.append((t[-1], f[-1]))
            t = contract(f[1], t[2])
            if t[0] != 'A':
                return t
            f = whnf(t[1])
        return ('A', f, t[2], t[-1])
    def go(t):
        t = whnf(t)
        if t[0] == 'V':
            return t
        if t[0] == 'L':
            return ('L', go(t[1]), t[-1])
        return ('A', go(t[1]), go(t[2]), t[-1])
    return go(term), events


def tagged_stream_subst(body, stream):
    original = tag(db(body, FRAME + RIGID))
    def go(t, depth=0):
        if t[0] == 'V':
            if t[1] == depth:  # the ambient free s
                return shift(tag(db(stream, FRAME + RIGID), 'stream@' + t[-1]), depth)
            return t
        if t[0] == 'L':
            return ('L', go(t[1], depth + 1), t[-1])
        return ('A', go(t[1], depth), go(t[2], depth), t[-1])
    return go(original)


def syntactic_redex_deltas(t):
    found = []
    def visit(u, path='B'):
        if u[0] == 'L':
            visit(u[1], path + '.b')
        elif u[0] == 'A':
            if u[1][0] == 'L':
                found.append((path, delta(u[1][1], u[2])))
            visit(u[1], path + '.f')
            visit(u[2], path + '.a')
    visit(db(t, FRAME + RIGID))
    return found


def show(t):
    return lc.show(strip(t), names=FRAME + RIGID)


s, nxt, c, b, r, f = map(V, ['s', 'next', 'cont', 'b', 'r', 'f'])
Z = L('u', 'r', A(r, nxt))
standard = A(s, L('b', A(b, Z, c)), A(s, s, s))

# n_P is made by the SECOND stream cell, inside the variable arm.
second_cell = A(s, L('b', A(b, L('r', A(r, nxt)),
    L('r', A(s, L('q', c), A(r, r, r))))))

# One source application a b supplies both output application nodes.
app = L('a', 'b', A(V('a'), V('b')))
copied_app_reader = A(L('f', A(s, L('b', A(b,
    L('u', 'r', A(f, r, nxt)),
    L('r', A(f, A(f, c, r))))), A(s, s, s))), app)

# The only source redex now EXPANDS, so T10's necessary condition does
# not exclude ordinary finite higher-order sharing either.
copied_app_nonshrinking = A(L('f', A(s, L('b', A(b,
    L('u', 'r', A(f, r, nxt)),
    L('r', A(f, A(f, c, r))))), A(f, A(f, s, s), s))), app)

# The output tail's root lambda comes from B, but its two body application
# nodes come from the stream. The claimed literal-rebuilding cost is wrong.
rebuilt_tail = A(s, L('b', 'r', A(b, A(r, nxt),
    A(c, L('h', A(r, V('h'))), A(r, r, r)))))

# Shape alpha's claimed >=64 subcase has a 59-bit beta-normal inhabitant.
dual_output_operand = A(s, L('b', 'r', A(b, A(r, nxt), A(r, r, r))))
alpha_dual_operand = A(s, L('b', A(b, F, c)), dual_output_operand)

# A single non-shrinking redex below 43 bits, with two unequal residuals
# of the one original a b node and no recursive walker.
copied_app_small = A(L('f', A(f, A(f, nxt, c), s)), app)

# The claim that a let on the free s leaf always shrinks fails at depth 2.
deep_leaf_let = L('a', 'b', A(L('y', A(V('y'), V('y'), V('y'), V('y'), V('y'))), s))

# A linear hoist with only TWO free leaves and a positive beta delta.
two_free_hoist = A(L('y', L('a', 'b', 'c1', 'd', 'e', 'f1', 'g', 'h', V('y'))), A(nxt, c))

# A concrete self-passing suffix walker, taken as a hand-designed term,
# not an enumeration. W consumes the bit and tail and receives itself.
W = L('b', 'r', 'w', A(b, r, A(r, V('w'), V('w'))))
walk_skip = A(s, W, W)
walker_reader = A(s, L('b', A(b, Z, c)), walk_skip)
walk_skip_shared = A(L('w', A(s, V('w'), V('w'))), W)
walker_reader_shared = A(s, L('b', A(b, Z, c)), walk_skip_shared)


def main():
    start = time.perf_counter()
    info = {}
    readers = {'standard': standard, 'second_cell': second_cell,
               'copied_app_reader': copied_app_reader,
               'copied_app_nonshrinking': copied_app_nonshrinking,
               'rebuilt_tail': rebuilt_tail,
               'alpha_dual_operand': alpha_dual_operand,
               'walker_reader': walker_reader,
               'walker_reader_shared': walker_reader_shared}
    for name, term in readers.items():
        assert laws(term, ns=range(1, 65), fuel=100000)
        info[name] = {'bits': size(term), 'LAX': counts(db(term, FRAME)),
                      'laws': 'zero and n=1..64 pass',
                      'source_redex_deltas': syntactic_redex_deltas(term)}
        got, events = tagged_nf(tagged_stream_subst(term, P(3)))
        assert strip(got) == nf(subst_s(term, P(3)))
        info[name]['n_P_origin'] = got[1][-1]
        info[name]['n_N_origin'] = got[-1]
        info[name]['output_origin_also_consumed'] = any(
            app_origin == got[-1] for app_origin, _ in events)
        if name == 'rebuilt_tail':
            tail = got[1][2]
            info[name]['tail_root_origin'] = tail[-1]
            info[name]['tail_body_application_origins'] = [tail[1][-1], tail[1][1][-1]]
    assert info['standard']['bits'] == 43
    assert info['second_cell']['bits'] == 52
    assert not info['second_cell']['source_redex_deltas']
    assert info['second_cell']['n_P_origin'].startswith('stream@B.a.')
    assert info['copied_app_reader']['n_P_origin'] == info['copied_app_reader']['n_N_origin']
    assert info['copied_app_nonshrinking']['source_redex_deltas'] == [('B', 17)]
    assert info['copied_app_nonshrinking']['n_P_origin'] == info['copied_app_nonshrinking']['n_N_origin']
    assert info['copied_app_nonshrinking']['output_origin_also_consumed']
    assert size(dual_output_operand) == 34
    assert info['alpha_dual_operand']['bits'] == 59
    assert not info['alpha_dual_operand']['source_redex_deltas']
    for name, term in [('copied_app_small', copied_app_small),
                       ('deep_leaf_let', deep_leaf_let),
                       ('two_free_hoist', two_free_hoist)]:
        d = db(term, FRAME + RIGID)
        got, events = tagged_nf(tag(d))
        assert strip(got) == lc.nf(d, [100000])
        info[name] = {'bits': size(term), 'nf_bits': lc.size(strip(got)),
                      'source_redex_deltas': syntactic_redex_deltas(term),
                      'normal_form': show(got)}
        if name == 'copied_app_small':
            assert got[-1] == got[1][-1]
            info[name]['two_output_applications_origin'] = got[-1]
    assert info['copied_app_small']['source_redex_deltas'] == [('B', 0)]
    assert info['deep_leaf_let']['source_redex_deltas'] == [('B.b.b', 2)]
    assert info['two_free_hoist']['source_redex_deltas'] == [('B', 2)]

    # Omitted last-cell head: I from the INNER lambda of a DATA F.
    # P_0 ((P_1 K) s) s -> P_0 I s -> (K N) s -> N.
    last_i = A(P(0), A(P(1), K, s), s)
    assert eq(last_i, V('N'))
    assert eq(A(P(0), I), A(K, V('N')))
    info['last_cell_I'] = {'P0_I_is_K_N': True, 'P0_((P1_K)_s)_s_is_N': True}

    # A created stream application can itself contract another cell.
    # S S -> S beta tau -> beta beta tau tau.
    symbolic = cons(V('beta'), V('tau'))
    got, events = tagged_nf(tagged_stream_subst(A(s, s), symbolic))
    created_steps = [(app_origin, lam_origin) for app_origin, lam_origin in events
                     if app_origin.startswith('stream@') and lam_origin.startswith('stream@')]
    assert created_steps
    info['created_cell_step'] = {'normal_form': show(got), 'redex_origins': created_steps,
                                'source_bits': size(A(s, s))}

    # A dual-valued operand needs no fresh selection machinery.
    assert eq(subst_s(A(s, F), zero()), V('R'))
    for n in range(1, 65):
        assert eq(subst_s(A(s, F), P(n)), P(n - 1))
        assert eq(subst_s(walk_skip, P(n)), V('N'))
    info['dual_operand'] = {'s_F_bits': size(A(s, F)), 'sss_bits': size(A(s, s, s)),
                           's_F_zero_R_var_tail': True}

    # Splice only the hand-selected examples into the actual interpreter.
    def lam_text(t):
        if t[0] == 'V':
            return 'list' if t[1] == 's' else t[1]
        if t[0] == 'L':
            return '(\\' + t[1] + '. ' + lam_text(t[2]) + ')'
        return '(' + lam_text(t[1]) + ' ' + lam_text(t[2]) + ')'
    original = (ROOT / 'data/self-interpreter/machines/int165.lam').read_text()
    needle = 'list (\\bit0. bit0 (\\unused \\r. r next) cont) (list list list)'
    assert original.count(needle) == 1
    splice_dir = Path(__file__).parent / 'vreader_codex_splice'
    splice_dir.mkdir(exist_ok=True)
    for name in ['second_cell', 'rebuilt_tail', 'copied_app_nonshrinking', 'walker_reader_shared', 'alpha_dual_operand']:
        (splice_dir / (name + '.lam')).write_text(original.replace(needle, lam_text(readers[name])))
    info['seconds'] = round(time.perf_counter() - start, 3)
    dest = Path(__file__).with_suffix('.json')
    dest.write_text(json.dumps(info, indent=2) + '\n')
    print(json.dumps(info, indent=2))


if __name__ == '__main__':
    main()
