#!/usr/bin/env python3
"""Promote the verified close46 Lean sources into lean/Blc/ library modules.

Transformations per module: new header comment (the lane's own summary
comment between the imports and the namespace is dropped, superseded by it),
imports rewritten to Blc.* module names, namespace renames (word-boundary
regex, applied to every module), exact one-shot comment edits, #print
filtering (headline theorems only), blank-run collapse. Proof text is
otherwise untouched.

ReaderHoist.lean is not promoted: its namespace is asserted identical, up to
the namespace name, to the copy already inlined in lean/Blc/SelfintWiden.lean
as Blc.SelfintWidenHoist, so dependents import Blc.SelfintWiden instead.

Rerunnable: overwrites the promoted modules and inserts the Blc.lean imports
only if they are absent.
"""
import re
from pathlib import Path

REPO = Path('/Users/a9lim/Work/blam')
SRC = REPO / 'tmp/round4/close46'
DST = REPO / 'lean/Blc'

# Lane module order of tmp/round4/close46/verify.py (dependency order).
ORDER = ['RoleAlgebra', 'ClosureBarrier', 'BoundaryAlgebra', 'BoundaryChecks', 'ReaderHoist',
         'SourceCost', 'LocalCost', 'DispatchAudit', 'SourceFront', 'FlatSemantics',
         'FlatMinimum', 'RootFlat', 'FlatPrefix', 'LetSink', 'HelperPair', 'ClosedSpecializer',
         'LambdaSink', 'SourceBody', 'StreamHelpers', 'StreamSpecializer', 'NeededHead',
         'NestedLets']
PROMOTED = [m for m in ORDER if m != 'ReaderHoist']

IMPORTS = {m: f'Blc.Selfint{m}' for m in PROMOTED}
IMPORTS['ReaderHoist'] = 'Blc.SelfintWiden'

NAMESPACES = {
    'Round3Role': 'SelfintRoleAlgebra',
    'Close46': 'SelfintClosureBarrier',
    'Close46BoundaryAlgebra': 'SelfintBoundaryAlgebra',
    'Close46Boundary': 'SelfintBoundaryChecks',
    'Round3Reader': 'SelfintWidenHoist',
    'Close46Source': 'SelfintSourceCost',
    'Close46Local': 'SelfintLocalCost',
    'Close46Dispatch': 'SelfintDispatchAudit',
    'Close46Front': 'SelfintSourceFront',
    'Close46Flat': 'SelfintFlatSemantics',
    'Close46FlatMinimum': 'SelfintFlatMinimum',
    'Close46RootFlat': 'SelfintRootFlat',
    'Close46FlatPrefix': 'SelfintFlatPrefix',
    'Close46LetSink': 'SelfintLetSink',
    'Close46HelperPair': 'SelfintHelperPair',
    'Close46ClosedSpecializer': 'SelfintClosedSpecializer',
    'Close46LambdaSink': 'SelfintLambdaSink',
    'Close46SourceBody': 'SelfintSourceBody',
    'Close46StreamHelpers': 'SelfintStreamHelpers',
    'Close46StreamSpecializer': 'SelfintStreamSpecializer',
    'Close46NeededHead': 'SelfintNeededHead',
    'Close46NestedLets': 'SelfintNestedLets',
}

DOC = '`docs/classical/self-interpreter/class-bound.md`.'
FRAME_READER = ('All variables are 0-based; at the root of a reader c=0 and j=1, with probe\n'
                'suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.')
FRAME_ROLE = 'All variables are 0-based: the suffix N=0, c=1, j=2, r=3.'

