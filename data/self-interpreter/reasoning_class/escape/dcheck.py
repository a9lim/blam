import sys
sys.path.insert(0, '/Users/a9lim/Work/blam/data/self-interpreter/reasoning_162/refute46')
import rd
# rigid-law check of the record's dual-operand readers (j, c rigid)
for src in [r"\s. s I (s (\q. c)) (s (\b. b (\u. j) (s s)))",
            r"\s. s (\b. b I c) (s (\b. b (b j) (s s)))",
            r"\s. s I (\u. u (s s u)) (s (\b. b (\u. j) c))",
            r"\s. s I (s (\q. c)) (s K j (s s s))"]:
    print(src); rd.check(src, nmax=3)
