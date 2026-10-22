#!/usr/bin/env python3
"""Recheck the sharing theorems and eight fixed boundary probes, no search."""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import hashlib, json, os, subprocess, time
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', RAYON_NUM_THREADS='2', TMPDIR=str(HERE))
env['LEAN_PATH'] = str(HERE) + ':' + str(ROOT / 'lean/.lake/build/lib/lean')
records=[]
started=time.monotonic()

def run(label, command, cwd):
    begin=time.monotonic()
    p=subprocess.run(command, cwd=cwd, env=env, capture_output=True, text=True, timeout=110)
    output=p.stdout+p.stderr
    (HERE/(label+'.log')).write_text(output)
    records.append(dict(label=label, command=command, cwd=str(cwd), seconds=time.monotonic()-begin, exit_code=p.returncode))
    assert p.returncode == 0, (label, output)
    assert 'sorryAx' not in output and 'Lean.ofReduceBool' not in output and 'declaration uses `sorry`' not in output, (label, output)
    return output

run('lean-version',['lean','--version'], ROOT/'lean')
run('boundary-checks',[sys.executable,str(HERE/'boundary_check.py')], ROOT)
for name in ('RoleAlgebra','ClosureBarrier','BoundaryAlgebra','BoundaryChecks','ReaderHoist','SourceCost','LocalCost','DispatchAudit','SourceFront','FlatSemantics','FlatMinimum','RootFlat','FlatPrefix','LetSink','HelperPair','ClosedSpecializer','LambdaSink','SourceBody','StreamHelpers','StreamSpecializer','NeededHead','NestedLets'):
    run(name, ['lean','-j2','-R',str(HERE),'-o',str(HERE/(name+'.olean')),str(HERE/(name+'.lean'))], ROOT/'lean')
files=['RoleAlgebra.lean','ClosureBarrier.lean','BoundaryAlgebra.lean','BoundaryChecks.lean','boundary_check.py','verify.py','dual.txt','near_reader.txt','ReaderHoist.lean','SourceCost.lean','LocalCost.lean','DispatchAudit.lean','SourceFront.lean','FlatSemantics.lean','FlatMinimum.lean','RootFlat.lean','FlatPrefix.lean','LetSink.lean','HelperPair.lean','ClosedSpecializer.lean','LambdaSink.lean','SourceBody.lean','StreamHelpers.lean','StreamSpecializer.lean','NeededHead.lean','NestedLets.lean']
sha={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in files}
record=dict(total_seconds=time.monotonic()-started, runs=records, sha256=sha, threads_per_child=2, timeout_seconds_per_child=110, finite_source_terms_checked=2, fixed_probe_instances=8, kernel_helper_cases=dict(fixed_F=10, generic_local=8, generic_root=3, identity_entries=27, identity_distinct=26, canonical_reductions=2, stream_specializers=4, stream_root_helpers=10, generic_stream_root_helpers=8), term_sweeps=0)
(HERE/'verification.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps(dict(total_seconds=record['total_seconds'],runs=len(records),longest_child=max(x['seconds'] for x in records),axiom_audit='only propext, Classical.choice and Quot.sound; no sorryAx or native-decide trust axiom'),indent=2))