HDR = {}
HDR['RoleAlgebra'] = f"""/-
Round 3's role algebra, copied unchanged apart from its namespace from
data/self-interpreter/reasoning_162/floor/RoleAlgebra.lean. Two unary Scott
streams applied to each other reduce to the constant suffix, the identity, or
N applied to a unary stream, at every pair of lengths (`unary_cross`). Every
application-only expression over the stream, the false bit, c and rigid
parameters reduces, at every length of at least its application count plus
two, to a value in a small closed class whose function values mention no free
variable but N (`expr_value`, `expr_function_barrier`). The closing price
lemmas are arithmetic only; their semantic premises are round 3's
handwritten argument. {DOC}
All variables are 0-based: the suffix N=0, c=1.
-/
"""
HDR['ClosureBarrier'] = f"""/-
Shared continuation factories cannot read. Let e be any finite application
tree, with A applications, over the stream, I, F, rigid parameters, the
continuation towers C_m = λ^m. c and the factories H_m = λx. x C_m. If e on
the zero stream joins r j, then on every unary stream of length n ≥ A+2 it
fails to join c U_(n-1) N (`factories_cannot_read`). The same holds for a
literal nonlinear sharing let over that grammar (`sharing_cannot_read`), and
no source beta-equal to such an expression on every probe meets the zero law
and every unary law (`represented_reader_impossible`). This is a sharing
obstruction for the grammar, not a reader floor. {DOC}
{FRAME_ROLE}
-/
"""
HDR['BoundaryAlgebra'] = f"""/-
Where the closure barrier stops. With Δ = λx. x x and D(s) = s Δ I (s s) j,
D reduces to j on the zero stream, to N j on the length-one stream, and to N
on every longer one (`dual_zero`, `dual_one`, `dual_long`): once Δ is a
callback, a bare j on zero no longer forces a bare j on unary input. The
near-reader s I (s C_1) (D s) meets the zero law and every unary law from
length two but returns c U_0 (N j) at length one (`near_zero`, `near_long`,
`near_one`). The 10-bit factory λx. x c with K and the 13-bit H_1 with I
supply C_1 at the same price, 17 bits (`factory_selector_price`). {DOC}
{FRAME_ROLE}
-/
"""
HDR['BoundaryChecks'] = f"""/-
Fixed-term certificates for the two boundary sources of
`SelfintBoundaryAlgebra`, in the reader frame: λs. D(s) (weighted price 34,
not a reader: it has no c) and the near-reader (weighted price 56), each
normalized on
the zero stream and the unary streams of lengths one to three. The
near-reader fails `SelfintClass.Reader` at length one
(`near_reader_not_reader`). {DOC}
{FRAME_READER}
-/
"""
HDR['SourceCost'] = f"""/-
Exact whole-source costs of nonlinear head contraction. `ReaderLaws` is the
full reader specification (the zero law and the unary law at every length);
`MinimumReader` is a minimum-weight reader with exactly one source j, and
`LexMinimumReader` also has the fewest source lambdas at its weight. Hoisting
every copy of the hole, H(T) = (λh. T[h/j]) j, keeps the full laws and
restores one source hole (`ReaderLaws.hoist`). For a root redex
((λx.B) A) C1 … Ck whose argument A holds the hole, contracting at any
multiplicity m and hoisting changes the weight by exactly
(m-1)(wire A - 3) + f_A (D + m) + f_C - 3 d_A, where D is the total lambda
depth of the uses of x, f_A and f_C count c in A and in the pending operands,
and d_A is the depth of j in A (`contract_hoist_price`); a minimum reader makes
this nonnegative (`minimum_argument_charge`). Below weight 46 the root
arguments obey explicit budgets (`nohole_argument_budget`,
`hole_argument_budget`) and m ≤ 7 (`reader_head_multiplicity_le_seven`).
{DOC}
{FRAME_READER}
-/
"""
HDR['LocalCost'] = f"""/-
The weighted beta balance at any source position. For a redex (λx.B) A under
d binders, contraction changes the weight by exactly
(m-1) w_d(A) + (F-1) D - 2m - 4 - G, where m counts the uses of x, D their
total lambda depth, and F and G the outer free leaves of A and B with j
counted four times (`weighted_beta_at`). In a minimum reader no source redex
is erasing (`minimum_source_non_erasing`), in a lexicographically minimum one
a linear redex has (F-1) D ≥ 7 + G (`minimum_linear_source_charge`), and a
redex with a j-free argument
has a nonnegative balance at every multiplicity
(`minimum_source_sharing_charge`), and below weight 46 a redex under d ≥ 1
binders has wire A + D + 2 L_B + 4m ≤ 43 - 2d, with L_B the lambdas of B
(`nested_argument_budget`). {DOC}
{FRAME_READER}
-/
"""
HDR['DispatchAudit'] = f"""/-
A repair to one step of the handwritten K-dispatch argument in
data/self-interpreter/reasoning_class/jn/NOTES.md. Beneath the stream binder
the only one-hole operand of price at most 2 is j itself (`tiny_j_operand`),
and no j-headed spine joins the zero output, whatever its arguments
(`j_head_fails_zero`), so that branch's conclusion stands. Nothing here
certifies that argument's finite inventories. {DOC}
{FRAME_READER}
-/
"""
HDR['SourceFront'] = f"""/-
The first source head of a reader. Every reader source, with no minimality
or normality premise, is λs. s A1 … Ak, a root redex ((λx.B) A) C1 … Ck, or a
first body redex λs. ((λx.B) A) C1 … Ck (`reader_source_head`). A reader with
one source j and weight at most 45 uses x at most six times in a first body
redex (`body_head_multiplicity`). {DOC}
{FRAME_READER}
-/
"""
HDR['FlatSemantics'] = f"""/-
Exact semantics of lambda-free source arguments. Any application tree over
s, c, j acts, on the zero stream and on every unary stream, as one of s, c, j,
s s, (s s) T or (s s) T j for arbitrary T (on zero: Z(r), c, j, K r, r, r j; on
unary input: U_n(N), c, j, K N, N, N j), or reduces to a rigid normal block
absent from both required outputs (`flat_algebra`). `irrelevant_inert`
supplies the normality, rigidity and avoidance certificates for replacing
such a block in context. {DOC}
{FRAME_READER}
-/
"""
HDR['FlatMinimum'] = f"""/-
Flat arguments of a first body redex. If λs. ((λx.B) A) C1 … Ct is a minimum
reader and A is lambda-free, A is literally s, c, j, s s, s s s or s s s j
(`minimum_flat_argument`); at weight at most 45 only j, s s, s s s and
s s s j remain (`minimum_flat_four`). B and the pending operands are
arbitrary. A lexicographically minimum reader with at most three source
lambdas has no linear first body redex (`no_three_lambda_linear`). {DOC}
{FRAME_READER}
-/
"""
HDR['RootFlat'] = f"""/-
Root flat arguments. If ((λx.B) A) C1 … Ct is a minimum reader and A is
lambda-free, A is literally j (`minimum_root_flat_is_hole`), with no weight
bound, multiplicity cap or hole-depth premise. {DOC}
{FRAME_READER}
-/
"""
HDR['FlatPrefix'] = f"""/-
A flat head prefix cannot act as a reader function: if λs. T C1 … Ct is a
reader and T is lambda-free, T is literally s, whatever the pending operands
(`reader_flat_prefix`). Hence the body and argument of a minimum first body
redex are not both lambda-free (`minimum_not_flat_flat`). {DOC}
{FRAME_READER}
-/
"""
HDR['LetSink'] = f"""/-
Let sinking. For an application context C whose fixed pieces do not mention
x, (λx. C[G]) A is beta-equal to C'[(λx. G) A], where C' drops the unused
binder from those pieces; A stays present once and the source j count is
preserved. The weight falls by exactly the capture charge of C, the outer
free leaves of its fixed pieces with j counted four times (`sunk_price`
beneath the stream binder, `sunkRoot_price` at the root), so a minimum reader
has charge zero (`minimum_sink_charge_zero`, `minimum_root_sink_charge_zero`)
and a minimum let in an s-spine body s B1 … Bk uses x in at least two
operands (`no_one_operand_spine_let`). {DOC}
{FRAME_READER}
-/
"""
HDR['HelperPair'] = f"""/-
The selector/unary helper template. For an arbitrary helper A, neither
λs. ((λg. s (g F) (g s)) A) j nor (λg s. s (g F) (g s) j) A is a reader with one
source j below weight 46 (`local_pair_floor`, `root_pair_floor`). The known
capturing helper λx u. x C_1 (x x u) makes both placements beta-reduce to the
162's reader (`capturing_local_normal`, `capturing_root_normal`). {DOC}
{FRAME_READER}
-/
"""
HDR['ClosedSpecializer'] = f"""/-
The helper template with any closed specializer P in place of F: neither
λs. ((λg. s (g P) (g s)) A) j nor (λg s. s (g P) (g s) j) A is a reader with one
source j below weight 46, for arbitrary A (`local_closed_floor`,
`root_closed_floor`). Inlining the helper costs exactly wire A - 10 locally
and wire A + 2 freeLeaves A - 14 at the root (`local_inline_price`,
`root_inline_price`); these can be positive, so they are prices, not a
dominance theorem. {DOC}
{FRAME_READER}
-/
"""
HDR['LambdaSink'] = f"""/-
Moving a let through a leading lambda. (λx. λy. B) A is beta-equal to
λy. (λx. B') A', with the two bound variables swapped in B and A shifted
under y (`sink_join`), and the move costs exactly F_d(A) + n - m, where m and
n count the uses of x and y in B and F_d(A) is A's outer free leaves with j
counted four times (`sink_price`). A minimum reader whose first-redex body is
a lambda therefore has m ≤ F_d(A) + n (`minimum_root_capture`,
`minimum_body_capture`). A fixed linear redex whose contraction is two bits
dearer shows that a linear let can pay for itself
(`linear_saving_counterexample`). {DOC}
{FRAME_READER}
-/
"""
HDR['SourceBody'] = f"""/-
Literal head alternatives for the body B of a first source let. In a minimum
reader λs. ((λx.B) A) C1 … Ct, B is an s-spine, an x-spine with a
lambda-containing A, a lambda with at least one pending operand, or a nested
head redex (`minimum_body_alternatives`). In any reader ((λx.B) A) C1 … Ct,
B is an x-spine with a lambda-containing A, a lambda, or a nested head redex
(`root_body_alternatives`). These are source-syntax alternatives, not
head-normalized residuals. {DOC}
{FRAME_READER}
-/
"""
HDR['StreamHelpers'] = f"""/-
Structural helper classifications used by `SelfintStreamSpecializer`. Every
c-containing, j-free helper of at most 13 bits beneath the stream binder lies
on a fixed list (`capture_thirteen`), and every root helper of at most 9 bits
on a ten-term list (`root_nine`). Both completeness proofs follow the wire
recursion; neither enumerates terms. {DOC}
{FRAME_READER}
-/
"""
HDR['StreamSpecializer'] = f"""/-
The helper template with any specializer P built from g and s, including
lambdas, divergence and repeated uses. If λs. ((λg. s (g P) (g s)) A) j or
(λg s. s (g P) (g s) j) A satisfies `SelfintClass.Reader` with one source j,
its weight is at least 46, for an arbitrary helper A (`local_stream_floor`,
`root_stream_floor`). In the local placement A costs at least 10 bits
(`local_helper_ten`), and below weight 46 P is g, s, λu.u or λu.g
(`specializer_boundary`). {DOC}
{FRAME_READER} In P,
g=0 and s=1 locally; s=0 and g=1 at the root.
-/
"""
HDR['NeededHead'] = f"""/-
An x-headed source let must use its definition beyond the head. Replacing
C[(λx. x B1 … Bk) A] by C[A B1' … Bk'], where each B_i' puts the nearest outer
variable (s beneath the stream binder, c at the root) in place of x, saves
exactly 6 plus the outer free leaves of the B_i with j counted four times
(`forget_price`). In a minimum reader the replacement breaks the full reader
laws (`minimum_forget_fails`), so x has a use outside the head
(`minimum_extra_use`), one to five of them in a first body redex below weight
46 (`body_needed_sharing`); if the replacement still meets the zero law, some
unary length detects it (`unary_needed_if_zero`). {DOC}
{FRAME_READER}
-/
"""
HDR['NestedLets'] = f"""/-
Nested head redexes as lets. ((λy.D) E) B1 … Bk is beta-equal to
(λy. D B1↑ … Bk↑) E, which keeps the reader laws and the hole count in any
source context and costs exactly the captures of the B_i, j counted four
times (`push_context_price`). Adjacent independent lets interchange at the
exact price F_d(A) - F_d(E) + uses_y(D) - uses_x(D) (`order_price`;
`minimum_order_charge` in a minimum reader), also across pending operands
(`pending_price`). So in a minimum reader every nested head redex beneath a
let either has x free in its inner definition E or pays the combined
interchange price nonnegatively (`minimum_nested_alternative`). {DOC}
{FRAME_READER}
-/
"""

