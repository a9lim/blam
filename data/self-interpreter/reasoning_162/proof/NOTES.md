# Lane proof: running notes

## Target (aligned with the floor lane's reduction)
B = C[NEXT] under the knot `(\x.xx)(\x.(\intL\cont\list. B)(x x))`, frame
[list, cont, intL, x]. |E_B| = 26 + |B| = 26 + |C| + 96 + 4d where d = number
of λs of C above the hole (NEXT has 4 free cont/intL refs). Floor lane's
notation: cost(R) = |C| + 2, depth(j) = d + 1, |E| = 116 + cost + 4 depth.
Sub-162 iff |C| + 4d <= 39. The 162 has |C| = 40, d = 0.

## Tools (this directory)
- `frame.py`, `lab.py`, `sym.py`: Python harness; `sym.probe_sym` runs the
  exact contract with the knot unfolded on demand (P X Y -> B[Y, X]).
- `holecheck.rs` (rustc -O): exhaustive slot fill with symbolic head
  reduction, rigid continuation placeholders per unfold level, divergence
  certificates (exact repeat; same-stream re-entry at an active untainted
  level, also modulo placeholder renaming), lazy comparison with the
  expected normal form, 8 probe programs. Sound: a candidate is refuted only
  by a rigid wrong head/arity/abstraction, a value/rest mismatch, or a
  certified infinite head reduction. Fuel/size exhaustion = capped.

## Results so far
- Template s1 = `list I _ NEXT`, every _ <= 27 bits over all four frame
  names (1,010,663 terms, incl. non-normal): 0 survivors, 999,554 refuted,
  11,109 capped (first pass 79 s single thread). File `s1_27_pass1.txt`.
  Capped = growing pumps (streams nested one level deeper each unfold).
- Identities (checked with the real knot): p c I = c; p c K = p c F = NEXT_c
  (so `intL cont K` is an 18-bit second copy of NEXT once one copy exists);
  p c (K (K t)) = t NEXT_c.

## Lemmas drafted (handwritten)
- L1 hnf(B) is `list A1..Ak` or `cont A1 A2` (head intL/x: infinite head
  reduction; leading λ: abstraction).
- cont-leaf lemma is FALSE in general (NEXT's own `cont T` can deliver a
  β-equivalent program value, e.g. (λλ.1) e for λ.1), so it cannot prune.

## Capped set of s1 (11,109) resolved partly
- 6,692 non-normal: 2,357 beta-reduce (<=60 leftmost steps) to a <=27-bit
  term that the enumeration refuted => refuted (beta-equal); 4,163 reduce to
  a capped beta-normal term; 172 odd (nf > 27 or reduction blows up).
- 4,417 beta-normal capped: heads list 1174, x 1074, intL 962, u 865,
  cont 342. All are growing head-reduction pumps (the parser applied to
  NEXT, V, I, continuations as "streams"; the stream argument nests one
  level deeper per unfold). Second pass with 6x budgets refutes ~2%.
- Lemma attempt "the var arm's value cannot come from NEXT's own cont
  leaves" is false in general: the APP value of (\.1)(var n) is beta-equal
  to var n, so a fake stream 01 00 10 1^n0 N would work; but building six
  cons cells costs >= 90 bits, far above 27. Size-aware version holds.

## More slot enumerations (holecheck, first pass only, single thread)
- s2 = `list _ NEXT` (bare NEXT operand), _ <= 23 bits: 88,340 terms, 0
  survivors, 529 capped (x/intL pumps). Hand bound for this shape: |H| >= 40
  (Grok's 168: `\b \r. b r (\u. cont r (r r u))`). File `s2_23.txt`.
- s3 = `list _ (list I (list list) NEXT)` (164's dual operand, handler
  slot), _ <= 17: 2,528 terms, 0 survivors, 1 capped (`x intL list`). The
  164's handler `\b. b F cont` is 18. File `s3_17.txt`.
- Checked constructions (frame.weighted / sym.check_B): S2 Z=I handler 169,
  Grok 168, 164, 162; `\b. b K W` fails (K r NEXT = r); 165's reader inlined
  is |C|=36, d=3 -> 170; handler with NEXT inside at d=2 -> 50 (178).
- s2 sizes 24-25: 208,908 terms, 0 survivors, 1,691 capped (13 s). Sizes
  26-27 running (`s2_27.txt`).
- Sanity of holecheck (`one` mode): the 162's V and the 163's
  V = `\u. list (\q. cont) (list list list)` are accepted on both probes;
  `\u. intL cont list` is refuted by the same-stream certificate;
  spot battery: the 163 passes `163 bits ok=667 skip=1 fail=0`.
- s2 sizes 26-27: 713,415 terms, 0 survivors, 6,609 capped (52 s). s2 total
  <= 27: 1,010,663 terms, 1,001,834 refuted, 8,829 capped, 0 pass.
- REPORT.md written (via shell; the Write tool refuses report files).
