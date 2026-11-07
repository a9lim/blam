import os, sys, signal, time
from pathlib import Path
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT/'tools/self-interpreter'))
import battery, polish
battery.BLAM = polish.BLAM = str(HERE/'blam')
signal.signal(signal.SIGALRM, lambda *_: (_ for _ in ()).throw(TimeoutError('115s lane limit')))
signal.alarm(115)
def line(*args):
    if args[0] == '--bits':
        import lc
        E = lc.decode(args[1],0)[0]
        path = 'bits'
    else:
        path = args[0]
        E = battery.compile_lam(Path(path).read_text())
    ok, skip, bad = battery.check(E, threads=2)
    return f'{len(battery.enc(E))} bits ok={ok} skip={skip} fail={len(bad)} {path}' + (f' {bad[:5]}' if bad else '')
polish.battery_line = line
original_run = polish.subprocess.run
def bounded_run(*args, **kwargs):
    kwargs['timeout'] = min(kwargs.get('timeout', 110), 110)
    return original_run(*args, **kwargs)
polish.subprocess.run = bounded_run
start=time.monotonic()
if sys.argv[1] == '--polish':
    sys.argv = ['polish.py', *sys.argv[2:]]
    polish.main()
else:
    for name in sys.argv[1:]:
        print(line(name), flush=True)
print(f'elapsed={time.monotonic()-start:.3f}s',flush=True)