HEADLINE = {
    'RoleAlgebra': set(),
    'ClosureBarrier': {'factories_cannot_read', 'sharing_cannot_read',
                       'represented_reader_impossible'},
    'BoundaryAlgebra': {'dual_zero', 'dual_one', 'dual_long', 'near_zero', 'near_one',
                        'near_long', 'factory_selector_price'},
    'BoundaryChecks': {'near_reader_not_reader'},
    'SourceCost': {'ReaderLaws.hoist', 'contract_hoist_price', 'minimum_argument_charge',
                   'nohole_argument_budget', 'hole_argument_budget',
                   'reader_head_multiplicity_le_seven'},
    'LocalCost': {'weighted_beta_at', 'minimum_source_non_erasing',
                  'minimum_linear_source_charge', 'minimum_source_sharing_charge',
                  'nested_argument_budget'},
    'DispatchAudit': {'tiny_j_operand', 'j_head_fails_zero'},
    'SourceFront': {'reader_source_head', 'body_head_multiplicity'},
    'FlatSemantics': {'flat_algebra', 'irrelevant_inert'},
    'FlatMinimum': {'minimum_flat_argument', 'minimum_flat_four', 'no_three_lambda_linear'},
    'RootFlat': {'minimum_root_flat_is_hole'},
    'FlatPrefix': {'reader_flat_prefix', 'minimum_not_flat_flat'},
    'LetSink': {'sunk_price', 'sunkRoot_price', 'minimum_sink_charge_zero',
                'minimum_root_sink_charge_zero', 'no_one_operand_spine_let'},
    'HelperPair': {'local_pair_floor', 'root_pair_floor', 'capturing_local_normal',
                   'capturing_root_normal'},
    'ClosedSpecializer': {'local_closed_floor', 'root_closed_floor', 'local_inline_price',
                          'root_inline_price'},
    'LambdaSink': {'sink_join', 'sink_price', 'minimum_root_capture', 'minimum_body_capture',
                   'linear_saving_counterexample'},
    'SourceBody': {'minimum_body_alternatives', 'root_body_alternatives'},
    'StreamHelpers': {'capture_thirteen', 'root_nine'},
    'StreamSpecializer': {'local_stream_floor', 'root_stream_floor', 'local_helper_ten',
                          'specializer_boundary'},
    'NeededHead': {'forget_price', 'minimum_forget_fails', 'minimum_extra_use',
                   'body_needed_sharing', 'unary_needed_if_zero'},
    'NestedLets': {'push_context_price', 'order_price', 'minimum_order_charge',
                   'pending_price', 'minimum_nested_alternative'},
}

