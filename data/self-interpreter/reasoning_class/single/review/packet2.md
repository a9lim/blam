Follow-up (same lane, short). Thank you for the Theorem S review; repairs adopted. Two
smaller add-on claims ran after it; please check them the same way (read-only except
tmp/round4/single/review/; keep runs under 100k cases, 2 min, 2 threads).

1. tmp/round4/single/rev_small.py {I,F,K} (built from rev_I.py). Claim: no reader \s.M with
   w <= 45, j at M-depth 0, and a j-free subterm E (E not an ancestor of j) such that
   M[E -> I] (|E| >= 12), M[E -> F] (|E| >= 14) or M[E -> K] (|E| >= 15) keeps U1,U2.
   Proof: M' then has |M'| <= 31 and j at the same R-ending path, so M' is an expanded core
   of the path lists (cores37.txt templates, fillers within 31); the script replaces every
   literal I/F/K position of every expanded core by every j-free E in that frame with
   |M| <= 39 and tests both laws. Results: 30,832 / 16,124 / 12,335 replacements, 0 readers.
   Consequence claimed: under-applied bit dispatches x A (F A ->beta I on unary) with
   |x| + |A| >= 10 are excluded; handlers \x. x A that are direct arguments of s (equal to
   F as s-handlers on unary) with |A| >= 8 likewise.
   Question: is the core list complete for this use (note rev_I includes V j, X29 j and the
   L^aR templates besides path_*.json and beta1.json)? Is "E not an ancestor of j" the right
   condition, and is it automatic for x A with x a handler bit (A under \x)?
2. tmp/round4/single/rev_s2.py. Reverse of zcore's S2 (tmp/round4/zcore/NOTES.md §23) against
   the expanded cores: 0 candidates within |M| <= 39 (121 at budget 47, 0 readers). Is the
   reverse construction faithful to S2 (A re-indexing from the call site to D's site, D at any
   position of the dispatcher body, one selector call), and does the arithmetic remark (one
   selector call costs >= 11 at its site plus |y| + 4 for D, so M exceeds M' by about 17)
   suffice for multiple calls?
Reply: verdict per item (correct / broken / unsure) with reasons.
