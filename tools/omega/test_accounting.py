#!/usr/bin/env python3
"""Reject stale or overlapping inputs before publishing a certified Ω bound."""

import tempfile
import unittest
from pathlib import Path

import bound

ROOT = Path(__file__).resolve().parents[2]


class CertifiedCensusTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.args = []
        for flag, name in (("--census", "classical/census_table.txt"),
                           ("--floors", "classical/speed_floors.txt"),
                           ("--unknowns", "classical/unknowns.txt"),
                           ("--halts", "certificates/bb_halts.tsv")):
            self.args.extend((flag, str(ROOT / "data" / name)))

    def replace(self, flag, text):
        path = Path(self.tmp.name) / flag.removeprefix("--")
        path.write_text(text)
        self.args[self.args.index(flag) + 1] = str(path)

    def test_already_measured_halter_is_not_counted_twice(self):
        # Identity already contributes to the measured halting subtotal.
        self.replace("--halts", "0010\t0010\t0\t4\n")
        with self.assertRaisesRegex(AssertionError, "not a raw census unknown"):
            bound.certified_census(self.args)

    def test_updated_census_cannot_reuse_stale_unknown_inventory(self):
        lines = (ROOT / "data/classical/census_table.txt").read_text().splitlines()
        for i, line in enumerate(lines):
            parts = line.split()
            if parts and parts[0] == "35":
                # A future evaluator recognizes the two symbolically proved halters.
                parts[2] = str(int(parts[2]) + 2)
                parts[4] = str(int(parts[4]) - 2)
                lines[i] = " ".join(parts)
        self.replace("--census", "\n".join(lines) + "\n")
        with self.assertRaisesRegex(ValueError, "raw unknown counts disagree"):
            bound.certified_census(self.args)

    def test_halter_cannot_remain_in_frontier(self):
        _, _, frontier, halters = bound.certified_census(self.args)
        self.replace("--unknowns", "\n".join([*frontier, next(iter(halters))]) + "\n")
        with self.assertRaisesRegex(AssertionError, "frontier/halter inventory mismatch"):
            bound.certified_census(self.args)


if __name__ == "__main__":
    unittest.main()
