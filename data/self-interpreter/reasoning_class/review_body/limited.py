import os, sys, time, subprocess, signal, json, shutil
from pathlib import Path
H = Path(__file__).resolve().parent
ROOT = H.parents[2]
mode, name = sys.argv[1:3]
env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', OMP_NUM_THREADS='1', OPENBLAS_NUM_THREADS='1')
if mode == 'lean':
    src = ROOT / name
    dest = H / src.name
    shutil.copyfile(src, dest)
    env['LEAN_PATH'] = str(H) + ':' + str(ROOT / 'lean/.lake/build/lib/lean')
    cmd = ['lean', '-j2', '-R', str(H), '-o', str(dest.with_suffix('.olean')), str(dest)]
    cwd = ROOT / 'lean'
    label = src.stem
else:
    cmd = [sys.executable, str(H / 'spot.py'), name]
    cwd = ROOT
    label = name
start = time.monotonic()
peak = 0
reason = None
with (H / (label + '.log')).open('w') as log:
    child = subprocess.Popen(cmd, cwd=cwd, env=env, stdout=log, stderr=subprocess.STDOUT, start_new_session=True)
    while child.poll() is None:
        if time.monotonic() - start > 110:
            reason = 'time'
            break
        rss = subprocess.run(['ps', '-o', 'rss=', '-p', str(child.pid)], capture_output=True, text=True).stdout.strip()
        peak = max(peak, int(rss or 0) * 1024)
        if peak > 850_000_000:
            reason = 'memory'
            break
        time.sleep(.05)
    if reason:
        os.killpg(child.pid, signal.SIGKILL)
    code = child.wait()
result = dict(command=cmd, code=code, seconds=time.monotonic()-start, peak_child_rss=peak, limit=reason)
(H / (label + '.resources.json')).write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result))
print((H / (label + '.log')).read_text())
sys.exit(code)
