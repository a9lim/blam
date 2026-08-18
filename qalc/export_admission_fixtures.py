#!/usr/bin/env python3
"""Export the Phase-4 Rust selector's frozen Gate-1 candidates.

The authoritative terms/certificates remain the twenty kernel fixtures.
This exporter strips their carriers and traces into one tiny embedded wire
file; it never re-discovers a certificate.  `--check` is the workflow's
byte-for-byte drift gate.
"""

from __future__ import annotations

import argparse
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "tests" / "qalc"
TARGET = ROOT / "src" / "qalc" / "admission_pins.qfx"
NAMES = (
    "3coin", "B", "Ccoll", "HH", "HNH", "W", "buried", "dup",
    "dupcall", "hweave", "lone", "negative", "palpha", "pstar",
    "q", "q2", "qprime", "qq", "selector", "weave",
)


def render() -> str:
    out = ["qalc-fixtures v1"]
    for name in NAMES:
        lines = (SOURCE / f"{name}.qfx").read_text().splitlines()
        start = lines.index(f"begin program {name}")
        out.extend(lines[start : start + 3])
        at = start + 3
        if lines[at] == "cert none":
            out.append(lines[at])
        else:
            if lines[at] != "begin cert":
                raise AssertionError((name, lines[at]))
            end = lines.index("end cert", at)
            out.extend(lines[at : end + 1])
        # parse_fixtures intentionally accepts empty carrier/trace/final
        # sections; commitment remains mandatory in the versioned wire.
        out.append("commitment " + "0" * 64)
        out.append("end program")
    return "\n".join(out) + "\n"


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    rendered = render()
    if args.check:
        if not TARGET.exists() or TARGET.read_text() != rendered:
            raise SystemExit(f"stale admission pins: run {Path(__file__).name}")
        print(f"{TARGET.relative_to(ROOT)}: byte-identical")
        return
    TARGET.parent.mkdir(parents=True, exist_ok=True)
    TARGET.write_text(rendered)
    print(f"wrote {TARGET.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