EDITS = {
    'SourceBody': [("No weight bound or other lane's semantic inventory is assumed. -/",
                    'No weight bound or finite semantic inventory is assumed. -/')],
}

log = []


def edit(text, old, new, mod):
    n = text.count(old)
    assert n == 1, f'{mod}: edit target found {n} times: {old!r}'
    log.append((mod, 'edit', old, new))
    return text.replace(old, new)


def strip_header(text):
    lines = text.split('\n')
    i = next(k for k, l in enumerate(lines) if l.startswith('import '))
    return '\n'.join(lines[i:])


def rewrite_imports(text, mod):
    out = []
    for l in text.split('\n'):
        m = re.fullmatch(r'import (\S+)', l)
        if m and not m.group(1).startswith('Blc.'):
            assert m.group(1) in IMPORTS, f'{mod}: unknown lane import {m.group(1)}'
            new = f'import {IMPORTS[m.group(1)]}'
            log.append((mod, 'import', l, new))
            l = new
        out.append(l)
    return '\n'.join(out)


def drop_summary(text, mod):
    """Drop the lane's summary comment between the imports and the namespace."""
    lines = text.split('\n')
    last_imp = max(k for k, l in enumerate(lines) if l.startswith('import '))
    ns = next(k for k, l in enumerate(lines) if l.startswith('namespace '))
    between = '\n'.join(lines[last_imp + 1:ns]).strip()
    if between:
        assert between.startswith('/-') and between.endswith('-/') and between.count('-/') == 1, \
            f'{mod}: unexpected text before namespace: {between!r}'
        log.append((mod, 'drop-summary', between, 'superseded by the header'))
    return '\n'.join(lines[:last_imp + 1] + lines[ns:])


