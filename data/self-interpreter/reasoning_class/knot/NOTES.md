# knot lane notes

Started 2026-10-21. Read PROMPT, BRIEF, interpreter.md 2/4/6/7, class-bound 5, recursion+adversary reports.

## 1. Cost frame (handwritten)

162 = 129 (skeleton B with the two recursive heads deleted, their application
nodes kept) + 33 (knot 20, lambda intL 2, intL at 0-based depth 3 (5 bits) and
4 (6 bits)). Write E = T[B[H,J]]: T the context around B, H the first head
(frame [bit1,list,cont] + T binders), J the second ([exp,bit1,list,cont] + T).
A sub-162 with B fixed needs |T|+|H|+|J| <= 32.

### Lemma A (small heads fail) -- handwritten
T-bound variables sit at 0-based index >= 3 from H and >= 4 from J, so cost >= 5
and >= 6. Smaller heads use only B-binders or closed terms:
 H <= 4 bits: {bit1, list, cont, I}.  J <= 5 bits: {exp, bit1, list, cont, I}.
On genuine arguments (B fed only the contract's C,S and NEXT-built (k,r)):
 H=bit1: K k1 r2 = k1 -> value slot gets... no parse.  H=list: s k1 r2 = k1 K r ...
 H=cont: root C k1 r2 rigid.  H=I: k1 r2 = bit1 (cont A(r2)) ..., no parse.
 J=exp: e k2 rest' (value applied to a continuation; values must be lambda z.M
 for closed children, so e k2 rest' cannot parse).  J=list: s k2 rest' =
 k2 K r2 rest'.  J=cont: C k2 rest'.  J=bit1=F: rest'.  J=I: k2 rest'.
So |H|>=5, |J|>=6 for EVERY context T, provided B only ever receives genuine
arguments ("B-transparency"). Hence a sub-162 with B fixed needs |T| <= 21.

### Lemma B (opaque two-head knot bound, arbitrary heads) -- handwritten
Model: h a free rigid variable standing for B; t closed except h, with h
occurring exactly once, syntactically as `h H J`. Correctness of the
recursion in the opaque model: t =beta h t t. Price ghost'(t) = ghostCost(t)
(h free = 0) + 3 per leaf of H bound outside `h H J` + 4 per such leaf of J
(the depth tax of the 162 frame: H sits under bit1,list,cont; J also under exp).
Overhead in the 162's accounting = ghost'(t) - 4 (the two h-application nodes
are B's own call applications, already inside the 129).
Claim: ghost'(t) >= 37, i.e. overhead >= 33 = the 162's, for EVERY t: any
knot syntax, any number of lets, heads of any shape (not just one parser binder).
Proof.
 (i) t has no beta-nf (nf n would satisfy n = h n n, finite syntax) so >= 2
     nonlinear binders (one_nonlinear_normalizes); write m for their number.
 (ii) Each head contains a leaf bound outside `h H J` (a "T-leaf"). If H had
     none it would be closed (h occurs once). Take a common reduct u of t and
     h t t; u = h t1 t2 with t ->* t1. The head h of u is a residual of the
     only h of t, whose spine `h H J` has no redex at its root, so u = h H* J*
     with H ->* H*. Hence H =beta t. A closed term cannot be beta-equal to t:
     t =beta h t t forces every reduct of t to keep h free (else a closed
     reduct t' gives t' =beta h t' t', and a common reduct would be both closed
     and h-headed). So tax >= 3 + 4 = 7.
 (iii) Leaves: V bound leaves, one free leaf h, so applications A = V. Each
     nonlinear binder owns >= 2 leaves, so V >= 2m, L >= m. Dropping indices:
     ghost'(t) >= 2L + 2A + 2V + 7 >= 2m + 8m + 7.
     m >= 3: >= 37. Attained by the 162 knot (m = 3: Delta's x, G's x, intL).
     m = 2: >= 27 from counting alone; needs (iv).
 (iv) m = 2 (sketch, uses the recursion lane's Chain invariant): the two
     nonlinear binders must be incomparable (if Chain, every reduct of t is
     Chain, but the common reduct h t1 t2 has nonlinear binders in both t1 and
     t2). Neither can sit inside H (or J) and still leave the other head able to
     reproduce t... [to finish]. Each head is then internally affine, its
     T-leaves bound to Chain values (generator copies), so it needs >= 2 such
     leaves (x x) or one leaf of a linear let bound to a self-application.
     Cheapest m=2 instance is Delta(\x. h (x x)(x x)) = 42 (overhead 38).
 (iv') m = 2, case "both nonlinear binders inside one head": then the h-spine
     is never duplicated (a binder inside H cannot be bound to a term that
     contains H), so every reduct of t has exactly one h, while a common reduct
     of t and h t t has >= 3. Impossible. Remaining m = 2 case (both outside
     the heads, heads internally affine) left as a sketch: a head with one
     T-leaf whose value is Chain stays Chain under affine substitution, so it
     cannot be beta-equal to the non-Chain t; values bound to x2 are generator
     copies. Not fully proved; best m=2 fill known: overhead 38.

### Lemma C (bootstrap/driver template) -- handwritten
Template E = D G, G = \x.(\p.B)(D' x), heads H = J = p (this is the template of
the record's reset bootstraps 192/192 and of the knot). |T| = 8+|D|+|D'|.
 D' must be a parser given x := (whatever G receives): D' in {x, I, \y.x}
 (all < 6 bits in frame [x]) fail: p := G gives `G k r = B[p:=k] r`, binding
 cont to the stream; p := I gives `k r`; p := \y.G' drops the continuation.
 F (6) gives p k r = r. So |D'| >= 6, and D' = x x is the unique 6-bit fill.
 D closed with D G ->* parser: closed terms < 8 bits are I, F (6), K (7):
 I G = G (root binds cont to S), F G = I (C S), K G = \y.G (G S). So |D| >= 8,
 Delta unique at 8. Hence |T| >= 22 in the template, = the 162's knot.
 Using B's own reader as the self-applicator needs B reachable before the knot
 exists, i.e. a crafted call; the cheapest crafted identities of the 162's
 reader are P c I = c, P c K = P c F = NEXT_c, P c (cons K t) = t NEXT_c,
 P c (cons F t) = c t (t t NEXT_c); the cheapest driver built from them,
 \x. x x x I x (P G I G = G G), is 22 bits against Delta's 8.

## 2. Consequences for the 162 frame
With B fixed: Lemma A gives |H| >= 5, |J| >= 6 for every context; Lemma B gives
overhead >= 33 for every opaque context with m >= 3; Lemma C closes the driver
template. So a sub-162 that keeps the 162's B must feed B crafted arguments
(non-transparent) outside the D/D' template, or be knotless with a <= 30-bit
first head H that, given only bit1=K, the whole stream s and rigid C, parses
EVERY closed M (J is erased for sources \a.M): a full parser in <= 30 bits.

### CORRECTION to Lemma A (found while pricing "parse-ahead")
|H| >= 5 holds for every context (checked on \a.\a-type sources: bit1, list,
cont, I each leave a lambda or a wrongly-applied C). |J| >= 6 needs the
ordinary first-child state (IdentityCut): if the first head parses BOTH
children of an APP and calls k1 e f rest, then J = I works
(k1 e f rest = F (C A(e)) (I k2) f rest = k2 f rest = C B(e,f) rest), and
"I k2" can even be contracted to "k2", freeing 8 bits (J's 6 + its node).
But H must then perform two parses in APP mode and one in ABS mode. With the
canonical knot that is H = \k. intL (bit1 k (\e. intL (k e))) (~37 bits): the
second parser reference just moves into H. Parse-ahead needs two parser
references (or a loop, i.e. another fixed point) per APP whatever the
packaging, so it cannot beat 5 + 6.

### Lemma B, m = 2, root-LCA shape (handwritten)
t = (\x1. M1)(\x2. M2). If the spine is in M1, x1 := G = \x2.M2 has no h, so
G G has no h while it must be beta-equal to t: impossible. So the spine is in
M2 and x1 := G (Chain: one nonlinear binder). H[x2 := G] must be beta-equal to
t, which is non-Chain; H is internally affine, so it needs >= 2 x2-leaves (or a
linear let bound to a self-application, >= 3 more leaves). Same for J. Then
x2 has >= 4 leaves, x1 >= 2: V >= 6, tax >= 2*3 + 2*4 = 14, ghost' >= 4+24+14 =
42 (overhead 38: the no-let knot). Other m = 2 shapes (non-root LCA, extra
linear lambdas) are not written out.

### Lemma A computer check (lemmaA_check.py, 0.5 s, sequential probes)
Each cheap head substituted into the 162, first failing program found:
 H in {bit1, list, cont, I}: fails on 0010 (\a.a).  J in {exp, bit1, list,
 cont, I}: fails on 00011010 (\a.\b. b b... i.e. first APP source); reference
 162 passes every program <= 12 bits. (Fixed probes; the case analysis is the
 proof, this is the check.)

### Reader identities, computer-checked (reader_ids.py, rigid c, n=NEXT_c, t)
R I = c; R K = R F = n; R (cons K t) = t n; R (cons F t) = c t (t t n);
R (\a b m. m m) = n n.  (Normal forms compared.)

### Knotless head as a variant interpreter (handwritten)
For sources \a.M (M closed) J is erased, and H (frame [b,s,c], b=K,
s=00<M>N, c=C) must give H k1 (<M>N) =beta C (\z a.M) N with
k1 = \e. K (C A(e)) (...). H can only apply k1 (C rigid), once at the head, so
H k (<M>N) =beta k v N for rigid k, with v (cell a z) =beta M. Adapter
\C. H (\v. C (\z. v (\x y. x z (y z)))) is then an exact interpreter of size
|H| + ~41, so the global floor 40 gives nothing. A sub-162 knotless fill needs
|H| <= 30 (|J| <= 14 and IdentityCut false) with this obligation; a floor-style
classification of <= 30-bit terms against it would close knotless outright.

### Placement controls (check2.py = battery contract, 2 threads)
 v_nextlet.lam   intL let around NEXT only      164 bits ok=667 skip=1 fail=0
 v_contfirst.lam order \cont \intL \list         165 bits ok=667 skip=1 fail=0
 v_nolet.lam     x x at both sites (Lean's 167)  167 bits ok=667 skip=1 fail=0
All beta-equal to the 162 (letopt's neighbourhood); they confirm the paper
prices (+2, +3, +5), not new algorithms.

### Lemma B in the separated class's frame
Heads sit under bit1 (+exp) of Q, the reader's binders above j, and c: a
T-leaf costs index >= 2+depth(j) in H, 3+depth(j) in J. The m >= 3 count gives
overhead >= 26 + d1 + d2 with exactly the canonical depths, so the class
bound 116 + w(R) survives replacing the opaque knot by ANY opaque recursion
apparatus with >= 3 nonlinear binders (m = 2 open in general, >= +5 in the
root-LCA shape). Equality at m = 3 needs L=3, A=V=6, every index 0 and one
T-leaf per head: the 162's knot shape.

## Done
REPORT.md written. No stray processes of this lane (the running blam-path processes are other lanes' gaslamp consults).

# Round 4b (coordinator follow-up): finish Lemma B, review, Lean, knotless head

## Lemma B, m = 2: reduction to a finite space (handwritten)
ghost' = 2L + 2A + sum(idx+2) + tax, A = V (one free leaf h). Each head has an
outer leaf (step ii), so tax >= 7. If ghost' <= 36 then 2L + 4V <= 29 with
L >= 2, so V <= 6, and L <= 6 (V=4), L <= 4 (V=5), L <= 2 (V=6). This holds
for every m (m >= 3 already gives >= 37). So a counterexample is a term with
at most 6 bound leaves, 6 applications, 6 lambdas: a finite space. Plan:
enumerate it exactly (every term with ghost' <= 36, one spine, both heads with
an outer leaf), keep m = 2 non-Chain ones (m <= 1 normalizes), refute each by
a sound criterion (nf exists; hnf not of the form h X Y; a head's Boehm tree
deviates at finite depth; head reduction cycles).

## Lemma B closed for every m (computer-checked finite case + handwritten count)
m2_enum.py (single thread, ~1.3 s at 36, ~3 s at 37):
 - Generator: every term by exact ghost' cost, h only as the spine h H J,
   each head with >= 1 outer leaf, <= 6 bound leaves, lambda cap 6 (7 with
   --lamcap 7). Exhaustiveness check: closed-term counts by size from the same
   generator = A114852 (1,0,1,1,2,1,6,5,13,14,37,44 for n=4..15); at n=16,17,18
   it gives 100,133,296 vs 101,134,298, the missing terms being exactly the
   >= 7-lambda towers, as the cap says.
 - Refutation (sound): principal hnf by head reduction must be h X Y (no
   lambdas, head h, exactly two arguments), recursively to depth 3 for X, Y;
   no hnf certified by an exact repeat or by `loops`: the head redex R
   head-reduces to R B1..Bj, so head reduction never ends.
 - Results:
   ghost' <= 36, m = 2, non-Chain: 1,660 terms, all refuted (1,657 shape, 3 no-hnf).
   ghost' <= 36, m = 2, Chain filter OFF: 23,184, all refuted (23,181 + 3).
   ghost' <= 36, every m, lambda cap 7: 124,473 terms (m = 0: 16,362,
     m = 1: 80,764, m = 2: 23,184, m >= 3: none), all refuted.
   ghost' <= 37, every m, lambda cap 7: 234,585 terms, all refuted except ONE:
     (\x. x x)(\x. (\p. h p p)(x x)), the 162's knot.
 - Completeness of the space: ghost' >= 2L + 4V + tax with tax >= 7 (step ii)
   and A = V. ghost' <= 37 and m >= 2 give V <= 6, L <= 7; m <= 1 terms
   normalize (one_nonlinear_normalizes), m >= 3 have ghost' >= 37 with
   equality only at L=3, V=6, indices 0, tax 7.
THEOREM (Lemma B, final form). In the opaque model every t with
t =beta h t t has ghost'(t) >= 37, i.e. recursion overhead >= 33 at the 162's
depths, and the 162's knot is the unique minimum. The Chain lemma is not
needed (the Chain-off run covers it).

## Other depths (m2_enum.py --tax a b)
(2,3) = the 165 frame / separated class at depth(j)=0: every m, cap 7,
ghost' <= 35: 244,432 terms, all refuted except the knot at 35 (=30+2+3).
Monotonicity: ghost'_{a,b} - (30+a+b) = (g-30) + a(O_H-1) + b(O_J-1) is
nondecreasing in a,b (O >= 1) and the fixed-point set is tax-independent, so
the (2,3) run gives overhead >= 26 + a + b for ALL a >= 2, b >= 3, every m.

## Lean: KnotHeads.lean (this directory), kernel-checked, axioms propext + Quot.sound
Compiled from lean/ with LEAN_PATH=... lean -j2 (well under a second).
 - SG X side k t: inductive invariant "every occurrence of free index k heads a
   two-argument spine whose first (side=false) / second (side=true) argument
   is a reduct of the closed term X".
 - sg_shift, sg_subst, sg_beta (structural induction, with a clause for the
   partial spine `h x` in function position), sg_betas.
 - spine_betas (reducts of h a b are h a' b'), no_closed_reduct.
 - no_closed_first_head / no_closed_second_head: SG H false 0 t (resp.
   SG J true 0 t) with H (J) closed and BetaJoin t (h t t) gives False.
   = Lemma B step (ii), both heads.
 - binary_fixedpoint_no_nf, binary_fixedpoint_count: 2 <= nonlinear t and
   10*nonlinear t <= ghostCost 0 t when h occurs once; three_nonlinear_thirty.
   = steps (i), (iii).
Not in Lean: the tax glue (a non-closed head has a leaf bound outside the
spine, which in the real term crosses a resp. b binders of B: pricing
convention) and the m <= 2 finite enumeration (Python, m2_enum.py).

## Codex adversarial review (gaslamp, label knot-lemmaB, job cx-20261021-230154-120c)
Full reply: review_reply.txt. Verdicts:
 1. Model coherent but NARROWER than "any opaque apparatus": one body
    occurrence, two hygienic ports, ports cannot see B's binders, rigid h.
    Excluded: several body occurrences, apparatus binders interleaved with
    body binders (e.g. v_nextlet's let around NEXT), sharing around a proper
    subexpression of B, recursion exploiting B's behaviour. Claim restated
    as "any knot syntax and any head terms WITHIN the model".
 2. Step (ii) correct; cleaner closed-head argument suggested (it is what
    KnotHeads.lean proves).  3. (i), (iii) correct.
 4. m2_enum.py reproduced (234,585 / 244,432, unique knot survivor);
    coverage, taxes, caps, starting cost, hnf test, loops, resource handling
    all pass. Fixed: loops docstring ("implies", not "iff"); label.
 5. (v) correct, and uniqueness extends to every a >= 2, b >= 3.
 6. Class consequence valid only for the canonical two-port body
    (a = 2+d, b = 3+d gives 116 + w(R) exactly); the live class allows
    multi-hole knots and NEXTs with other numbers of p occurrences (Codex's
    3-occurrence Q = \b. b (p (\f. c Abs f)) (p (\f. p (\g. c App f g)))).
    So: "for the canonical NEXT, the opaque-knot hypothesis widens to every
    one-occurrence two-port opaque apparatus"; nothing more.
 7. Lemma C's separate bound on D' is FALSE: d = x works with D = Y
    (Y G = Delta(\z. F_B (z z)), the knot itself), and \a b c. c is a second
    8-bit closed term. Repaired by a joint check.
Lemma C repair, reproduced here (lemmaC_joint.py, 1.7 s): every closed D and
every d in frame [x] with |D| + |d| <= 14 (138 pairs in my generator,
Codex counted 87), E = D (\x. (\p.B) d), probes 0010 and 000010: 136 pairs
WRONG on both, 1 (D = \g. g (g g), d = x) passes 0010 and is WRONG on 000010,
1 survivor (Delta, x x). All rejections are distinct computed normal forms.
So |T| >= 22 in the template with Delta/xx the unique minimum (finite check).

## Step 4: knotless first head of <= 30 bits
Constraints (E[H,J] = 129 + |H| + |J| <= 161): |H| + |J| <= 32. Lean
(recursion lane): H not Chain, so nl(H) >= 2. Wire inequality
10 nl + 4 fl <= |H| + 2 (fl = leaves of b, s, c): nl(H) <= 3; nl = 3 forces
fl = 0 (H closed) and |H| in {28,29,30}; nl = 2 forces |H| >= 18 + 4 fl.
For closed H with nl = 3: leaves V = A + 1, |H| = 2L + 4V - 2 + sum idx, so
V = 6 exactly, L in {3,4} (L = 4 only with index sum 0). Then |J| <= 4:
J in {exp, bit1, list, I}.

### K1 (nl(H) = 3) CLOSED: knotless_K1.py (single thread, 48 s) + hand
Exact knotless skeleton (129 bits, checked) with all 1,602 closed H
(<= 30 bits, three nonlinear binders) x 4 J = 6,408 pairs, probe 0010
(\a.a): 5,884 WRONG (distinct normal forms), 524 out of fuel; of those,
512 refuted by a sound Boehm comparison against the target normal form
(108 shape, 404 certified no-hnf), 12 open = 3 heads x 4 J:
 (\a.a a)(\a. a (\b. b (a b))), (\a.a a)(\a. a (\b. a b b)),
 (\a.a a)(\a b. a a (b b)).
By hand, each H applied to anything has no hnf, whatever J is:
 - G = \a. a (\b. b (a b)): G X -> X S(X), S(X) Y -> Y (X Y); every head step
   leaves the new head applied to >= 1 argument and all heads are G or S(..),
   so head reduction never stops.
 - G = \a. a (\b. a b b): G X -> X T(X), T(X) Y -> X Y Y; same argument.
 - G = \a b. a a (b b): G G X R -> G G (X X) R; infinite.
So no knotless sub-162 has a first head with three nonlinear binders.

### First-head-use lemma (handwritten)
If H is mode-blind (free variables within {cont}), compare the ABS source
\a.X with suffix <Y>N and the APP source X Y: NEXT hands H the same stream
<X><Y>N, and H's head reduction is identical in both until k1 (or C) first
reaches head position with arguments P1..Pm. If C comes first, both modes
give C P1 P2 and P2 must be both <Y>N and N: impossible. If k1 comes first,
the ABS mode forces m = 2 and P2 = <Y>N, so in APP mode J receives the
GENUINE rest and H's ABS-mode value P1 of X. J (<= 14 bits) has nl <= 1, so
its recursion must come from P1: H's value for X = I must be beta-different
from F = \env arg. arg and carry releasable non-Chain structure (possible in
principle, e.g. \e. e (\a w. \x. x) PARSER satisfies A(v) = \z a. I).

### K2 (nl(H) = 2): OPEN, constraints
H in frame [bit1, list, cont], exactly two incomparable nonlinear binders,
18 + 4 fl <= |H| <= 30, |J| <= 32 - |H|; IdentityCut false; if H is
mode-blind then the first-head-use lemma applies. Closed nl = 2 terms
<= 30 bits alone number >= 106,688 (cap-truncated count), so this is not a
pinned case; closing it needs a floor-style classification.

### K2 corollary of the first-head-use lemma (handwritten)
Mode-blind H (free vars within {cont}) with |H| >= 28 has |J| <= 4, and only
J = exp survives: J = bit1 makes k1_F = \e. I, so the k1-first case returns
the bare stream <Y>N and the C-first case is impossible; J = list gives
C B(P1, K) (cons F r2) P2 (three arguments); J = I gives C B(P1, P2) (one).
With J = exp the APP mode is P1 k2 (<Y>N): the left value itself must parse.

## Codex review #2 (label knot-K1, job cx-20261021-232044-40b8; review2_reply.txt)
 A. K1 exclusion sound; replay 48 s reproduced every count; probe and Boehm
    comparison are right for beta equality; loops/cycle certificates sound;
    the three hand cases sound and J-independent. Fixed: a vacuous
    `assert ... or True` in knotless_K1.py (now asserts the 129-bit skeleton).
 B. First-head-use lemma: conclusion survives, proof needed a repair: the
    P_i are P_i(k, C), so identical reduction alone does not give
    P2(k_ABS) =beta P2(k_APP). Codex's rigidity lemma: R[k:=k_ABS] =beta T
    with T normal and free of C, k implies R =beta T for rigid k (a demanded
    residual of k_ABS would leave rigid C in the normal form). Transports
    P2 =beta <Y>N to APP mode. Caveat: P1 is NOT shown mode-independent or
    canonical; only the genuine-rest half of IdentityCut follows.
 C. Lean statements match (one-occurrence syntax implies SG; freeLeaves = 1
    is "h once, nothing else free"); SG tolerates extra applications above
    the tracked spine (more permissive, harmless).
