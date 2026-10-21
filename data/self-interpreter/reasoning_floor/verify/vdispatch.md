Adversarial verification request. You are a fresh, independent reviewer; find
an error if there is one. Repository: /Users/a9lim/Work/blam.

Under review: the four handwritten results of
/Users/a9lim/Work/blam/tmp/overnight/dispatch/REPORT.md §3 (3.1 the zero arm
receives the tag-less stream twice; 3.2 trailing reader arguments reach the
rigid continuation; 3.3 uniformity of the variable arm's convention; 3.4 no
single reader can handle both tag bits with the decoding state carried in the
continuation — P k ([0] t) =β P (T k) t is impossible for any closed P, T).
Also /Users/a9lim/Work/blam/tmp/overnight/nextfuse/REPORT.md §3 (the
shared-argument lemma) and §4 (NEXT = 92 under interfaces I1–I4) — say
whether §4 is a proof or a decomposition heuristic, and whether its hypotheses
are stated precisely enough to be a theorem.

Contract: E C (⌜M⌝ ++ N) =β C (λz. M) N for every closed M, C and N rigid;
⌜λM⌝ = 00⌜M⌝, ⌜M N⌝ = 01⌜M⌝⌜N⌝, var n = 1ⁿ0; K = λab.a (0), F = λab.b (1),
cons b r = λh. h b r. Background: docs/classical/self-interpreter/
interpreter.md §2, §5, and protocol-obstructions.md. Check 3.4 especially
carefully: the hnf case split on `T k`, the `λⁿ.1` witnesses, the arity
argument `p = ½`, and whether `T k =β λt j. G` is really forced. Small fixed
checks (seconds) fine; no enumeration. Answer: verdict per result (correct /
gap / error), problems with location and counterexample, what you checked.
Write the review to /Users/a9lim/Work/blam/tmp/overnight/verify/vdispatch_codex.md.
