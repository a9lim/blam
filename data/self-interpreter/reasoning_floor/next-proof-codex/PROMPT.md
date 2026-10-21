Lane "next-proof-codex": is the 165's NEXT region optimal? Read
/Users/a9lim/Work/blam/tmp/overnight/BRIEF.md (contract, the 165), then
docs/classical/self-interpreter/interpreter.md §2, §4 (module grammar), §5,
and these reports:
  tmp/overnight/reader-proof/REPORT.md   — a handwritten proof, by residual
      tracing, that with the 165's knot and NEXT fixed every reader body costs
      ≥ 43 (two reviews found it essentially right; gaps repaired). Its METHOD
      is the model for this lane: a structure theorem from the laws, a
      head-path decomposition, a role inventory priced at cheapest
      realizations, and a minimization over a few shapes.
  tmp/overnight/env/REPORT.md §3, §5     — cell ≥ 24 / lift ≥ 19 under weak laws.
  tmp/overnight/nextfuse/REPORT.md       — a catalogue of NEXT variants and a
      decomposition heuristic for 92 (NOT a theorem: an independent review in
      tmp/overnight/verify/vdispatch_codex.md §5–§6 refuted its shared-argument
      lemma with a pair-packing construction and explained what a real proof
      must specify).

THE QUESTION. Fix the 165's knot and reader:

  E_N = (\x. x x) (\x. (\intL. \cont. (\next. \list.
            list (\bit0. bit0 (\u \r. r next) cont) (list list list)) N) (x x))

where N is any term over the frame [cont, intL, x] (de Bruijn depths as in the
165). The 165 is N = \bit1. intL (\exp. bit1 (cont (\args \arg. exp (\zx \zy.
zx arg (zy args)))) (intL (\exp2. cont (\args. exp args (exp2 args))))), 92 bits.
Prove: if E_N is a self-interpreter (the exact contract) then |N| ≥ 92 — or
find a cheaper N (that IS a sub-165: build it, run
`python3 tools/self-interpreter/polish.py FILE.lam` from the repo root, and
report immediately in your final message).

Note what is fixed and what is not: the reader hands N the second tag bit and
the stream after it (`r next = next b2 r2`), the variable value is the raw
unary code r with cont receiving (r, N); NEXT is free to choose how λ-values,
environments and APP values work, but the raw-code variable values force the
environment to answer `r env` as lookup, and the root forces λz.M values.
First derive the laws N must satisfy from the contract (on actual streams,
with actual intL = E_N behaviour, which N may exploit — do not assume intL
rigid unless you prove it can be). Then price. A complete theorem is the goal;
a precisely delimited conditional theorem plus an exact list of residual
cases is the fallback. Rigour first; mark handwritten vs checked. Small fixed
checks only (seconds), no enumeration of N, ≤ 2 threads. Write files only in
your lane directory (given in the prompt that sent you); REPORT.md there.

Your lane directory: /Users/a9lim/Work/blam/tmp/overnight/next-proof-codex/
