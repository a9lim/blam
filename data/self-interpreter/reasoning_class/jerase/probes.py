#!/usr/bin/env python3
"""Explicit derived witnesses only: no generator or search."""
import sys
sys.dont_write_bytecode = True
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
CASES = {
 'mixed58':r'\s. s (\b t n. b (t n) (c t (t t n))) j',
 'F52':r'\s. s ((\n b. b (\u t. t n) c) j) (s s s)',
 '165': r'(\n s. s (\b. b (\u t. t n) c) (s s s)) j',
 'mixed50': r'(\n s. s (\b. b (\u t. t n) c) (s s n)) j',
 'local_absorber': r'\s. s (\b. b I c) (s (\b t. b I (\u. t t t)) j)',
 'sourceF': r'\s. s I (s (\q. c)) (s (\b t. b K F) j (s s s))',
 'sourceF_shared': r'\s. (\f. s (\b. b I c) (s (\b t. b K f) j (s s f))) F',
 'mixed67': r'\s. (\n. s K (s F n) (s (\q. c) (s s n))) j',
}
for name, src in CASES.items():
    print(name)
    good, w = rd.check(src, nmax=8)
    assert good and w[-1] == 1
