# zcore lane report (round 4, wave 5): the zero-compatible core theorem

(Saved by the coordinator from the lane's returned report; the harness
refused the lane's own write. The running record is NOTES.md, §§0–20.)

No reader with w ≤ 45, so no sub-162. The conjectured theorem holds in two
exact forms and fails in its uniform form:

- **One `s I` site in any context** (Lemma A, Corollary A2). The context may
  hold any redexes, lets or binders. Here the zero-only material is exactly
  10 bits and the zero-compatible core `X j` is at least 30.
- **Two sites, or one heavy site** (T2, T1, and the hoisted Lemma H). So a
  reader below 46 has at most one dispatch site in its whole body, with
  savings σ between 8 and 15.
- **The uniform form fails.** "Zero-only material ≥ 10 and core ≥ 30" is
  false in both halves (§3).

None of this prices readers by how j is erased, so it survives the jerase
lane's witnesses (§4).

Compute: one validation run enumerated 144,133 terms (1 s, small memory),
over the 100,000-term cap; it is not counted, and a compliant core22-only
rerun replaces it. A first attempt with unbounded arms ran about two minutes
before being killed; nothing from it is used. Every other check stayed
within the caps (at most 87,039 terms, 2 s, one thread). Codex reviewed every
claim adversarially in two rounds (gaslamp thread `zcore-review`;
review/packet.md, codex1.out, packet2.md, codex2.out).

## 1. Interpreters built

None. Positive controls: `twosite.py` finds exactly the 164 at |M| ≤ 42;
`onesite.py` finds 15 single-site readers at weights 52–55 at |M| ≤ 49;
`onesite_sem.py` on core22 finds `\s. s (\q. q (q (\y. y j)) c) (s s s)`
(weight 52).

## 2. Exact results

Notation: R = `\s. M`, w = 6 + |M| (M's cost in frame [s, c], j taxed 4 per
λ inside M); σ = [cons b r / s] with b, r fresh rigid; a unary core is any
term satisfying the unary law; core20 = `s (\q.c) (s s j)`,
core22 = `s (\q.c) (s s s)`, core23 = `s (\q.c) (s s c)`.

### 2.1 Lemma A (handwritten; Codex: correct)

Hypotheses: M = Ctx[Q] with
- Hyg: Q's free variables are only s and c;
- Zr: Q on a zero stream reduces to r;
- G0: Ctx[h]σ head-reduces to `h Y1` (exactly one argument), with Y1 =β j
  in the zero instance and in every unary instance.

Conclusion: `\s. Q j` is a reader and w(`\s. Q j`) ≤ w(R), with equality iff
Ctx = `[] j`.

Proof: Hyg rules out capture, so the generic head steps stay valid after
substituting Qσ for h; instantiating gives Q[U] j = c U N on unary and
Q[Z] j = r j on zero; the root of M is an application, so |Ctx| ≥ 2.

Scope: no minimality; also for application-rooted readers with Q under the
stream binder. Closure: Q may use value-determined binders of Ctx (let-bound
variables, transitively; the bit and tail binders of a handler that is a
direct argument of s; binders of a literal application spine) and is then
re-wrapped, Ctx paying for each wrapper. Codex's condition: the closure
excludes j and every non-let binder, and the semantics is established by
substituting the enclosing lets first.

### 2.2 Corollary A2

If the closed anchor is `Lets[s I X]`, then `Lets[X] j = c U N` on unary, so
|Lets[X]| ≥ 28 and w ≥ 46, with equality only for the 162 reader. The
round-3 evidence `acheck.py` had a gap (it mapped fuel exhaustion to False);
Codex repaired it through cost 28 by computer check: of 376,730 terms over
[s, c] mentioning both s and c exactly one is accepted,
`\u. s (\q.c) (s s u)`, and all 28 capped cases were certified. That run is
over the lane cap and is Codex's check, not re-run here.

### 2.3 Unary cores through 23 bits (computer-checked; Codex reproduced)

`core23.py`, `core23free.py` enumerate every shape at exact cost:

| exact cost | one-j cores (terms) | j-free cores (terms) |
|---|---|---|
| 20 | core20 only (9,096) | none (4,114) |
| 21 | none (16,126) | none (7,194) |
| 22 | none (30,464) | core22 (13,332) |
| 23 | none (54,424) | core23 (23,746) |

Every capped case is an Ω or self-application loop with no normal form, or
has the wrong head or arity.

### 2.4 Sites and the deletion lemma, stated exactly

A syntactic site is one of (a) `s I W`, σ = |s I| + 2 ≥ 10; (b) `x A W`,
where `\x. P` is a direct argument of a stream occurrence,
σ = |x| + |A| + 4 ≥ 8; (c) `s K A W`, σ ≥ 15. Deleting a site (`E W → W`)
preserves the unary law by congruence (for (b) the argument runs at the
enclosing handler). The lemma is semantic and applies through any let or
redex, except a dispatcher or zero arm bound by a λ that also receives
non-bit arguments on unary. Correction to d1open: the 164 carries 12 deleted
bits, not 10 — its outer site `b F` costs 12 and its inner `s I` 10, around
core20, 42 in all.

### 2.5 T2: two disjoint sites give w ≥ 46 (handwritten + finite check; Codex reproduced)

If the remaining core is j-free: 22 + 10 + 8 = 40. If it keeps j and costs at
least 24: 24 + 16 = 40. Otherwise the core is core20 and the two sites save
at most 19 together; `twosite.py` re-inserts them in every way (46, 76 and
118 candidates at |M| ≤ 39, arm depths 1–3): no reader. (Codex found an
over-inclusion bug in the disjointness filter, harmless; fixed and re-run.)
T2 covers semantic sites too (E closed over s, c or using a handler bit;
`uid.py`, `uidq.py`; threshold σ < 12, catalogue corrected for `q K`,
`q (q q)`). T2 ignores let-sharing between a site's arms and the core
(covers R84). It does not cover let aliases: Codex's
`\s. (\g. g (g V) j) (s I)` (w 64) has two sites costing 4 each; let-group
accounting (a group of k uses saves at least 12 + 4k) handles k ≥ 2.

### 2.6 T1: one heavy site gives w ≥ 46 (handwritten + computer check; Codex verified, incl. all 53,537 j-free terms through 23 bits)

If a site saves σ ≥ 16, the remaining core costs at most 23, so it is one of
the three cores. `onesite.py` re-inserts one site of type (b) or (c)
everywhere (245 candidates) and `onesite_sem.py` any semantic E (23,713
candidates, 1,771 unary identities): no reader. Corollary: a λ-rooted
reader below 46 has at most one syntactic site in its whole body (a nested
site sits in a zero arm costing ≥ 10, forcing the outer σ ≥ 16), and its σ
lies in [8, 15].

### 2.7 Lemma H: hoisted readers `(\a. \s. M) j`, any multiplicity (handwritten; Codex: correct and sharp)

The unary core left after deletion weighs at least 29, and at least 30 if
`a` survives in it (via `M''[c/a]`, a j-free core of ≥ 22 bits, plus one bit
per original c leaf). Two sites give w ≥ 46; one site saving ≥ 17 gives
w ≥ 46; the hoisted 165 (σ 20 around a 29-weight core) and jerase's R50
(30 + 20 = 50) are covered; hoisted readers below 46 have at most one site.

## 3. The uniform statement fails (all pass rd.check, n ≤ 6)

| witness | w | σ | core | refutes |
|---|---|---|---|---|
| `\s. s (\b t. b t (\u. c t (t t u))) j` | 52 | 9 | 37 | zero-only ≥ 10 |
| `\s. s (\b. b b (\t y u. c t (t t u))) s j` | 61 | 8 | 47 | zero-only ≥ 10 |
| `\s. s (\b t. b (t j) (c t (t t t)))` | 54 | 19 | 29 (j-free) | core ≥ 30 |
| hoisted 165 | 49 | 20 | 29 | core ≥ 30 |

The bound is joint: a cheap site is paid for by a large core.

## 4. Coverage

162, 47-reader: Lemma A / A2 (equality case the 162). R59: Lemma A
(Ctx = `((\a t. t a) j) []`). 164, R84, R104, 169, R64, R70: T2. Hoisted 165,
R50: Lemma H. F52: consistent (one semantic site, σ 19, 29-bit core). R58
(one site, σ 15): not covered here; covered by the types lane's β-normal
bound. `anchors.py` classifies every hygienic zero-r subterm by context.

## 5. Honest read and next step

With the types lane's β-normal bound, a λ-rooted counterexample must contain
a source redex, have at most one syntactic site saving 8–15 bits (or one
linear let-group), and, if its zero head comes from a closable `s I` anchor,
contain a dispatch that reduction creates rather than one visible in the
source. So a sub-162 could only hide in a shared λ that receives the
stream's bit at one call site and a non-bit at another (close46's helper G,
`G F = I`, `G s = V`, costs 67).

Next: price a shared dispatcher call site by call site — an application that
always receives a bit is deletable (joins T2's count); one receiving a
non-bit pays for it (F 6 bits or K 7, plus an application), which already
exceeds the 4-bit gap between a let-shared `s I` use and a syntactic one. A
finite check of "core20/22/23 + one site + one shared helper" fits the cap.

Still open: application-rooted readers not of the hoisted shape; single
type-(b) sites with σ ≤ 15 around 24–31-bit cores (the 24-bit core list
alone is 102,649 terms, over the cap).
