#!/usr/bin/env python3
"""Render the requested table and the reduction arguments from measured files."""
import hashlib
import json
from pathlib import Path

LANE = Path(__file__).resolve().parent
rows = json.loads((LANE / 'zoo.json').read_text())
polish = list(map(json.loads, (LANE / 'polish.jsonl').read_text().splitlines()))
results = {(r['name'], r['frame']):r for r in polish}
artifacts = {r['name']:r for r in json.loads((LANE / 'artifacts.json').read_text())}
assert len(artifacts) == len(rows)
best = min(a['bits'] for a in artifacts.values())
checks = sum(r['probes'] for r in rows)
family_count = len({r['family'] for r in rows})
unique_nf = len({r['beta_normal_hash'] for r in rows})
assert all(not r['failures'] for r in rows)
assert all(a['bits'] >= 162 for a in artifacts.values()), 'Update the headline for a new record'

def rel(path):
    return str(Path(path).relative_to(LANE))

text = [
    '**No sub-162 interpreter found.** The complete zoo has 44 hand-written reader bodies in '
    f'{family_count} organizational families, {unique_nf} distinct open beta-normal forms, '
    f'{checks} successful rigid reader-law probes, and {len(polish)} complete interpreter splices. '
    'Every splice passed `ok=667 skip=1 fail=0`. Every smallest rendering listed below has a saved wire artifact '
    'with that same battery result. The 162 and 164 controls were reproduced; none of the other constructions improved them.',
    '',
    'The best artifact is [optimized/02_reference162.blc](optimized/02_reference162.blc), '
    'with [lambda source](optimized/02_reference162.lam): **`162 bits  ok=667 skip=1 fail=0`**. '
    'It is the already known record, not a new interpreter. '
    'The dual-operand control is [optimized/03_reference164.blc](optimized/03_reference164.blc): '
    '**`164 bits  ok=667 skip=1 fail=0`**.',
    '',
    'The constructions cover shared suffixes, separately selected tail handlers, input-owned output applications, '
    'NEXT-last thunks, unequal-role cross applications, dual operands, conditional predecessors, projected Booleans, '
    'rebuilt Scott cells, ordinary/CPS/pair callback operands, self-applied callbacks, selector/action/CPS packets, '
    'and constant streams as return instructions. Related variants are grouped explicitly; beta-normal distinctness '
    'alone is not being used as a claim of architectural novelty. Rows 01–03, 11, 24–25 and the relevant callback/reboxing '
    'mechanisms have antecedents in the supplied record and are useful reference points. No claim of global originality '
    'is made for the other individual syntax trees.',
    '',
    '**Conventions and measured table.** `s = list`, `c = cont`, `I = λa.a`, `K = λa b.a`, '
    '`F = λa b.b`, `D = λa.a a`. Every macro is expanded before counting. '
    '`RDR = λt.t (λb.b (λu r.r next) c) (t t t)` is the 165 reader as a function. '
    'The isolated body is counted in the exact frame `[s, next, c, intL, x]`. '
    'The `let165` column keeps NEXT let-bound, hence its raw size is the isolated size plus 122. '
    'The `inline162` column substitutes the complete fixed NEXT under `λs`. This frame is included when the body '
    'has one occurrence of `next`; four bodies with two occurrences retain only their let frame. '
    'Each raw-size link is its complete `.lam` candidate; each polished-size link is the unmodified `polish.py` log.',
    '',
    '| ID | Body | Isolated bits | Raw let165 / inline162 | Polished let165 / inline162 | Smallest saved artifact and battery |',
    '|---|---|---:|---|---|---|',
]
for row in rows:
    raw, opt = [], []
    for label in ('let165', 'inline162'):
        if label in row['frames']:
            frame = row['frames'][label]
            result = results[(row['name'], label)]
            raw.append(f'[{frame["bits"]}]({rel(frame["path"])})')
            opt.append(f'[{result["polished_bits"]}]({rel(result["log"])})')
        else:
            raw.append('—')
            opt.append('—')
    artifact = artifacts[row['name']]
    body = row['body'].replace('\\', 'λ')
    line = f'{artifact["bits"]} bits; ok=667 skip=1 fail=0'
    text.append(f'| {row["name"]} | `{body}` | {row["isolated_bits"]} | {" / ".join(raw)} | {" / ".join(opt)} | [{line}]({rel(artifact["blc"])}) |')

