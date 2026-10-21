#!/usr/bin/env python3
"""Battery, then the optimal let structure, for candidate interpreters.

    polish.py FILE.lam...

For each file: run battery.py; if the candidate passes, run
`blam golf letopt` (three cuts below 176 bits, two above; a timeout skips
the run) on its core and on the term as written, report the smallest
rendering, and battery-check any rendering below 165. A new algorithm's
size is its letopt minimum, not its first written form.

Needs target/release/blam with the lab feature.
"""
import os
import re
import subprocess
import sys
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(ROOT / "tools"))
import battery

BLAM = str(ROOT / "target" / "release" / "blam")
BATTERY = str(HERE / "battery.py")


def battery_line(*args):
    r = subprocess.run([sys.executable, BATTERY, *args], capture_output=True, text=True, cwd=ROOT)
    return (r.stdout + r.stderr).strip()


def main():
    for f in sys.argv[1:]:
        line = battery_line(f)
        print(f"{f}: {line}")
        if "fail=0" not in line:
            continue
        bits = battery.enc(battery.compile_lam(open(f).read()))
        runs = ((["--max-cuts", "2"],) if len(bits) > 175
                else (["--max-cuts", "3"], ["--no-inline", "--max-cuts", "2"]))
        for args in runs:
            try:
                r = subprocess.run([BLAM, "golf", "letopt", "--bits", bits, "--report-le", "164",
                                    "--threads", "2", *args],
                                   capture_output=True, text=True, timeout=240)
            except subprocess.TimeoutExpired:
                print(f"  letopt {' '.join(args)}: timeout")
                continue
            m = re.search(r"smallest rendering over .*?: (\d+) bits", r.stdout)
            print(f"  letopt {' '.join(args)}: smallest {m.group(1) if m else '?'}")
            best = re.search(r"best (\d+) ([01]+)", r.stdout)
            if best and int(best.group(1)) < 165:
                fd, p = tempfile.mkstemp(suffix=".blc", dir=str(Path(f).resolve().parent))
                os.close(fd)
                Path(p).write_text(best.group(2) + "\n")
                print(f"  sub-165 rendering {best.group(1)} -> {p}: {battery_line('--bits', best.group(2))}")


if __name__ == "__main__":
    main()