def rename_all(text, mod):
    for old, new in NAMESPACES.items():
        text, n = re.subn(r'\b' + old + r'\b', new, text)
        if n:
            log.append((mod, 'rename', old, f'{new} ({n} occurrences)'))
    for old in NAMESPACES:
        assert not re.search(r'\b' + old + r'\b', text), f'{mod}: {old} survives'
    return text


def filter_prints(text, keep, mod):
    out, dropped, kept = [], [], []
    for l in text.split('\n'):
        m = re.match(r'#print\s+(axioms\s+)?(\S+)\s*$', l)
        if m:
            if m.group(1) and m.group(2) in keep:
                kept.append(m.group(2)); out.append(l)
            else:
                dropped.append(l)
            continue
        assert not l.startswith('#'), f'{mod}: unexpected command {l!r}'
        out.append(l)
    missing = keep - set(kept)
    log.append((mod, 'prints', f'kept {len(kept)}', f'dropped {len(dropped)}'))
    return '\n'.join(out), kept, missing


def collapse(text):
    text = re.sub(r'\n{3,}', '\n\n', text)
    return text.strip('\n') + '\n'


def check_hoist_dedup():
    """close46/ReaderHoist.lean's namespace == SelfintWiden's inlined SelfintWidenHoist."""
    w = (DST / 'SelfintWiden.lean').read_text().split('\n')
    a, b = w.index('namespace Blc.SelfintWidenHoist'), w.index('end Blc.SelfintWidenHoist')
    c = (SRC / 'ReaderHoist.lean').read_text().split('\n')
    k = c.index('namespace Blc.Round3Reader')
    body = re.sub(r'\bRound3Reader\b', 'SelfintWidenHoist', '\n'.join(c[k:])).rstrip('\n')
    assert body == '\n'.join(w[a:b + 1]), 'ReaderHoist differs from SelfintWidenHoist'
    assert c[:k] == ['/- General NEXT-hole hoisting and its exact capture-weight balance.',
                     '   Source variables are c=0 and j=1. This file does not prove the reader floor. -/',
                     'import Blc.SelfintKnot', '']
    log.append(('ReaderHoist', 'dedup', 'namespace identical to SelfintWiden.SelfintWidenHoist',
                'not promoted; dependents import Blc.SelfintWiden'))


