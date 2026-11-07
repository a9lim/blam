#!/usr/bin/env python3
"""Pin the 51 archived pending ASTs to the symbolic Lean exclusions.

This reads only X_REMAINING.json: it performs no term generation, search,
normalization, or candidate enumeration. Default/--check verifies the
checked-in correspondence module; --write reproduces it from the pinned
archive. Lean separately checks every explicit AST equality and theorem.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
ARCHIVE = ROOT / "data/self-interpreter/reasoning_class/pending/X_REMAINING.json"
OUTPUT = ROOT / "lean/Blc/SelfintRootLetPending.lean"
ARCHIVE_SHA256 = "4a41c8118848fd8113a6e4694581df56c86637b0f222a2f3e4524bd304fa1d8f"

# This explicit assignment is the complete, fixed 51-record correspondence.
FAMILIES = [
    ("Embedding", range(2162, 2165)),
    ("IdentityCollapse", range(4157, 4160)),
    ("IdentityDuplicate", range(4166, 4169)),
    ("IdentitySpine", range(4178, 4181)),
    ("IdentityPeel", range(4187, 4190)),
    ("Forcing", range(4247, 4250)),
    ("BinaryOrbit", range(4289, 4292)),
    ("Cycles", range(4627, 4630)),
    ("Powers", range(4995, 4998)),
    ("Orbit", range(4998, 5001)),
    ("Cycles", range(7584, 7590)),
    ("Embedding", range(9030, 9036)),
    ("Cycles", range(9456, 9462)),
    ("Peel", range(9468, 9471)),
]
FAMILY = {i: f"SelfintRootLet{name}" for name, indices in FAMILIES for i in indices}


def as_tuple(x):
    return tuple(as_tuple(y) for y in x) if isinstance(x, list) else x


def lean_ast(tree, depth=0):
    """Translate the archive's explicit tree; j is free index depth+1."""
    match tree:
        case ["v", n] if isinstance(n, int) and 0 <= n < 64:
            return f"(.var {n})"
        case ["k", "j"]:
            return f"(.var {depth + 1})"
        case ["l", body]:
            return f"(.lam {lean_ast(body, depth + 1)})"
        case ["a", fn, arg]:
            return f"(.app {lean_ast(fn, depth)} {lean_ast(arg, depth)})"
        case _:
            raise ValueError(f"Unexpected archived AST node: {tree!r}")


def render(rows):
    lines = [
        "/-",
        "Exact correspondence to the 51 records in",
        "data/self-interpreter/reasoning_class/pending/X_REMAINING.json.",
        f"Archive SHA256: {ARCHIVE_SHA256}",
        "",
        "Each source below is the literal archived AST, with the distinguished",
        "j marker translated to free index depth+1. Every equality to a symbolic",
        "family instance and every non-reader conclusion is kernel checked.",
        "The Python companion only checks this fixed archive and regeneration;",
        "it does not enumerate candidates or provide semantic evidence.",
        "This closes this ledger, not the unrestricted reader-floor theorem.",
        "Regenerate: python tools/self-interpreter/theory/rootlet_pending.py --write",
        "Verify: python tools/self-interpreter/theory/rootlet_pending.py --check",
        "-/",
    ]
    lines += [f"import Blc.{name}" for name in sorted(set(FAMILY.values()))]
    lines += [
        "namespace Blc.SelfintRootLetPending",
        "open Term SelfintClass SelfintWidenHoist",
        "set_option maxRecDepth 10000",
        "set_option maxHeartbeats 3000000",
        "",
    ]
    for row in rows:
        i = row["index"]
        family = FAMILY[i]
        lines += [
            f"-- Archived source {i}; AST SHA256 {row['sha256']}.",
            f"def source{i} : Term := {lean_ast(row['tree'])}",
            f"theorem source{i}_eq : source{i} = {family}.pending{i} := rfl",
            f"theorem source{i}_not_reader : ¬ Reader source{i} := by",
            f"  rw [source{i}_eq]",
            f"  exact {family}.pending{i}_not_reader",
            "",
        ]
    lines += ["def archivedSources : List (Nat × Term) := ["]
    lines += [f"  ({row['index']},source{row['index']})" + ("," if n + 1 < len(rows) else "]")
              for n, row in enumerate(rows)]
    lines += [
        "",
        "theorem archived_count : archivedSources.length = 51 := by decide",
        "theorem archived_indices_unique : (archivedSources.map Prod.fst).Nodup := by decide",
        "",
        "/-- The 51 literal archived sources all fail the rigid reader laws. -/",
        "theorem archived_not_reader (entry : Nat × Term) (h : entry ∈ archivedSources) :",
        "    ¬ Reader entry.2 := by",
        "  simp only [archivedSources,List.mem_cons,List.not_mem_nil,or_false] at h",
        "  rcases h with " + " | ".join("rfl" for _ in rows),
    ]
    lines += [f"  · exact source{row['index']}_not_reader" for row in rows]
    lines += [
        "",
        "#print axioms archived_not_reader",
        "end Blc.SelfintRootLetPending",
        "",
    ]
    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    modes = parser.add_mutually_exclusive_group()
    modes.add_argument("--write", action="store_true", help="reproduce the Lean correspondence module")
    modes.add_argument("--check", action="store_true", help="check the existing module (default)")
    args = parser.parse_args()
    raw = ARCHIVE.read_bytes()
    assert hashlib.sha256(raw).hexdigest() == ARCHIVE_SHA256, "Archive bytes changed"
    rows = json.loads(raw)
    assert len(rows) == len(FAMILY) == 51
    assert [row["index"] for row in rows] == sorted(FAMILY), "Archive index correspondence changed"
    for row in rows:
        actual = hashlib.sha256(repr(as_tuple(row["tree"])).encode()).hexdigest()
        assert actual == row["sha256"], f"AST hash mismatch: {row['index']}"
    expected = render(rows)
    if args.write:
        OUTPUT.write_text(expected)
    else:
        assert OUTPUT.read_text() == expected, "Lean correspondence differs from pinned archive"
    print(f"{'Wrote' if args.write else 'Verified'} 51 archived ASTs and theorem correspondences; no candidates generated.")


if __name__ == "__main__":
    main()