text += [
    '',
    '**Uniform reduction arguments.** Write `Z_R = cons K R`, `U_n(N) = 1ⁿ0 ++ N`, '
    'and `r = U_(n−1)(N)` in the variable branch. The following identities suffice for every row:',
    '',
    '| Expression | `s = Z_R` | `s = U_n(N)`, `n ≥ 1` |',
    '|---|---|---|',
    '| `s (λq.c)` | `c R` | `c r` |',
    '| `s I` | `K R` | `I` |',
    '| `s K` | `K` | `F` |',
    '| `s F` | `R` | `r` |',
    '| `s s` | `K R` | `K N` |',
    '| `s D` and `s (s K)` | `K` | `r` |',
    '| `s (λb.b F)` | `F` | `r` |',
    '| `s I s` | `R` | `s` |',
    '| `s I (s s) next` | `R next` | `N` |',
    '',
    'The only unbounded step here is the standard equal-index diagonal: '
    '`U_0(N) U_0(N) →* K N`, and '
    '`U_(m+1)(N) U_(m+1)(N) →* U_m(N) U_m(N)`. '
    'Therefore `U_m(N) U_m(N) a →* N` for every `m ≥ 0` and every argument `a`. '
    'All other identities are fixed cell/Boolean reductions. A variable tail is always a Scott cell, '
    'including `r = U_0(N)` at index one. Thus rebuilding it as `λh.r h` or '
    '`λh.h (r K) (r F)` is beta-correct on these inputs; no free-tail eta equality is assumed.',
    '',
    'For the two constant-stream constructions, `T = K(K X)` satisfies '
    '`T H (T T T) →* X`, so `RDR T →* X` for arbitrary rigid `X`. '
    'Row 43 transforms only the variable branch into that instruction; row 44 transforms only the zero branch. '
    'The original stream is retained in the other branch.',
    '',
]
for row in rows:
    text.append(f'{int(row["name"][:2])}. **{row["name"]} ({row["family"]}).** {row["argument"]}')

