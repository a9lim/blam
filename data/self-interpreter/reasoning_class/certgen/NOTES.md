# certgen notes

## Orientation
Read BRIEF/BRIEF5, rootnarrow report and filters, shared SF/Y-family and C1/C2,
Combs/Rootlet3 advance lemma, and rootcert2 flow checker. Work is confined to
this lane. No consult back or delegation. Hypothesis: a general finite flow
certificate can avoid arity/template case distinctions; test precision first.

## Abstraction design
A monovariant flow set was too imprecise. Implemented finite Krivine-machine
closure stores and stack-prefix invariants, then a regular stack store that
retains unbounded pending arguments. The latter eliminates most stack-tail
false failures and is the authoritative direction. Binder allocation uses a
finite call string; application-site sensitivity matters, not just lambda
identity. Every certificate is replayed as a closed invariant, including
nonempty variable flow; neither fuel exhaustion nor a missing successor is
accepted. Unsuccessful analyses currently provide conservative witnesses,
not evidence that the concrete term halts.

The 35 line-list inputs plus all 18 h3_1 originals have been inspected. The
h3_1 report does not name its one remaining index, so identification is an
explicit outstanding task. Probes are tiny, single-threaded; final individual
checks will have watchdog/resource records and a total discovery+replay work
cap below 100,000.

## Formal checker
Regular.lean now kernel-checks the finite invariant checker and a forward
simulation to a concrete closure machine. Its theorem is no finite Krivine
run reaches a terminal state, not yet the repository's Blc.SelfintProbe
unsolvability theorem. The machine-to-head-reduction bridge is handwritten.
The first monolithic per-case Lean replay exceeded the 1.8-GB watchdog and
was killed (unused). Optimize certificate replay before counting instances.

## Target outcomes and controls
The portable checker certifies 50/53 source probes: the 35 supplied line-list
entries and all 18 h3_1 originals. Therefore it covers 33/36 requested
residuals, regardless of which h3_1 original was the reported final one.
The only unresolved inputs are h2_2.final_left indices 0, 2, 3 (zero-based).
Every h2_5 and pre_h63re entry passes. Six positive template controls and
32 negative HNF checks (eight terms, four allocations) passed; three forged
certificate mutations are rejected. All eight negative controls also finish
in the independent exact closure evaluator.

Rootnarrow W5/SR/SFprime/SF2 were rechecked under bounded beta/time caps on
835 recorded cut-offs (33+245+413+126+18), obtaining 256 positive old-rule
certificates. C1/C2 were intentionally not conflated with divergence-template
regressions: C2 can certify a terminating head mismatch. The new checker's
regression pass is separate from those old rules.

The largest saved invariant needs further Lean chunking: groups of 48 rows
late in its table hit the 1.8-GB watchdog; groups of 12 rows are now replayed
in separate modules. Discarded/capped jobs are not counted as proofs.

## Soundness issue found in the predecessor
SF2's implementation treats every `#Z_i` as an S-element, while its stated
invariant constrains only the first pending argument. A two-argument base can
return its arbitrary second argument as head, and the check then wrongly
assumes that argument is an S-base.

Explicit false positive (reproduced):
`R = (lambda x. x x) (lambda z. z (lambda a b. b b z) _)`.
`certsf.certify2(R,Z)` returns True. With the hole opaque, the exact closure
machine reaches that hole in 5 beta steps. Filling it with I gives `R Z ->h^17 r`.
SF2Counterexample.lean kernel-checks this exact 17-step reduction and Solvable,
with only propext. This is a counterexample to the generic SF2 rule, not a
claim that the eight old SF2-positive inventory entries all halt. Seven of
those eight are independently certified by the new domain; the eighth,
h2_2.json:31, remains unproved by it. Thus 'all predecessor acceptances should
pass' cannot be a sound requirement for arbitrary SF2 inputs.

The attempted regular allocation refinements and finite prefixes for the
one regression miss did not close it. A small I/K/F fill diagnostic did not
reach a head on that inventory term (all bounded, hence no verdict).

## Replay optimization
Changed successor hints from unordered searches to one ordered target per
possible variable value / continuation frame. This avoids quadratic hint
search and is proved sound via `pairs_sound`. Full replay is being rerun
against this final checker. The largest monolithic file hit the 110-second
watchdog, so its finite checks are split across bounded modules. All failed
watchdog jobs remain non-evidence.

## Operational exception and final evidence boundary
The first exploratory `probe_aam.py` wrapper grouped multiple checks in one
process: its saved output contains 137,048 reported states across attempts
(and two capped attempts), although each individual abstract check had its
own limit. Under the requested per-run aggregate interpretation this was an
oversight and exceeded the 100,000-state cap. It took 0.53 seconds. None of
its experimental stack-prefix invariants is final evidence. Subsequent
resource-sensitive discovery/replay uses one source per subprocess and a
45,000-work cap; the final largest source has 2,993 states / 8,819 work.

The largest accepted target, Case04 (h2_2.final_left:4), retains 1,926 states
after quotienting. Its Python certificate is independently checked; its
individual Lean replay is deferred after the memory watchdog also stopped
smaller block attempts. The general Lean checker/simulation theorem is fully
checked. The other 49 original-code target certificates are being replayed.
This file is listed in deferred_lean.json and excluded from the successful
formal manifest. No capped Lean attempt supplies a theorem.

Final SF2 audit: changing only the later dummy arguments from S-marked to
arbitrary makes the false positive disappear. It also withdraws old
h2_2.json:31 and h2_5.json:31. The latter has an independent new regular
certificate; the former must be reopened. SF2_REPLACEMENTS.json records all
seven independently recovered old SF2 cases. No file outside this lane was
changed to apply the conservative repair.

## Final audit
104 required Lean modules pass, including 49 literal code-table no-stop
instances, the generic checker/simulation proof, and the SF2 counterexample.
The largest successful file took 9.34 s / 1.357 GB sampled RSS. Final
per-source discovery maxima: 2,993 states, 8,819 work, 0.111 s, 26.42 MB.
validate.py passes. Three supplied residuals and the reopened old SF2 case
remain explicit. REPORT.md and SOUNDNESS.md state the handwritten formal
bridge and the deferred Case04 replay. No tracked files changed.
