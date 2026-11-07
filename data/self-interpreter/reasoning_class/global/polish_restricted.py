#!/usr/bin/env python3
"""Let-structure normalization of fixed restricted-domain witnesses only."""
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import time

LANE = Path(__file__).resolve().parent
frozen = LANE / "blam-guard"
if not frozen.exists():
    shutil.copy2(LANE.parents[2] / "target/release/blam", frozen)
names = sys.argv[1:] or ["towerValue57", "towerBoth88", "poisonValue84"]
report_path = LANE / "restricted-letopt.json"
report = json.loads(report_path.read_text()) if report_path.exists() else {}
for name in names:
    bits = (LANE / f"{name}.blc").read_text().strip()
    cmd = [str(frozen), "golf", "letopt", "--bits", bits,
           "--report-le", str(len(bits)), "--threads", "2", "--max-cuts", "3"]
    start = time.monotonic()
    r = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
    (LANE / f"{name}-letopt.log").write_text(r.stdout + r.stderr)
    found = re.search(r"smallest rendering over .*?: (\d+) bits", r.stdout)
    report[name] = {"as_written": len(bits),
                    "polished": int(found.group(1)) if found else None,
                    "seconds": time.monotonic() - start,
                    "returncode": r.returncode}
    print(name, report[name], flush=True)
report_path.write_text(json.dumps(report, indent=2) + "\n")
