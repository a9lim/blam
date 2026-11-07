#!/usr/bin/env python3
"""Recheck this lane only. No term sweeps; every child has a 110-second cap."""
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
LEAN = ROOT / "lean"
ENV = dict(os.environ, PYTHONDONTWRITEBYTECODE="1", RAYON_NUM_THREADS="2",
           OMP_NUM_THREADS="2", OPENBLAS_NUM_THREADS="2", MKL_NUM_THREADS="2",
           LEAN_PATH=f"{HERE}:{LEAN / '.lake/build/lib/lean'}")
records = []
started = time.monotonic()


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(name, argv, cwd):
    before = time.monotonic()
    p = subprocess.run(argv, cwd=cwd, env=ENV, text=True,
                       stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                       timeout=110)
    elapsed = time.monotonic() - before
    (HERE / f"{name}.log").write_text(p.stdout)
    records.append(dict(name=name, argv=list(map(str, argv)), cwd=str(cwd),
                        exit_code=p.returncode, seconds=elapsed))
    print(f"{name}: exit={p.returncode}, {elapsed:.3f}s", flush=True)
    if p.returncode:
        print(p.stdout, file=sys.stderr)
        raise RuntimeError(f"{name} failed")
    return p.stdout


run("lean-version", ["lean", "--version"], LEAN)
run("fixed-facts", [sys.executable, str(HERE / "factory_check.py")], ROOT)
run("count-refinement", [sys.executable, str(HERE / "refine_counts.py")], ROOT)

sources = [
    HERE.parent / "floor" / "RoleAlgebra.lean",
    HERE.parent / "lean138" / "Reader138.lean",
    HERE.parent / "floor" / "ShallowFacts.lean",
    HERE.parent / "floor" / "ReaderHoist.lean",
    HERE / "OneCallback.lean",
    HERE / "SerialSelectors.lean",
    HERE / "MinimalLeaf.lean",
    HERE / "ReaderFacts.lean",
]
hashes = {str(p.relative_to(ROOT)): digest(p) for p in sources}
for p in sources:
    run(p.stem, ["lean", "-j2", "-R", str(p.parent), "-o",
                 str(HERE / (p.stem + ".olean")), str(p)], LEAN)
    assert digest(p) == hashes[str(p.relative_to(ROOT))], f"Source changed: {p}"

theorems = [
    "Blc.Round3Prove46.marked_value",
    "Blc.Round3Prove46.marked_finish",
    "Blc.Round3Prove46.value_trailing_hole",
    "Blc.Round3Prove46.one_callback_trailing_hole",
    "Blc.Round3Prove46.nonliteral_selector_forces_arm",
    "Blc.Round3Prove46.data_prefix_result",
    "Blc.Round3Prove46.serial_two_callback_forces_arm",
    "Blc.Round3Prove46.serial_two_two_price",
    "Blc.Round3Prove46.minimum_leaf_nonlinearity",
    "Blc.Round3Prove46.first_contractor_linear",
    "Blc.Round3Prove46.linear_head_removes_one_lambda",
    "Blc.Round3Prove46.linear_free_eight_depth_one",
    "Blc.Round3Prove46.linear_free_four_depth_two",
    "Blc.Round3Prove46.filled_wire_implies_weight",
    "Blc.Round3Prove46.contraction_hoist_delta",
    "Blc.Round3Prove46.contraction_hoist_bound",
    "Blc.Round3Reader.hoist_weight",
    "Blc.Round3Prove46Facts.factory_false",
    "Blc.Round3Prove46Facts.factory_ident",
    "Blc.Round3Prove46Facts.factory_self",
    "Blc.Round3Prove46Facts.expanded_selector_reader",
    "Blc.Round3Prove46Facts.shared_factory_reader",
    "Blc.Round3Prove46Facts.reference_weight",
    "Blc.Round3Prove46Facts.expanded_selector_weight",
    "Blc.Round3Prove46Facts.shared_factory_weight",
]
audit = HERE / "AxiomAudit.lean"
audit.write_text("import SerialSelectors\nimport MinimalLeaf\n"
                 "import ReaderFacts\nimport ReaderHoist\n\n" +
                 "\n".join(f"#print axioms {n}" for n in theorems) + "\n")
output = run("axiom-audit", ["lean", "-j2", "-R", str(HERE), str(audit)], LEAN)
allowed = {"propext", "Quot.sound", "Classical.choice"}
used = set()
for group in re.findall(r"depends on axioms: \[([^\]]*)\]", output):
    used.update(x.strip() for x in group.split(",") if x.strip())
assert used <= allowed, used - allowed
assert "sorryAx" not in output and "ofReduceBool" not in output

for p in [audit, HERE / "factory_check.py", HERE / "refine_counts.py", HERE / "verify.py",
          HERE.parent / "floor" / "STATE46.md", HERE.parent / "floor" / "STATE46-counts.md",
          HERE.parent / "floor" / "role-pricing.md", HERE.parent / "floor" / "shallow-readers.md"]:
    hashes[str(p.relative_to(ROOT))] = digest(p)

result = dict(status="passed", total_seconds=time.monotonic()-started,
              threads_per_child=2, child_timeout_seconds=110,
              runs=records, sha256=hashes, audited_theorems=theorems,
              used_axioms=sorted(used), term_sweeps=0,
              fixed_equalities=5, count_rows=1098, removed_rows=151,
              remaining_rows=947)
(HERE / "verification.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({k: result[k] for k in ("status", "total_seconds", "used_axioms",
                                        "removed_rows", "remaining_rows")}), flush=True)
