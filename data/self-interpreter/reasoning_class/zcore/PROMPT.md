Lane "zcore" (wave 5): the zero-compatible core theorem.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md §3
in full, then tmp/round4/d1open/REPORT.md and NOTES.md (the deletion lemma
and its "zero-compatible core" suggestion) and tmp/round4/jn/REPORT.md (the
core lemmas L1/L2: unary core ≥ 20, the only cores through 23 bits).
Lane directory: /Users/a9lim/Work/blam/tmp/round4/zcore/ — write only there.

The reduction (d1open, handwritten). Replace a subterm Q of a reader by a
cheaper Q' with the same value on every unary probe; the result is still a
unary core (the unary law holds; the zero law may break). The only unary
cores through 22 bits are s (λq. c) (s s j) and s (λq. c) (s s s), so a
reader carrying |Q| − |Q'| bits of zero-only material has
w ≥ 29 + (|Q| − |Q'|). The 162 and the 164 both carry exactly 10 such bits
around a 30-bit unary core: keeping j alive on the zero run is what raises
the core from 23 to 30.

Goal: state and prove the zero-compatible core theorem as precisely as you
can — roughly, "after deleting zero-only material, a unary core that is
still compatible with the zero law (its j survives on a zero stream, or
whatever the right condition is) costs at least 30, and zero-only material
plus core together give w ≥ 46" — or find the exact point where it fails
(a witness reader, even an expensive one, refuting a step). Because the
deletion lemma is semantic (it compares values on probes, not syntax), it
should apply to readers with lets and redexes too: check that carefully,
since sharing between roles is exactly what every open case of w ≥ 46
comes down to. Suggested route (d1open's): classify cores by how the unary
run disposes of j — an absorber binder (the 162's λu), the stream's final
K, or a second dispatch — and price each with the core lemmas; carry the
bound through lets with close46's kernel-checked weighted-β balance
(lean/Blc/SelfintLocalCost, SelfintSourceCost; namespace map in
tmp/round4/integrate2/REPORT.md) instead of enumerating them. Test every
claim on the 162, the 47-bit reader λs. s I (λu. s (λq. c) (s s s)) j, the
164, the hoisted 165, and BRIEF5.md's R59/R84/R104.

COMPUTE (hard, from BRIEF5.md): no check over 100,000 terms, 2 minutes,
1 GB or 2 threads; a finite check only to close one pinned sub-case after
reasoning, with a stated completeness argument.

OUTPUT DISCIPLINE: keep every response under ~10k output tokens, one idea
per turn; append progress to NOTES.md after every step, in several small
writes. Finish with REPORT.md in the BRIEF.md format (if the write is
refused, return the report as your final text). Mark every claim
handwritten, computer-checked or kernel-checked, with its hypotheses.
