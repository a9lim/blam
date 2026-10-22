"""Run one review check with an exact child PID, bounded wall/CPU/RSS."""
import os, sys, time, subprocess, resource, json
from pathlib import Path

BASE = Path(__file__).resolve().parent
name, *cmd = sys.argv[1:]
env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', OMP_NUM_THREADS='1',
           OPENBLAS_NUM_THREADS='1', MKL_NUM_THREADS='1', RAYON_NUM_THREADS='1')
def limits():
    resource.setrlimit(resource.RLIMIT_CPU, (110, 110))
    resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
start = time.monotonic()
peak = 0
reason = None
with (BASE / (name + '.log')).open('w') as out:
    p = subprocess.Popen(cmd, stdout=out, stderr=subprocess.STDOUT, env=env, preexec_fn=limits)
    while p.poll() is None:
        stat = subprocess.run(['ps', '-o', 'rss=', '-p', str(p.pid)], capture_output=True, text=True)
        try: rss = int(stat.stdout.strip()) * 1024
        except ValueError: rss = 0
        peak = max(peak, rss)
        if rss > 940_000_000: reason = 'RSS limit'
        if time.monotonic() - start > 115: reason = 'wall limit'
        if reason:
            p.kill()
            p.wait()
            break
        time.sleep(.10)
record = dict(command=cmd, exit=p.returncode, seconds=round(time.monotonic()-start,3),
              peak_rss_bytes=peak, killed=reason)
(BASE / (name + '.resource.json')).write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps(record))
print((BASE / (name + '.log')).read_text())
sys.exit(p.returncode if p.returncode else 0)
