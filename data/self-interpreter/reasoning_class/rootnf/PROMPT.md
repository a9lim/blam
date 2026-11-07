Lane "rootnf" (wave 5): root-redex readers below 46, with the β-normal bound as a tool.

Read /Users/a9lim/Work/blam/tmp/round4/BRIEF.md, then BRIEF5.md (updates and
HARD compute caps), then docs/classical/self-interpreter/class-bound.md §3
in full, then tmp/round4/root/REPORT.md (all sections: the root-let weight
formula, forced uses, the pull lemma, the closed sub-families, the hand-off
bulk and why pre-stream contraction is never lighter) and
tmp/round4/types/REPORT.md §§3, 5.
Lane directory: /Users/a9lim/Work/blam/tmp/round4/rootnf/ — write only there.

H_nf (hypothesis, under independent review in tmp/round4/review_types/;
label every conclusion that uses it): every β-normal reader has w ≥ 46
(types lane, computer-checked, no minimality). Since β preserves the laws, a
reader R with w ≤ 45 has a normal form that is a reader of weight ≥ 46, so
every route from R to its normal form must raise the weight by at least
46 − w(R) ≥ 1, at exact, known prices (the let-saving formula
S = (k−1)|A| + (f_A − 1)M − 4 − 2k − T; Blc.SelfintSourceCost.
contract_hoist_price; Blc.SelfintLocalCost.weighted_beta_at; the types
lane's shared-let split identity: splitting a shared let into one per role
costs exactly its argument's shared skeleton + 4 + index terms).

Problem: the root-redex branch of Blc.SelfintSourceFront.reader_source_head
— R = (λx. B) A C⃗ (depth-0 shared top-level lets, application-rooted
readers, the root lane's hand-off cases where A's λ-chain ends before
binding the stream). Goal: under H_nf, no minimum reader (order: weight, λ
count, depth) with w ≤ 45 is a root redex — or the exact surviving profiles
(k uses, |A|, M, T, depth) with a witness or a pinned check — or a reader
with w ≤ 45 (splice into the 162 in place of `list I V NEXT`, NEXT at the
hole; battery; polish; report at once). Note the root lane's finding that
contracting a hand-off's pre-stream computation is never lighter: that is
exactly what H_nf can exploit, since some route to the normal form must
then save the weight back elsewhere, or none exists. Also say what the
argument gives WITHOUT H_nf.

Reason first; a finite check only to close one pinned sub-case, within
BRIEF5.md's caps (≤ 100,000 terms, ≤ 2 min, ≤ 1 GB, ≤ 2 threads), with a
stated completeness argument. Append to NOTES.md as you go; finish with
REPORT.md in the BRIEF.md format.
