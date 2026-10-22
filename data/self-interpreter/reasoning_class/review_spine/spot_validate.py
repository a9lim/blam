"""Review-only rerun of the small independent validator; outputs redirected here."""
import importlib.util, json, os, resource, signal, sys, threading, time
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
        if rss > 900_000_000 or time.monotonic() - START > 110:
            os._exit(97)
        time.sleep(.1)
threading.Thread(target=watch, daemon=True).start()
path = HERE.parent / 'firstopj' / 'validate.py'
spec = importlib.util.spec_from_file_location('review_validate', path)
v = importlib.util.module_from_spec(spec)
spec.loader.exec_module(v)
v.H = HERE
v.main()
