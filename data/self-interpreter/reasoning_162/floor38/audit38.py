"""Audit the fixed size-38 ledgers and write their exact coverage partition."""
import json
import re
from collections import Counter
from pathlib import Path

HERE = Path(__file__).resolve().parent
raw = json.loads((HERE / 'size38.json').read_text())
rows = raw['rows']
finite = json.loads((HERE / 'size38-finite-checks.json').read_text())
residuals = json.loads((HERE / 'size38-residuals-excluded.json').read_text())
fmap = {r['id']: r for r in finite}
rmap = {r['id']: r for r in residuals}
assert len(fmap) == len(finite) == 1143
assert len(rmap) == len(residuals) == 63
assert not fmap.keys() & rmap.keys()
assert fmap.keys() | rmap.keys() == set(range(1206))
assert [r['id'] for r in rows] == list(range(1206))
assert len({r['wire'] for r in rows}) == 1206
assert all(len(r['wire']) == 38 and set(r['wire']) <= {'0', '1'} for r in rows)

sources = (HERE / 'Size38Sources.lean').read_text()
assert {int(x) for x in re.findall(r'^def e(\d+) :', sources, re.M)} == set(range(1206))
for i in range(1206):
    assert f'theorem e{i}_closed : Closed e{i} := by decide' in sources
    assert f'theorem e{i}_size : (blcCode e{i}).length = 38 := by decide' in sources
ftext = (HERE / 'Size38Finite.lean').read_text()
rtext = (HERE / 'Size38Residuals.lean').read_text()
assert {int(x) for x in re.findall(r'^theorem finite(\d+) :', ftext, re.M)} == fmap.keys()
assert {int(x) for x in re.findall(r'^theorem residual(\d+) :', rtext, re.M)} == rmap.keys()

def prospective(r):
    return (r['id'] < 828 or r['family'] in
            {'D_arg_outer_below', 'N_box_outer_below'} or
            (r['family'] == 'N_box_outer_between' and r['insertion_path'] ==
             ['under', 'under', 'right', 'under', 'right']))

kept = [r for r in rows if prospective(r)]
removed = [r for r in rows if not prospective(r)]
assert len(kept) == 1014 and len(removed) == 192
assert {r['id'] for r in removed} <= fmap.keys()
assert sum(r['id'] in fmap for r in kept) == 951
assert dict(Counter(r['kind'] for r in removed)) == {
    'three_lambdas': 102, 'nonlinear_chain': 85,
    'identity_wrong_payload': 3, 'wrong_hnf': 2,
}
records = []
for r in rows:
    i = r['id']
    if i in fmap:
        assert r['kind'] == fmap[i]['kind']
        if r['kind'] == 'exact_cycle':
            assert fmap[i]['invocation'] == 'identity' and fmap[i]['period'] > 0
        proof = dict(kind=r['kind'], strength='kernel_checked_certificate_predicate',
                     theorem=f'Blc.Round3Floor38.Size38Finite.finite{i}',
                     certificate=fmap[i])
    else:
        assert r['kind'].startswith('unresolved')
        proof = dict(kind=rmap[i]['kind'], strength='complete_not_IsSelfInterpreter',
                     theorem=f'Blc.Round3Floor38.Size38.{rmap[i]["theorem"]}')
    records.append(dict(id=i, family=r['family'], wire=r['wire'],
                        prospective_1014=prospective(r), proof=proof))

out = dict(
    numeric_conclusion=39,
    proof_scope='Handwritten classification and certificate implications; kernel-checked components.',
    raw_layouts=1206, four_lambda_layouts=828, one_vacuous_layouts=378,
    preliminary_exclusions=192, prospective_layouts=1014,
    finite_certificates=1143, prospective_finite_certificates=951,
    complete_initial_residual_exclusions=63,
    complete_residual_kinds=dict(Counter(r['kind'] for r in residuals)),
    final_residual_ids=[], preliminary_exclusion_ids=[r['id'] for r in removed],
    initial_probe_seconds=raw['seconds'], rows=records,
)
(HERE / 'size38-ledger.json').write_text(json.dumps(out, indent=2) + '\n')
print(json.dumps({k: v for k, v in out.items() if k not in
                 {'rows', 'preliminary_exclusion_ids'}}, indent=2))
