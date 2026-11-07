"""Run one check with exact child PID, wall 115 s, CPU 110 s, RSS 940 MB."""
import os, sys, time, subprocess, resource, json
from pathlib import Path
BASE = Path(__file__).resolve().parent
name, *cmd = sys.argv[1:]
def limits():
    resource.setrlimit(resource.RLIMIT_CPU, (110, 110))
start = time.monotonic(); peak = 0; reason = None
with (BASE / (name + '.log')).open('w') as out:
    p = subprocess.Popen(cmd, stdout=out, stderr=subprocess.STDOUT, preexec_fn=limits,
                         env=dict(os.environ, PYTHONDONTWRITEBYTECODE='1'))
    while p.poll() is None:
        s = subprocess.run(['ps', '-o', 'rss=', '-p', str(p.pid)], capture_output=True, text=True)
        try: rss = int(s.stdout.strip()) * 1024
        except ValueError: rss = 0
        peak = max(peak, rss)
        if rss > 940_000_000: reason = 'RSS'
        if time.monotonic() - start > 115: reason = 'wall'
        if reason: p.kill(); p.wait(); break
        time.sleep(.1)
print(json.dumps(dict(cmd=cmd, exit=p.returncode, s=round(time.monotonic()-start, 1), rss_mb=peak//10**6, killed=reason)))
print((BASE / (name + '.log')).read_text())
