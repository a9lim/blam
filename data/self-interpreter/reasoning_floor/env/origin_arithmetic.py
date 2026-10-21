#!/usr/bin/env python3
"""Check the finite arithmetic in borrowed-data-bound.md, not its origin lemmas."""
import json
from pathlib import Path

cases = []
for body_apps in range(3):
    for arg_apps in range(3 - body_apps):
        for uses in range(body_apps + 2):
            change = (uses - 1) * arg_apps - 1
            assert change <= 0
            if change == 0:
                assert (body_apps, arg_apps, uses) == (1, 1, 2)
            cases.append({
                "body_apps": body_apps,
                "argument_apps": arg_apps,
                "uses": uses,
                "change": change,
            })

path = Path(__file__).with_suffix(".json")
path.write_text(json.dumps({
    "scope": "Finite count inequality only; origin lemmas are handwritten.",
    "cases": cases,
    "zero_change_cases": [x for x in cases if x["change"] == 0],
}, indent=2) + "\n")
print(f"{len(cases)} arithmetic cases checked; unique zero-change case (1,1,2).")
