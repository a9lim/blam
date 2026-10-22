# adv6 report: constructive adversary on root lets (Claude, wave 5)

(Saved by the coordinator from the lane's returned report; the harness
refused the lane's own write. Notes: NOTES.md §§0–11; scripts and raw
outputs in work/; the Codex consult in consult/.)

**No reader with w ≤ 45; 162 stands.** Main computed result: root lets
whose body is headed by the stream binder, `(λg s. B) A`, have no reader
with w ≤ 45 for every helper shape A reachable under the cap — needed
narrowing (types/narrow.py, untabled, fuel 300, zero law and unary n = 1, 2),
B arbitrary (redexes, j anywhere), no minimality, every cut-off certified
(shared/cert.py, the s-absent argument, or Lemma SF). An independent Codex
astra consult found nothing below 63.

Compute disclosure: every run under 100,000 states, 2 min, one thread, but
about 1.19M states over 50 runs in aggregate — demand-driven narrowing on
shapes chosen by reasoning, flagged as drifting toward "many cells".

## 1. Readers built (rd.check [P]; all-n reductions from the stream identities)

| reader | w | pays for |
|---|---:|---|
| `λs. (λx. s x (x s)) (λt. t t (λa y u. c a y)) j` | 62 | one helper as first handler and N-producer; 3-binder absorber |
| `(λx n s. s x (x s) n) (λt. t t (λa y u. c a y)) j` | 66 | same at depth 0 |
| `(λx s. s x (λu. s (λq. c) (x s)) j) (λy. y y y)` | 63 | Δ3 shared: `s Δ3` ~ `s I`, `Δ3 s = s s s`; j at depth 2 |
| `(λn s. s (λb t. b t (c t) (b n (t t t)))) j` | 57 | one dispatch using the bit twice |
| `(λn s. s (λb. b I c) (s K n (s s s))) j` | 57 | the 53 hoisted, losing 4 |
| `(λg s. s I (λu. s g (s s u)) j) (λq. c)` | 56 | a linear let of K c adds 10 |
| `(λx s. s (λb t. b (x t) (c t)) (s (λb t. b x (t t)) j)) (λa k. k a)` | 89 | one carrier for both of R84's halves |
| `(λg s. s (g I c) (s (g (λy. j) (s s)))) (λx y b t. b (x t) (y t))` | 90 | dispatcher factory shared by both dispatches |
| Codex: `(λg s. s g (s (g I) (s s) j)) (λb. b F c)` | 63 | the 164 with its handler shared |
| Codex: `(λg s. s (g F) (λr. c r (r r g)) (s g)) (λk. k j)` | 67 | carrier J in three roles |
| Codex: `(λg s. s I (λu. s (λq. c) (g s)) (g F)) (λt. t t j)` | 69 | H = λt. t t j: H F = j, H s = r / N |
| Codex: `(λk. k k j) (λg n s. s I (λu. s (λq. c) (s s g)) n)` | 70 | a real pre-stream self-passing hand-off |

Closest near miss: `(λg s. s g (g s) j) G`, G = λt. t t c, 45, leaves
`c r N j` on unary (arity-dead).

## 2. Identities (handwritten)
1. Lift offset sign: `(λg s. B) H` is LIGHTER than `λs. (λg. B~) H` by
   `u_s − u_g + f_c(H) + 4·occ_j(H)` — the root form wins when the body uses
   the stream more than g (the coordinator's prompt had the prose reversed;
   the formula is right). A pending j changes depth accounting.
2. Linear root let vs contraction: `S = (F−1)M − 6 − T`; only an A carrying
   j can pay (A = j at depth 4 is the 165, S = 5).
3. Application-tree families: F1 `(λh s. T) A`: w = 14 + 4a + 5k + |A|;
   F2 `(λh n s. T) A j`: 13 + 4a + 6k + |A|; F3 j in A: 4 + 4a + 5k + |A|.
4. Helper algebra: `A = λt. t P Q`: s A = P r / Q r, A s = P K r Q / P F r Q;
   x = λt u. t (λq. c) (t t u): x F = I, x K = K (K c); J = λk. k j:
   J K = K j, J F = I, s J = j / r; Z(j) s = s K j;
   s (λb. b I Δ) j = r j / N in 24 bits (the 164's s I (s s) j: 18).
5. First-dispatch placements of j: P1 trailing, absorbed (the 162, 46); P2
   W = r j / N (the 164, 48); P3 j hoisted into a zero-only arm (the 165, 49).
6. Identity-helper price (Codex): R = (λx. B) I C⃗ vs R' = B[I/x] C⃗:
   w(R) − w(R') = 8 + T_B + Σ(h_i − 2) ≥ −2 for k ≤ 5; R' ≥ 4 lighter if any
   use is applied.
7. Inlining for `(λg n s. B) A j`: A = I always lighter inlined; A = λy. c
   lighter when k ≤ 3.

## 3. Exclusions
3.1 [C] `(λg s. B) A`, B arbitrary, w ≤ 45, no minimality: 0 solutions for
A = I; λy. y P (P = y, c, j, λ, y _, c _, j _, (λz._) _, (_ _) _); λy. y _ _
(the root lift of P1, 87,594 states, 420 cut-offs: 392 cert.py, 28
handwritten); λy. y with 3–8 args; λy z. _; λy. c with 0–8 args;
λy. (λz._) P for P = y, c, j, λ, app; λy. (λz._) with 2–7 args (state counts
in NOTES.md §§ and work/q_*.json). Cut-offs outside cert.py: s-absent (no s
and no hole under λs ⇒ both laws give the same s-free value) and Lemma SF,
with two new SF base sets for `(λg s. g Q) (λy. y y W)`. Also: A = j P⃗,
λy. j P⃗ dead; A = c P⃗ dispensable. Control: the prefix
`(\x s. s (\b. b (\u. x) _) _) (\k. _)` at 52 finds the root lane's 52.
Still open here: A = λy. j (overflows; a hoist at the A2 price), A = j (pure
hoist; settled under minimality elsewhere), A a redex (overflows).
3.2 [C] depth-0 `(λg n s. _) A j` for A = λy. y _ (77,084), two to four
args, λy z. _ (91,741), λy. c _ (1–3 args), λy. (λz._) _ (1–3 args), and
`(λn g s. _) j (λy. y _ _)`: 0 solutions, cut-offs certified. Open:
`(λg n s. _) I j`, `(λg n s. _) (λy. c) j` (both reducible by identity 7),
`(λn g s. _) j (λy. y _)`.
3.3 [P] pinned F1/F2 application-tree cells: 0 passes, ~1,900 uncertified
cut-offs (evidence only). The 580 rootlet survivors under rd: none passes
zero (probe).
3.4 [H] why designs cost more (not a proof): arity death of `s G` heads;
the absorber; sharing never pays for pieces ≤ 7 bits at k ≤ 3
((k−1)p − 4 − Σ(2 + idx) < 0); P3 zero arm D ≥ 27; P2's handlers have
opposite polarity.

## 4. Read
162 looks optimal in the class: every root-let mechanism pays the arity
defect or shares pieces too small to cover the let's 4-bit overhead plus
index costs; hand-offs buy nothing (N costs 6 bits via s s). Could still
hide in: root lets whose argument is a redex; the overflowing cheap-helper
and pure-hoist cells; hand-offs with pending operands; the lower
multiplicity cells. Next: narrowing on root prefixes closes stream-λ-headed
root lets in seconds; the overflowing cells need minimality price filters
applied to complete subterms during narrowing.
