# rootnarrow — needed narrowing with minimality price filters on the root-let residue

(Saved by the coordinator from the lane's returned report; the harness
refused the lane's own write. NOTES.md is the running log, FILTERS.md the
soundness of each filter and certificate, work/ the engine, certifiers and
run dumps.)

No reader with w ≤ 45; 162 stands. Every exclusion is about MINIMUM readers
(global minimum over full-law one-hole readers, order weight, λ count, j
depth), unlike adv6's no-minimality runs. Labels: [L] kernel-checked, [C]
computer-checked, [H] handwritten.

## Engine and filters
work/narrowmin.py: adv6's untabled narrow.py (zero law, unary n = 1, 2,
fuel 300) with filters read only off COMPLETE subterms (or a complete
λ-body with its argument open) — on the narrowing path to a minimum R*
every complete subterm is literally R*'s, so pruning never loses R*. No
tabling (filters depend on history). Contraction price
S = (m−1)w(A) + (F−1)D − 2m − 4 − G matched on 13,605 random redexes [C].

| filter | rules out in a minimum | source |
|---|---|---|
| ERASE | erasing redexes | SelfintLocalCost.minimum_source_non_erasing [L] |
| LIN / LIN0 | linear redex unless (F−1)D ≥ 7+G | …minimum_linear_source_charge [L] |
| SHARE / SHARE0 | m ≥ 2, j ∉ A, S < 0; S = 0 with λ-free A | …minimum_source_sharing_charge [L]; tie [H] |
| ETA | η-redexes | rootcert minimum_no_eta [L] |
| ROOTJ | root redex with j ∈ A violating the argument charge | SelfintSourceCost.minimum_argument_charge [L] |
| PROF | root let below 4k+22+4d+tax | rootnf [L] |
| JAPP / JINC | j applied, or inside a c-spine argument | [H] |
| JCOPY | j-copying let whose contract-and-rename is lex-smaller | [H] |
| NF | complete subterm with j-free or dead-j reduct, no whnf, or a lex-smaller colour-repaired normal form | [H] |
| SHAREP | j-free A, F ≤ 1, incomplete B with S bounded < 0 | [H on L] |
| IAPP | (λx.B) I with an applied use, price 2m − 8 − D − G − 6a | [H]; 1,175 bodies audited [C] |

Cut-off certificates (work/certgen.py): cert.py C1/C2; W5 (A = λa b. b H b W⃗);
SR (self-reproducing head); SF′ (Lemma SF with only the first spine argument
in S); SF2 (base arities); re-narrowing at fuel 3000. Two bugs caught before
recorded use (an SF variant skipped the dispatcher's own step; NF-div missed
w(X) ≥ 2+δ in its j-free branch — affected cells rerun, same results).
Controls recovered: the 165 at 49 (two prefixes), the G-absorber readers 62
and 66, the 70-bit hand-off; the 56, 63, 67, 69, 90 readers are pruned by
NF (each has a lighter β-equivalent form).

## Exclusions (w ≤ 45, j depth ≤ 1, 0 solutions, every run ≤ 100,000
states and ≤ 115 s, one thread)
Stream-λ-headed cells adv6 left: (λg s. B)(λy. j): 73,418 states, 4
cut-offs (3 cert.py, 1 SF) — closed. (λg s. B) A with A a redex: enumA.py
lists every filtered redex-headed A with w(A) ≤ 27 (λs.B ≥ 14 once k ≥ 2):
241 A's, 10,308 states, 0 cut-offs — closed (uses rootlow's linear-root
exclusion). Re-closed independently: (λg n s. B) I j (37,072),
(λg n s. B)(λy. c) j (58,780; 3 cut-offs certified), (λn g s. B) j (λy. y P)
(29,638; 16 certified). (λg s. B) j (pure hoist) overflows; left to depth02.

Hand-offs t = 0, B = x P₁…P_q, full chain (λx. x P⃗)(λz₁…z_q s. N): q = 1
31,590 states, 33 cut-offs (W5 21, SR 6, cert.py 2, 4 by hand); q = 2 9,889
(1 by hand); q = 3, 4, 5: 944, 105, 11; q ≥ 6 over budget — closed for
every q. q = 1 short chains (λx. x P) A: A = λz. z Q (45,798; 245
certified), λz. (λw.M) Q₁…Q_k for k = 1…6, λz. z Q₁…Q_k for k ≥ 5, λz. c Q —
closed; λz. z Q R (35,879; closed modulo 12), λz. z Q R S (15,090; modulo
11), λz. z Q R S T (4,437; modulo 1); A a redex — open (time cap). q = 2:
λzw. z R closed (4,786); λzw. w R closed modulo 12 (10,716); λz. z R open.
The 36 uncertified cut-offs are mostly Δ-dispatchers with K-like or
two-argument templates (work/h2_2.final_left, h2_5.final_left,
pre_h63re.txt, h3_1.json).

Compute: about 1.6M states over roughly 330 runs, most under a second
(adv6's scale); new cells stopped there.

## Read and next
Minimality filters on complete subterms are strong when the let argument
completes early (NF, JCOPY, IAPP collapse it). The rest of the hand-off
branch is hard by cell count and cut-off certification, not by near
solutions. Next: one general certificate (abstract interpretation of head
states over finite shapes) instead of variants; keep re-partitioning by
argument shape. Open: A a redex in a hand-off; q ≥ 2 short chains;
redex-headed B; every t ≥ 1 hand-off; stream-λ-headed bodies with a
pending operand other than j. For t ≥ 1, a priced reduction of a pending
operand into the body (exposure with Δ < 0) is the lever.
