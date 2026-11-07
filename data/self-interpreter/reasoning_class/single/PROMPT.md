Lane "single" (wave 5): single-dispatch readers with a source redex.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md §3
in full (current), then tmp/round4/zcore/REPORT.md (all of it, especially
§§2, 5 and 6) and NOTES.md §§21–25, then tmp/round4/needbinder/REPORT.md
§§3–5 (the opener family, closed for minimum readers).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/single/ — write only there.

State. Every β-normal reader has w ≥ 46 (reviewed), so a reader below 46
has a source redex. By the zcore lane, a λ-rooted or hoisted reader below 46
is then (R-a) a single-dispatch reader — exactly one deletable site saving
8 to 15 bits and no closable `s I` anchor — or (R-b) a shared dispatcher
with an incompatible call, or (R-c) an under-applied dispatch. (R-a) is the
largest residue; you own it. After deleting its site the unary core is a
24–31-bit term — too many to enumerate, so this needs structure.

zcore's split of (R-a): pure single handler dispatches whose context
delivers j reduce through Lemma A's closure to the opener family
λs. s (λb t. B) j, closed for minimum readers (needbinder). What remains:
 (i) the cell's tail passing through as an argument;
 (ii) the reader's head being the stream's tail, so that on unary the
      reader reads cell 2 through a second-cell handler;
 (iii) a handler whose dispatch gets its second argument by reduction.
Witness of the class (correct, w = 66):
λs. (λv. s (λb t. b t (v t))) (λt u. c t (t t u)) j — one site b t (v t)
of σ 9 with a head redex.

Goal: close (R-a) for minimum readers below 46 (order: weight, λ count,
depth), or the exact survivors with witnesses, or a reader with w ≤ 45
(splice into the 162 in place of `list I V NEXT`, NEXT at the hole; battery;
polish; report at once). Tools: the site deletion lemma and its exact
savings; the three unary cores through 23 bits and T1 (any deletable site
with σ ≥ 16 forces 46); exact contraction prices
(Blc.SelfintSourceCost.contract_hoist_price,
Blc.SelfintLocalCost.weighted_beta_at, the let-saving formula) with
minimality; the β-normal bound — a reader below 46 normalizes to one of at
least 46, so its redexes must pay for themselves; close46's source
structure (lean/Blc, map in tmp/round4/integrate2/REPORT.md).

COMPUTE (hard, BRIEF5.md): no check over 100,000 terms, 2 minutes, 1 GB or
2 threads, validation runs included; a finite check only to close one
pinned sub-case after reasoning, with a stated completeness argument and
certified cut-offs.

OUTPUT DISCIPLINE: every response under ~10k output tokens, one idea per
turn; append progress to NOTES.md after every step, in several small
writes. Finish with REPORT.md in the BRIEF.md format (if the write is
refused, return the report as your final text). Mark every claim
handwritten, computer-checked or kernel-checked, with its hypotheses.
