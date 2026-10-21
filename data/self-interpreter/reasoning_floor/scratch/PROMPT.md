Lane "scratch": design a minimal BLC self-interpreter FROM SCRATCH. Lane
directory: /Users/a9lim/Work/blam/tmp/overnight/scratch/ (write only there).

Do NOT read anything under docs/classical/self-interpreter/,
data/self-interpreter/, tmp/overnight/ (except your own directory), or the
.lam files of ref/AIT, and do not reconstruct known interpreters from memory
on purpose. The point of this lane is an architecture nobody has anchored on.
(For calibration only: the best known is 165 bits.)

Contract. `⌜λM⌝ = 00⌜M⌝`, `⌜M N⌝ = 01⌜M⌝⌜N⌝`, `⌜var n⌝ = 1ⁿ0` (n ≥ 1, de
Bruijn, 1 = innermost). Input streams are Scott lists `cons b r = λf. f b r`
with bit 0 = `λx y. x` and bit 1 = `λx y. y`. A self-interpreter is a closed
E with `E C (⌜M⌝ ++ N) =β C (λz. M) N` for every closed M (including M with
no normal form), C and N rigid. Size in bits: λ and application cost 2 each,
`var n` costs n+1 (so |M| = 2L + 4A + 2 + X with X the sum of 0-based indices).

Design from first principles. Enumerate on paper the jobs an interpreter must
do (read bits, dispatch three tags, skip/lookup unary indices, build closures,
apply, recurse, return the exact remainder) and look for representations where
one operation does several jobs — data structures whose own application does
work, computations whose single result serves several branches. Try at least
three genuinely different architectures before optimizing one.

Tools (run from /Users/a9lim/Work/blam):
- `python3 tools/self-interpreter/battery.py FILE.lam` — exact contract on 668
  programs, ~2 s; success prints `N bits ok=667 skip=1 fail=0`. Write .lam in
  named-lambda syntax (`\x. body`, application by juxtaposition); lets are
  explicit redexes `(\v. body) value` and are not optimized, so the printed
  size is exactly the term as written.
- `python3 tmp/overnight/self/polish.py FILE.lam` — battery plus the optimal
  let structure (`blam golf letopt`); use it on every correct design.
No exhaustive sweeps, no run over ~2 minutes, at most 2 threads (shared
machine). Write REPORT.md: every architecture tried, every correct
interpreter (bits, battery line, polished size), and the ideas behind them.
