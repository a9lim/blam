Lane "golf162": golf a brand-new 162-bit BLC self-interpreter. Lane directory
given at the end; write files only there.

Contract: E C (⌜M⌝ ++ N) =β C (λz. M) N for every closed M (divergent
included), C and N rigid; ⌜λM⌝ = 00⌜M⌝, ⌜M N⌝ = 01⌜M⌝⌜N⌝, ⌜var n⌝ = 1ⁿ0
(n ≥ 1); cons b r = λf. f b r; bit 0 = K = λx y. x, bit 1 = F = λx y. y.
|M| = 2L + 4A + 2 + X (X = sum of 0-based de Bruijn indices).

The new record, found tonight (tmp/overnight/self/int162.lam; L 16, A 24, X 32):

  (\x. x x) (\x. (\intL. \cont. \list.
    list (\a. a) (\u. list (\q. cont) (list list u))
      (\bit1. intL (\exp. bit1
        (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
        (intL (\exp2. cont (\args. exp args (exp2 args)))))))
    (x x))

How it works: `list I` turns the first cell into its own selection `b r`.
On a 0-tag, `K r V NEXT → r NEXT = NEXT b2 r2` — the zero arm is the tail
itself, applied to NEXT, which is the reader's last operand (no `next` let,
no zero-arm lambdas). On a variable, `F r V NEXT → V NEXT`; V reopens the
stream, `list (\q. cont)` hands the tail r to cont, and `list list u` with
u = NEXT as junk is the skip (`r r →* K N`, so `K N NEXT → N`). Everything
from NEXT inward is the previous record's (the 165, docs/classical/
self-interpreter/interpreter.md §1–§2, which explains values, environments
and the cell). Anatomy: knot + intL let 22, λcont λlist 4, reader
applications 6, `list` 2, `I` 4, V 28, NEXT 96 (the 165's 92, +4 because it
now sits under λlist).

Goal: a 161-bit or smaller self-interpreter, by reasoning. The neighbourhood
of this architecture is unexplored (letopt ≤ 3 cuts and the βη component to
slack 20 find nothing smaller, so a win needs a protocol-level change). Look
for the kind of move that produced it: work two branches need computed once
where it is right for both; a Scott structure's own application supplying an
argument; an operand that one branch uses and the other erases. Questions
worth attacking: can V get r without reopening the stream; can NEXT avoid
the +4 depth tax (it has four references to cont/intL); can the knot or the
intL let interact with the new reader (the stream self-application
`list list` is there); can ABS/APP exploit that NEXT is now inside λlist.

Tools (from /Users/a9lim/Work/blam): `python3 tools/self-interpreter/polish.py
FILE.lam` — exact battery (668 programs, ~2 s) then the optimal let structure;
`python3 tools/self-interpreter/battery.py FILE.lam --max-bits 21` for a
deeper check. Write candidates as .lam in named-lambda syntax (lets as
explicit redexes, unoptimized, so the printed size is the term as written).
Reason first; light checks only (seconds each, ≤ 2 threads, no enumeration
or sweeps). Report every complete interpreter (bits, battery line, polished
size, idea), every identity with proof, every obstruction with proof, and
your honest read. A sub-162 claim needs a file and a passing battery line.

Your lane directory: /Users/a9lim/Work/blam/tmp/overnight/golf162/ — write REPORT.md there.