def update_root():
    root = REPO / 'lean/Blc.lean'
    t = root.read_text()
    block = ''.join(f'import {IMPORTS[m]}\n' for m in PROMOTED)
    if block in t:
        return 'already present'
    for m in PROMOTED:
        assert f'import {IMPORTS[m]}\n' not in t, f'Blc.lean partially updated ({m})'
    anchor = 'import Blc.SelfintChead\n'
    assert t.count(anchor) == 1
    root.write_text(t.replace(anchor, anchor + block))
    return 'inserted after Blc.SelfintChead'


def build():
    check_hoist_dedup()
    report = {}
    for m in PROMOTED:
        t = strip_header((SRC / f'{m}.lean').read_text())
        t = rewrite_imports(t, m)
        t = drop_summary(t, m)
        for old, new in EDITS.get(m, []):
            t = edit(t, old, new, m)
        t = rename_all(t, m)
        t, kept, missing = filter_prints(t, HEADLINE[m], m)
        assert not missing, f'{m}: headline prints missing {missing}'
        t = HDR[m] + collapse(t)
        (DST / f'Selfint{m}.lean').write_text(t)
        report[m] = (len(t.split('\n')) - 1, kept)
    return report


if __name__ == '__main__':
    rep = build()
    print('Blc.lean:', update_root())
    for m, (n, kept) in rep.items():
        print(f'Selfint{m}: {n} lines; prints kept: {", ".join(kept) or "-"}')
    print()
    for e in log:
        print(' | '.join(e).replace('\n', '\\n')[:220])