text += [
    '',
    '**Second-stage objects.** These are explicit valid constructions, not just renamed readers:',
    '',
    '| Object | Role | Completed reader rows |',
    '|---|---|---|',
    '| `s I (s s) next` | Second-tag result at zero, suffix at a variable | 03, 23 |',
    '| `s (λb r.b r (r r)) next` | Select a tail or a suffix thunk before handing it NEXT | 17 |',
    '| `s I ((s D) (s D)) next` | Erased conditional predecessors become the variable diagonal | 21 |',
    '| `s (λb r.b (r next) (λq t.c r))` | A zero result or a handler for another input cell | 22, 26 |',
    '| `λr.c r (r r r)` | A complete variable-return action | 33 |',
    '| `s s` | A constant suffix callable by either branch | 34 |',
    '| `λk.k (s s s)` | A suffix delivered to a selected continuation | 35 |',
    '| `λf.f (s F) (s s s)` | A pair consumed as a zero action or directly by `c` | 36 |',
    '| `λf r.c r (r r f)` | A callback using itself as its erased skip force | 37 |',
    '| `λb.b next c` | A tag-selected NEXT/continuation packet | 39 |',
    '| `λb.b (λr.r next) c` | A tag-selected zero/variable action packet | 40 |',
    '| `λb f.f (b next c)` | A selected operand delivered in CPS | 41 |',
    '| `λa.a c next` | Reversed continuation/NEXT pair | 42 |',
    '| `K(K X)` | An off-stream return instruction recognized by the reader | 43, 44 |',
    '',
    '**What was checked.** [zoo.py](zoo.py) contains the 44 literal hand-written terms and their arguments. '
    'No grammar, Cartesian product, term enumeration, or candidate sweep was used. '
    'The small de Bruijn normalizer in the repository checked both reader laws before any splicing: '
    '`Z_R` with rigid `R`, and `U_n(N)` for `n = 1..16, 31, 64` with rigid `N`, `next`, and `c`. '
    '[zoo.json](zoo.json) records all probe counts, exact expanded bodies, bit costs, and normal-form hashes. '
    'The all-length reasoning is given above; these are hand reductions, not new Lean theorems.',
    '',
    'Every full candidate was run through the actual repository command '
    '`python3 tools/self-interpreter/polish.py FILE.lam`. '
    '[run_polish.py](run_polish.py) only supplies resource controls and records the logs. '
    'A lane-local `sitecustomize.py` caps battery worker pools at two, points subprocesses at a frozen binary, '
    'and places compiler temporary files inside this lane. Letopt used its explicit two-thread option. '
    'Its configured budgets were three cuts plus a two-cut no-inline run for inputs through 175 bits, '
    'and two cuts for larger inputs. These are the requested polish operations, not an unrestricted search.',
    '',
    '**Tooling detail resolved for the deliverable.** `polish.py` uses `--report-le 164`. '
    'Letopt can therefore print `smallest rendering ...: 169 bits` while its final `best` wire is still 173 bits: '
    'the histogram tracks all configurations, but `best_t` is updated only from rendered reporting hits '
    '(`src/cli/golf/letopt.rs`, lines 815–858). This does not hide a sub-162 result, because every such result '
    'would be inside the reporting threshold. To avoid presenting an unmaterialized size as a verified artifact, '
    '[collect.py](collect.py) rerendered each needed minimum with its own reporting threshold and at most two cuts, '
    'then battery-checked any wire not already checked as an input candidate. '
    f'This required {sum(a["rechecked"] for a in artifacts.values())} new wire checks. '
    '[artifacts.json](artifacts.json) links every saved minimum to its actual battery log. '
    'The source tree was not modified to change this reporting behavior.',
    '',
    f'All {len(polish)} polish invocations completed without timeout or battery failure; '
    f'the slowest took {max(r["seconds"] for r in polish):.3f} seconds. '
    f'Their summed wall time was {sum(r["seconds"] for r in polish):.3f} seconds. '
    'Individual letopt subprocesses had a 100-second cap and whole polish process groups had a 115-second cap. '
    'There was one active candidate job at a time. No other lane was written, and no agent was consulted. '
    'The frozen executable SHA-256 is `'
    + hashlib.sha256((LANE / 'blam-frozen').read_bytes()).hexdigest() + '`.',
    '',
    '**Assessment.** The successful cross-branch constructions really do have different source/stream ownership: '
    'output nodes may come from the first cell, from the variable tail, from a callback, or from a transformed constant stream. '
    'Several larger isolated readers shrink after let placement, confirming the reason to test complete splices. '
    'In this catalogue the extra tail binding, re-opening, or packet dispatch costs more than the sharing saves. '
    'That is an observation about these constructions, not a lower bound on readers or interpreters. '
    'The simplest dual operand remains the 164 control; the 162 control remains the only 162-bit result.',
    '',
    'To reproduce, run `PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/zoo/zoo.py`, then '
    '`PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/zoo/run_polish.py`, '
    '`PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/zoo/collect.py`, and '
    '`PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/zoo/report.py` from the repository root. '
    '`run_polish.py` resumes from the existing `polish.jsonl`; a fresh reproduction needs that file moved aside inside the lane.',
]
(LANE / 'REPORT.md').write_text('\n'.join(text) + '\n')
print(f'Wrote REPORT.md: {len(rows)} bodies, {len(polish)} splices, best {best} bits')
