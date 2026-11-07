"""Check only the 11 retained cutoff patterns, without rebuilding operand pools."""
import ast, json, os, resource, signal, sys, threading, time
from pathlib import Path
sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
START = time.monotonic()
resource.setrlimit(resource.RLIMIT_CPU, (100, 110))
signal.alarm(110)
def watch():
    while True:
        rss = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss
        if sys.platform != 'darwin': rss *= 1024
        if rss > 900_000_000 or time.monotonic()-START > 110: os._exit(97)
        time.sleep(.1)
threading.Thread(target=watch, daemon=True).start()
sys.path.insert(0, str(HERE.parent/'jn'))
import dbn as D
patterns = probes = occurrences = 0
for line in (HERE.parent/'loop'/'partial_selector.log').read_text().splitlines():
    if not line.startswith('source-cycle '): continue
    _, multiplicity, encoded = line.split(' ', 2)
    kind, t = ast.literal_eval(encoded)
    patterns += 1; occurrences += int(multiplicity)
    ts = [D.inst(t, s) for s in (D.Z(),D.U(1),D.U(2),D.U(3))] if kind=='four-probes' else [t]
    for u in ts:
        probes += 1
        assert D.hnf_or_cycle(u,maxsteps=256)[0]=='cycle',(kind,t)
assert (patterns,occurrences,probes)==(11,19,17)
record = dict(patterns=patterns,original_operands=occurrences,cycle_checks=probes,
              max_beta_steps_per_check=256,upper_bound_beta_steps=probes*257,
              seconds=time.monotonic()-START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(HERE/'partial_cutoffs.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps(record,indent=2))
