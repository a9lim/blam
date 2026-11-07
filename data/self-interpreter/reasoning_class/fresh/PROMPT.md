Lane "fresh": first-principles designs, priced before reading the record.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md (contract, the 162 and how
it runs, tools, compute rules, OUTPUT DISCIPLINE) — and NOTHING ELSE from
the record during your first phase. In that phase, think about BLC
self-interpretation from scratch: what any interpreter must do (read a
prefix code, recurse, build environment-passing values, return the
remainder), what the cheapest primitive for each job is in this exact size
metric (|M| = 2L + 4A + 2 + X), and where the 162 pays for something that a
different decomposition could get for free from the data it already has
(the 162's own trick is that the stream cell's application `s I` selects
the zero arm for free). Write at least five genuinely different
architectures or mechanisms, each with a paper price (bits saved, bits
paid, against the 162's anatomy) into NOTES.md.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/fresh/ — write only there.

Phase two: read docs/classical/self-interpreter/interpreter.md §6 and
class-bound.md §5, mark each of your designs as new / already priced (and
by what) / sharpened, and push the most promising new ones to complete
terms: .lam file, battery, polish. Phase three: for your best design that
fails to beat 162, find the exact obstruction and whether a cheaper
variant escapes it.

Rules: reasoning first; small targeted checks only; no sweeps; at most two
threads; each run under two minutes. Keep each response under ~10k output
tokens and append to NOTES.md after every design. Finish with REPORT.md.
