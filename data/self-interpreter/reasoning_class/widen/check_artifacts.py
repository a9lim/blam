"""Check the single fixed witness and the lane's Lean proof; no term search."""
from pathlib import Path
import hashlib
import json
import os
import re
import subprocess
import sys
import time

sys.dont_write_bytecode = True
LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
sys.path.insert(0, str(ROOT / 'tools'))
import blcc


def literal_bits(path):
    source = '\n'.join(line.partition('--')[0] for line in path.read_text().splitlines())
    parser = blcc.P(source)
    term = blcc.p_lc(parser)
    parser.ws()
    assert parser.i == len(parser.t), ('unparsed source', str(path), parser.i)
    return blcc.encode(blcc.to_db(term))


written = literal_bits(LANE / 'deep_shared_233.lam')
polished = literal_bits(LANE / 'deep_shared_233.optimized.lam')
assert written == (LANE / 'deep_shared_233.blc').read_text().strip()
assert polished == (LANE / 'deep_shared_233.optimized.blc').read_text().strip()
assert (len(written), len(polished)) == (233, 162)
assert written == json.loads((LANE / 'source.json').read_text())['wire']
assert polished == literal_bits(ROOT / 'data/self-interpreter/machines/int162.lam')
lean_source = (LANE / 'Widen.lean').read_text()
wire_claim = re.search(r'theorem materialized_source_code.*?= "([01]+)"', lean_source, re.S)
assert wire_claim and written == wire_claim[1]
assert not re.search(r'\bsorry\b|sorryAx|^axiom\b', lean_source, re.M)
log = (LANE / 'polish.log').read_text()
assert '233 bits  ok=667 skip=1 fail=0' in log
assert '162 bits  ok=667 skip=1 fail=0' in log
verification = json.loads((LANE / 'verification.json').read_text())
assert hashlib.sha256((LANE / 'blam').read_bytes()).hexdigest() == verification['frozen_blam_sha256']

env = os.environ.copy()
env['LEAN_PATH'] = str(ROOT / 'lean/.lake/build/lib/lean')
command = ['lean', '-j2', str(LANE / 'Widen.lean')]
start = time.perf_counter()
run = subprocess.run(command, cwd=ROOT / 'lean', env=env, capture_output=True, text=True, timeout=110)
elapsed = time.perf_counter() - start
(LANE / 'lean.log').write_text(run.stdout + run.stderr)
assert run.returncode == 0, run.stdout + run.stderr
assert 'sorryAx' not in run.stdout + run.stderr
dependencies = re.findall(
    r"'([^']+)' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)",
    run.stdout,
)
expected = {'Blc.SelfintWiden.' + name for name in
            re.findall(r'^#print axioms ([\w.]+)$', lean_source, re.M)}
assert len(dependencies) == len(expected) == 76, (len(dependencies), len(expected))
assert {name for name, _ in dependencies} == expected
assert all(set(a.split(', ')) <= {'propext', 'Quot.sound', 'Classical.choice'}
           for _, a in dependencies if a)
record = {
    'command': command,
    'exit_code': run.returncode,
    'elapsed_seconds': round(elapsed, 4),
    'threads': 2,
    'timeout_seconds': 110,
    'printed_theorems': len(dependencies),
    'axiom_free_theorems': sum(not a for _, a in dependencies),
    'source_wire_lean_match': True,
    'polished_matches_canonical_162': True,
    'written_bits': len(written),
    'polished_bits': len(polished),
    'widen_lean_sha256': hashlib.sha256(lean_source.encode()).hexdigest(),
}
(LANE / 'proof_check.json').write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps(record, indent=2))
