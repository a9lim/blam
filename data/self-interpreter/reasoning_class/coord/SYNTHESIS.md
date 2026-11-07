# Round 4 coordinator synthesis (running)

Lanes (tmp/round4/<lane>/): Codex close46, widen, arch; Claude jn, escape,
knot, fresh, values. Brief: tmp/round4/BRIEF.md.

## Finished

- **arch (Codex astra high, 1.2M tok)** — no sub-162, no bound. Built
  163 (select-first, rediscovery), 167 (`b c p` joint dispatch), 201
  (return value + suffix thunk + NEXT token; the core is 171, the public
  adapter +30; variable arm saves 10, APP +19). Observation: every
  compound's final remainder originates at its last variable leaf, so a
  thunked return needs no constructor-side allocation; the open idea is a
  token that does control work (it is the leaf's continuation's NEXT, not
  the parent's). REPORT.md.
- **escape (Claude opus, 256k tok)** — no sub-162. Lemma A (handwritten,
  Codex-reviewed correct-with-gap): with the divergent probe v_W (value of
  λy.W), any continuation κ with FV ⊆ {C} and κ v_W N = C X N forwards its
  second argument verbatim; under interface hypotheses H0–H3 the variable
  arm must return the true N with exactly two arguments. Kills `c r j`
  (refute46's 28-bit reader), trailing-argument returns (158 family).
  Zero-handoff table: every non-162 handoff ≥ w 54 (int_zero_rr 171 →
  polished 166, battery ok). Continued: derive the class's reader/NEXT laws
  from the contract under syntactic separation.

## Running notes

- widen (Codex): repeated 'model at capacity' cut-offs; progress: a
  let-bound NEXT has 2 free leaves (breaks the per-reader 116 + w formula
  at deep holes, not the min over readers); checked: any NEXT ≥ 98 bits
  cannot improve the reader minimum; escapes need NEXT ≤ 91, or 2 free
  leaves and ≤ 97, or 3 and ≤ 94. deep_shared_233 witness polishes to 162.

## Wave 1b (added 22:50 after a9: Codex usage also to spend; Codex weekly 80%, resets Oct 27)

- global (Codex astra max): a scalable unconditional lower-bound technique.
- probelean (Codex sol xhigh): Lean solvability infrastructure + Lemma A.
- share46 (Codex astra high): constructive w <= 45 via sharing contexts.
- arch-2 (Codex astra high, resumed thread): make the NEXT token do control work.

- **fresh (Claude opus, 291k tok)** — no sub-162. Fifteen first-principles
  designs, all already priced or adjacent; built 163 (dispatch before first
  parse = record's select-first), 170, and a 169 rendering of the
  destructuring reader (record had 170). Obstructions: self-distributing
  environment impossible; a bit read as a stream erases itself. Proposed a
  behaviour-pair DP for w >= 46 (not pursued: borderline search). Lane's
  harness refused REPORT.md; coordinator saved it.

- **close46 (Codex astra max, 4.3M tok)** — 46 open. Kernel-checked
  (ClosureBarrier.lean, propext/Quot.sound only): arbitrary application
  trees over s, I, F, rigid params, continuation towers C_m = λ^m.c and
  factories H_m = λx. x C_m (unlimited copies, different specialization
  arguments, nonlinear lets) cannot satisfy both reader laws
  (factories_cannot_read; fails for every n >= A+2). Boundary
  (BoundaryAlgebra.lean): D(s) = s Δ I (s s) j is j on zero, N for n >= 2,
  N j at n = 1 — the paired invariant cannot extend to Δ; R_bad
  λs. s I (s C_1) D(s) (w 56) fails only at n = 1. Missing: a source-cost
  bridge from arbitrary readers to the grammar. Continued (FOLLOWUP.md):
  minimum-counterexample normalization to s-spines + jn's dispatch inventory.
- jn (running) NOTES §4–8: I- and K-dispatched depth-1 s-spine readers
  closed for all operand shapes (small computer checks + handwritten);
  depth-1 dispatch inventory; unary core >= 20, zero core >= 12.

- **knot (Claude opus, 336k tok)** — no sub-162. Lemma B (handwritten):
  model B rigid (h occurring once as h H J, correctness t =β h t t); any
  opaque recursion scheme with m >= 3 nonlinear binders costs >= 33 recursion
  bits (162 attains); m = 2 partly open (one shape >= 38). Widens the class's
  knot hypothesis H1 to any opaque recursion with m >= 3. Lemma C: driver
  template E = D G needs >= 22 context bits (Δ, x x unique). Lemma A': first
  head >= 5 bits always; second >= 6 under the ordinary first-child state;
  parse-ahead makes J = I possible (cost moves to H). Knotless: first head
  must be a full parser within 30 bits (open, classifiable). Crafted-input
  reader identities: R I = c, R K = R F = n, R (cons F t) = c t (t t n).
  v_nextlet 164, v_contfirst 165, v_nolet 167 (battery ok, β-equal to 162).
  Continued: m = 2, Codex review, Lean, knotless heads.

- **widen (Codex astra max, 9.1M tok over 4 resumes)** — kernel-checked
  (Widen.lean, no sorry): (1) four-free-leaf claim false for arbitrary
  NEXT syntax (Qlet 105 bits F=2; β-normal Qfour 113 F=2); fixed-reader
  116+w formula false (233 vs 234 witness, polishes to 162); (2) MAIN:
  replace H2 by RigidNext + q >= 92 + q + 3F >= 104 → same minimum over
  readers (domination by R, hoist R, or reader162); every NEXT q >= 98
  covered; frontier_optimal_iff_reader_floor: 162 optimal in widened class
  iff w >= 46 (FullReader, all unary laws); 138 transfers; (3) AdminBeta
  relaxation keeps 116+w; (4) H2 dropped entirely: |E| >= 47 + cost + 2d
  >= 67; knot multiplicity |E| >= 18 + k(26+q): sub-162 has k=1, or k=2 and
  q <= 45. Open NEXT regions: q <= 91; F=2,q<=97; F=3,q<=94. Continued
  (FOLLOWUP.md): close H2, then H3.

- **values (Claude opus, 379k tok)** — no sub-162. Lemma T (kernel-checked,
  values/LemmaT.lean transfer_reader, propext/Quot.sound): a converter κ
  (only c free) with κ V_n N = c U_(n-1) N turns any V-law reader R' into
  a raw class reader R'[κ/c]. Whole-prefix converter λv. v (λq.c): +3 at an
  applied c occurrence (on the 162 shape it IS the 162's arm), +10 unapplied.
  Exchange rate: a V-member below 162 implies a raw class reader below
  46 + δ_V − (|NEXT_V| − 92); so V helps only if NEXT_V < 92 + δ_V.
  Whole prefix never an independent escape (one heading c, canonical NEXT
  with an S1-shape cell, round-3 |D| >= 27). Priced 13 representations
  (table in REPORT.md). Continued: generalize to all representations.

- **probelean (Codex sol xhigh, 3.1M tok)** — Probe.lean (Blc.DivergentProbe,
  921 lines, no sorry; coordinator recompiled: clean). Solvable via headSteps,
  HNF; unsolvability closed under substitution/application; hnf head var,
  leading λs, spine arity β-invariant. lemmaA (any unsolvable probe, even
  open), lemmaA_after_two, lemmaA_context (Blind probes),
  classify_continuation (κ →β C | λa. C B | λa b. C B b),
  probe_two_argument_corollary (C-free caller head-reduces to κ A B with
  B →β* N), trailing_argument_impossible, canonical162_probe_return. Told
  escape lane to build on it.

- **share46 (Codex astra high, 842k tok)** — no reader <= 45 (handwritten):
  specialized prefix factory λs. ((λh. s (h F) (h B)) (λx. x A)) j has
  w = 39 + |A| + |B|, below 46 only (c,h),(x,c) at 45, both = λs. s I (c c) j,
  fail; above-λs placement >= 49; absorber uniformity (T j = Y with T,Y
  j-free ⇒ T A = Y for all A); stream-supplied specialization
  λs. (λh. s h (h c)) T_s j leaves four args at c. Five correct sharing
  refactorings at 68–75 (all reduce to the 162 reader). Continued
  (FOLLOWUP.md): closure-building helpers, Δ-based sharing with n=1 repair.

- **arch-2 (Codex, 2.4M tok)** — token control work does not pay: the
  returned token is Q_{W_c} not Q_c (14-bit reset J = λh x. h (λy. x)
  exposes the head mismatch); returning the parser itself as a fourth
  reader operand: 185 core + 26 adapter = 211; suffix-continuation
  transformer 178 + 21 = 199 (paper). Arch direction closed for this round.

- **escape Part II (Claude opus, +397k tok)** — derivation of class laws
  from the contract (REPORT.md §5; NOTES §§9–20; Codex review thread
  escape-derive, two claims broken and folded in). Hypotheses: Sep (closed
  H, C reaches parses only through c), Z, C1 (NEXT hands the stream to the
  parser once), C2 (after APP's first operand the second is parsed from the
  rest), RET, VAL. FORCED: variable-law rest part for every n (c abstract,
  actual NEXT); ABS law as kA x y →β c A_K[x,y] y; APP second operand law
  (Slots.lean lemmaA_two_slots, kernel-checked over Probe.lean). NOT FORCED
  (battery-passing witnesses, coordinator re-ran all five): value part
  (int_value_junk 208), C2 (int_c2_direct 194), C1 (int_double_parse 265,
  polished 241), rigid p (int_rigid_p_gap 222), rigid j (int_rstar 228).
  Lemma R (re-separation): zero law is a choice of split; int_zero_rr has two
  splits of one 171-bit tree. DOC FIX: the record's dual-operand readers
  (169/172/172/176) meet the RIGID laws (coordinator confirmed
  λs. s I (s (λq.c)) (s K j (s s s)) passes rd.py, w = 53 → 169): they are
  ordinary class members, not "laws only for the actual NEXT" (class-bound.md §5).
  Skipper identity Q_c (λx y z. z) U_k(N) →β N.

- **audit1 (Claude opus, 234k tok)** — statement audit: all 14 headline
  theorems of widen / close46 / probelean VERIFIED, with kernel-checked
  non-vacuity probes; close46's in-progress SourceCost.lean does not compile
  yet (do not cite). REPORT.md saved by coordinator.

- **share46-2 (Codex, 1.75M tok)** — no sub-46. Capturing helper
  G_c = λx u. x C₁ (x x u): G_c F = I, G_c s = λu. s C₁ (s s u) (the 162's
  arm!), but the shared reader weighs 67 (external 70). All-size: s Δ A B_s j
  cannot be the j/N dual when A is s,j-independent (zero forces A K = K, then
  n = 1 returns N j). Repair Δ → K: s K I (s s) j is j/N everywhere; full
  reader 55, rearranged 53 (known). Padding repair: s I (s s) j is r j/N
  uniformly (24), reader 54. Open: stream-dependent specialization, sharing
  the dispatch context.

## Wave 2 (23:20; Claude 5h window 15%, weekly 48%; coordinator context 43%)

- depth02 (Claude): reader bound at depths 0, 2, 3, 4.
- bridgeadv (Claude): constructive adversary of the source-cost bridge.
- nextctor (Claude): constructive adversary of widen's H2 closure (cheap
  arbitrary NEXT in q<=91 / F=2,q<=97 / F=3,q<=94; F=3 q<=92 = direct 161).
- jn NOTES §9–11: λb. b X Y dispatcher closed for k = 2, 3 (all shapes,
  constraint-solved templates, seconds); general λ-dispatcher k = 2 in
  progress (fam_lamB.py); first-dispatch normal form on the reduct
  (generic cell s = cons b r ⇒ hnf b A B C.. or r A).

- **lean146 (Codex astra xhigh, 3.5M tok)** — kernel-checked (17 files,
  35 s, no sorry): minimum-weight readers exist (λ-count tie-break), no
  erasing redex; every two-probe Reader has >= 2 live source binders;
  λ-rooted sub-30 readers satisfy the five count rows, are β-normal and
  stream-headed; reader_weight_24 and class_bound_140 unconditional; depth
  >= 5 ⇒ w >= 46; 3,484 refutations regenerated and checked.
  class_bound_146_of_coverage exposes two gaps (non-λ minimum elimination;
  generator membership bridge). Continued on both.

- **knot Part II (Claude opus, +518k tok)** — Lemma B complete in its model
  (one copy of B as rigid h, two hygienic slots h H J, t =β h t t, slot
  taxes a, b): recursion overhead >= 26 + a + b for every a >= 2, b >= 3
  (162 frame: 33; 165 frame: 31); unique minimum = the 162's knot
  (λx. x x)(λx. (λp. h p p)(x x)). m >= 3 by counting; m <= 2 forces tiny
  counterexamples, m2_enum.py refutes every one (234,585 terms at taxes
  (3,4), 244,432 at (2,3)) + monotonicity. KnotHeads.lean kernel-checks
  steps (i)–(iii) (propext, Quot.sound). Two fresh Codex reviews: scope
  narrowed (no lets inside B, no multiple copies, no use of B's behaviour);
  class consequence exact for canonical NEXT (two recursive call sites);
  Lemma C's proof wrong (Y driver), repaired by a joint 138-pair check:
  only (Δ, x x) survives, 22 bits unique. Knotless: H <= 30 bits; the
  three-nonlinear-binder case closed (6,408 complete interpreters refuted,
  48 s, Codex-reproduced); two-binder case open (>106k heads).

- **values Part II (Claude opus, +573k tok)** — H3 as a kernel-checked
  theorem schema (values/lean/ValuesH3.lean over a frozen prefix copy of
  Widen.lean; coordinator recompiled: clean). Representation = any family
  V n; V-reader keeps the zero law, R U_(n+1) = c (V n) N; converter κ (only
  c free) with κ (V n) N = c U_n N. Any member (opaque knot, one-j V-reader,
  ANY NEXT source) is dominated by a raw canonical member when:
  share_dominated (F >= 1, q >= 103 + |κ|), transfer_dominated (F >= 2,
  q >= 92 + δ, q + 3F >= 104 + δ, δ = f(|κ| − 2)), wholePrefix (δ = 3a + 10u);
  floor_of_dominated transfers any raw floor; vnext_two_leaves; multiple c
  occurrences handled; wp162_strip: stripped whole-prefix reader IS
  reader162. Whole-prefix cells: every λu. λr. B cell has no solution
  <= 26 bits (exhaustive 1,764 bodies <= 22 bits, completeness handwritten);
  fewer-λ cells by spine head (handwritten); residue: let-headed cells
  (6,113 + 65,368 terms) open. Codex review (values-review): no proof or
  accounting error; HIGH coverage gap — values decoded by NEXT itself
  (V_n = j (λx y. U_n) with dispatch-first NEXT) have no j-free converter;
  the reader interface (two-arg continuation, exact rest, zero law, scope,
  opaque knot) is retained. Lane closed.

- **probelean-2 (Codex sol xhigh, 7.2M tok)** — escape's derivations
  kernel-checked (Derive.lean, coordinator recompiled: clean, no sorry).
  derive_from_source_hypotheses: from literal SelfintClass.assemble + the
  self-interpreter contract + scoped source head-reduction C1/C2 + actual Z:
  variable_rest_reader (every n >= 1, abstract c, actual NEXT, rest → N),
  abs_dataflow (kA x y →β* c A_K y), app_second_dataflow
  (k2[x] z w →β* c A_2 w); derive_abs_from_source needs no C2.
  semantic_retval_from_contract: RET/VAL follow from the contract on λΩ
  (closed unsolvable λλΩ). Not proved: rest-independent constructors,
  rigid-j laws, rigid-p dataflow.

- **widen-5 (Codex, total 15.6M tok)** — H2 still open. Kernel-checked
  additions: every RigidNext has 3 live source binders and q >= 32; complete
  c-alias / p-alias families over old-class NEXTs satisfy the frontier
  (canonical instances 100/F3, 99/F3); unrestricted assembled-class floor
  76; two-hole sub-162 needs 32 <= q <= 45; minimum-counterexample
  construction formalized (no administrative redexes; surviving linear
  redexes satisfy (F_a−1)D > 6+G). Open: q = 32–91; F=2, q = 92–97;
  F=3, q = 92–94 (arbitrary open-function sharing, longer tag spines).
  Continued (FOLLOWUP2): q = 32–91 by per-obligation source pricing.
- close46-2 notes (in progress): kernel-checked minimum_source_non_erasing,
  minimum_linear_source_charge ((F−1)D >= 7+G, j as four captures),
  minimum_source_sharing_charge, reader_source_head (every source reader is
  an s-spine, or has its first source head redex at the root or directly
  under λs), redex multiplicity caps m <= 7 (root) / m <= 6 (body), source
  argument budgets; repaired a small step of jn's K-family argument
  (DispatchAudit.lean). Remaining: classify bounded source arguments.

- **close46-2 done (11.4M tok total)** — REPORT.md §6: exact weighted β
  balance at every source position; minimum reader: no erasing redex, linear
  redexes (F−1)D >= 7+G; nonlinear j-sharing: contract + hoist restores one
  hole, preserves every unary law, root cost change
  (m−1)(wire(A)−3) + f_A(D+m) + f_C − 3d_A; first-head classification
  (s-spine | root head redex m <= 7 | redex under λs m <= 6) with argument
  budgets; jn §7 tiny-operand repair. 9 Lean modules, 3.64 s, clean.
  Continued (FOLLOWUP2): semantic exclusion of the bounded redex cases.

- **jn (Claude opus, 428k tok)** — no reader <= 45. L1 (j/N operand >= 25;
  two minima incl. new s (\x. s (\b. b F)) j), L2′ (non-absorbing arm >= 22,
  unique), unary core >= 20 unique s (\q.c) (s s j), zero core >= 12 — all
  computer-checked over all shapes with certified caps. L3 FALSE as
  additive (the 164). First-dispatch normal form (hnf b A B C or r A).
  Closed: s I A2 A3; s K ..; λb. b X Y (k = 2, 3); λb. B with |B|,|T| <= 21
  and |B| <= 9; λ-rooted bodies <= 25 (so λ-rooted w >= 32). Open: big
  λ-dispatcher 22–31 with trailing operand <= 9; s-headed/redex first
  operand; λb. b X Y k >= 4; redex bodies, app-rooted. NOTE: one run hit
  5.7 GB before the lane stopped it. Proposed: hole decomposition theorem
  "any zero-completable unary core >= 40". REPORT.md saved by coordinator.

- **global (Codex astra max, 8.2M tok)** — no floor above 40. Ceilings
  (kernel-checked restricted-domain witnesses, induction over all depths):
  values on every λⁿ.I: 57-bit decoder (ceiling 48); + λⁿ.Ω: 84 (75); both
  outputs on λⁿ.I: 88; values on Church spines λf x. fⁿ x: 121 (112); both:
  154. Correction: |E K| = |E| + 9 (not 8), |E F| = |E| + 8; so a value
  floor >= 50 or a remainder floor >= 49 would improve 40. G(E) =
  λc s. s K (E c s) s (|E| + 30) preserves the contract but violates the
  class's root-variable law: β-preserving conversion of every interpreter
  into the class is impossible (guard192, battery ok — coordinator re-ran).
  Next step it names: a charge on source connections when both application
  children vary, counting shared definitions once. Lane closed.

- **nextctor (Claude opus, 288k tok)** — no NEXT in the open regions. Best
  per F: 92/F4 (canonical), 99/F3 (one p for both parses; or Codex's c-let
  placement), 105/F2; 93/F4 dispatch-at-first-parse-argument →
  contdisp163.lam (163 ok, coordinator re-ran). Families: L1 no-op parser
  >= 8 (λk. k k unique-ish, computer); L2 shared continuation for APP's 2nd
  parse + ABS return must contain the tag (handwritten); L3 long tag spines
  = two-arm merges (handwritten pricing formula); L5 every source within 3
  non-erasing inverse-β steps of Q0 has q >= 98 unless canonical
  (2,374,981 sources at step 3 — too big a sweep; note for future briefs);
  L6 215 long-spine sources, min 101/F3, 107/F2. Read: removing a free leaf
  costs >= 7 in every family vs the frontier's 3. Suggested to widen: residual
  argument — shared material must leave residues common to both normal forms
  (only p, c, f), each shared node costs a binder or tag test.

## Wave 3 (00:00 Oct 22; Claude 5h 20%, weekly 49%; context 51%)

- hole (Claude): unary-needed-core decomposition proof route.
- d1open (Claude): jn's open depth-1 families by reasoning.
- chead (Claude): continuation-headed interpreters; remove the s-headed
  shape from the hypothesis list?
- Brief note for future prompts: cap memory (<1 GB) and forbid
  multi-million sweeps explicitly (jn 5.7 GB; nextctor 2.37M sources).

- **lean146-2 (Codex astra xhigh, 12.1M tok total)** — 146 FULLY
  KERNEL-CHECKED. Final146.lean (5,249 lines; coordinator recompiled 67 s,
  no sorry, propext/Classical.choice/Quot.sound): Lean146Final.reader_weight_30
  (Reader R → occ 1 R = 1 → 30 <= cost R + 4·depth R; two-probe Reader, so
  stronger than FullReader) and class_bound_146 (original class: FreeUnder 1
  T, T ⋈ h T, Reader, one hole, Next Q ⇒ 146 <= wire (assemble T R Q)).
  Closed both gaps: three-live-binder lemma for non-λ minima + their sub-30
  elimination; Lean enumerator proved complete, outputs checked against all
  3,484 layouts. With widen's frontier_inherits_full_reader_floor this also
  gives 146 for the widened class (FullReader.probes). Not pushing the
  enumeration toward 46 (exponential; a9's no-sweep guidance).

- **close46-3 (18.2M tok total)** — REPORT.md §7, kernel-checked (14 Lean
  modules, 5.3 s): a minimum root redex's λ-free argument is literally j;
  under λs the sub-46 λ-free arguments reduce to j, s s, s s s, s s s j;
  excluded: body-and-argument λ-free redexes, and every linear first body
  redex with <= 3 source λs; let-sinking: (λx. C[G]) A =β C↓[(λx. G) A]
  for contexts whose fixed pieces omit x, preserving every reader law and
  one hole, saving exactly the removed capture charge ⇒ with an s-spine
  redex body, a minimum reader's shared definition must affect >= 2
  operands. Open: sharing across operands, λ-containing arguments, deeper
  linear capture.

- **depth02 (Claude opus, 428k tok)** — no reader <= 45. Under prove46's
  minimality order (weight, λs, depth): closed depth >= 2 (A: depth >= 3,
  879,944 terms; D: depth 2 all rows, ~3.4M + 791k recheck) and depth-0
  readers whose j is the argument of a λ (B/C single-use, 426k + 2.8M;
  E multi-use, 1.4M). Found two flaws in STATE46's depth reduction (hoists
  of d=2 readers are never minima; hoisted d=0 forms contract to deep
  readers of weight up to 47–50, correct target cost + D + F <= 39) — both
  now closed directly. Lemmas: copy lemma (extra copies of a let-bound j at
  depth 0, survivor at depth >= 3); chain swap (λy⃗ a. P) Q⃗ j =
  (λa y⃗. P') j Q⃗, Δw = m·k_a − n_y. Open: depth-0 j after a shared
  top-level let (~2.5×10⁷ filtered terms). RULE BREACH: checks of millions
  of terms, two runs over 2 min (176 s; one killed) — counter to a9's
  no-broad-search guidance. Tightening briefs: explicit cap of 100k terms
  per check, 2 min, 1 GB.

- **widen-6 (22.7M tok total; lane closed)** — REPORT.md §9, Widen.lean
  OneLet section (76 dependency audits, 12 s): structural Boolean pruning
  q >= 92, F >= 4; one designated let anywhere inside the tag binder
  q >= 98; one let outside it q >= 99; OneLet.covered_admin_frontier allows
  any cost-safe administrative contractions first and proves q >= 92 and
  q + 3F >= 104 (needs both projections β-normal after pruning and the
  designated substitution); strictly extends the old class (headChoiceNext).
  Open: shared functions whose applications create further β-reductions.

- **chead (Claude opus, 317k tok)** — no c-headed sub-162 in any c-headed
  version of the class. Kernel-checked (chead/lean/ModeNext.lean, propext/
  Quot.sound; coordinator recompiled): mode-NEXT bounds under the class's
  NEXT hypotheses — value mode |Q| >= 86 (>= 2 free leaves), rest mode
  >= 34, both attained; split class E = T[λp c s. c (RA[QA/j]) (RB[QB/j])]:
  cassembly_lower |E| >= 157 + hole costs + 2·depths; split_class_165
  (readers applications ⇒ >= 165; handwritten: zero law forces that) —
  INDEPENDENT of w >= 46. Handwritten: mode-shared >= 163, shared-NEXT
  >= 165, other binder orders >= 164; S23: λc s. E (s (λx y. c)) s is an
  s-headed interpreter at |E| + 23 for every E (s-headed min <= global
  min + 23); Lemma K (+d+10 for literal interfaces); Lemma M (mode sharing
  never optimal, saves 15 + |m1| + |m2| >= 28); literal c-headed below 162
  needs a value decoder <= 127 (best known 171). Witnesses (coordinator
  re-ran battery): spec200 (letopt 199), mode200, modedom 172, conv162 185;
  twice209, knotconv 210, conv_spec 223. Correction: parse-twice costs
  |P| + 47. Class members are s-headed as a CONSEQUENCE of the zero law.

- **bridgeadv (Claude opus, 369k tok)** — no reader <= 45. Exact let-saving
  formula S = (k−1)|A| + (f_A−1)M − 4 − 2k − T; linear lets never pay;
  push-in rule; two-productive-uses lemma; why G_c costs 67. KEY: counting
  alone allows a let-contracted reader of ~91 bits ⇒ the bridge must be
  semantic (maximisers = pure self-application combinators). Closed (big
  finite checks, pre-cap, disclosed): shared lets over s I / s K spines;
  unary cores through 28 bits (2.6M terms: only s (\q.c) (s s j) <= 23);
  Δ-families; shared lets across λ-dispatchers with 1–2 operands; x-headed
  one-operand lets. Open: >= 3-operand spines under lets, lets above λs,
  app-rooted, nested lets, non-let redex A1, Δ-style u u j = c r N.
  REPORT.md saved by coordinator.

- **close46-4 (21.3M tok total)** — kernel-checked (ClosedSpecializer.lean,
  REPORT §8; 18 checks 6.4 s): w >= 46 for λs. ((λg. s (g P) (g s)) A) j and
  (λg s. s (g P) (g s) j) A with ANY helper A and ANY closed specializer P
  (redexes, nonlinear binders allowed; no minimality/normality assumed).
  Prices 30 + |P| + |A| (local), 34 + |P| + |A| (root); zero branch forces
  |A| >= 10 ⇒ P = I, |A| <= 11; complete 26-term helper basis closes it;
  root: only c, λx.c, c c remain, all fail zero. Boundary: A = F c, P = I is
  45 bits, passes zero, fails unary (j F U₀). G_c readers 67/70 β-reduce to
  reader162. Open: surviving first-redex bodies being s-spines (premise of
  let-sinking), stream-dependent specializers, x-headed bodies, nested head
  redexes.

- **hole (Claude opus, 390k tok)** — no reader <= 45. Exact syntax-free hole
  decomposition (transfer lemma on the normal-order run ⇒ dispensable
  positions, unique cores, exact split w = core + fillers + 4d); literal
  "core >= 42" target false (164 core 38 + F 6). The 162 = 40-bit unary core
  + 2-bit filler (u) + j at depth 1. Theorem 10.1 (handwritten reduction +
  checks <= 25 bits): λ-rooted depth-1 readers with w <= 45 lie in R1
  (\s. Y j, Y[Z] = r, Y[U] j = c U N, 31 <= |Y| <= 37 — the 162's family),
  R2 (zero-only X in a 23–27-bit wrapper), R3 (s I I x wrapper, 23-bit X),
  R4 (X with a λ-value on unary). Unique minima: (r j)/N operand
  s I (s s) j 18; shape-A wrapper s (\b. b F c) x 24 ⇒ shape A >= 48.
  Compute: 25-bit runs 371k–410k pre-cap; one 27-bit run reached 5.8 GB,
  discarded. Continued on R1.

- **hole Part II (+474k tok; within caps: <= 53,537 terms)** — Theorem 11.4
  [H + C]: in R1 (\s. Y j, 31 <= |Y| <= 37), if every binder above Y's unary
  output node ν has only unary-dispensable occurrences in ν's subterm (the
  absorber always qualifies), then w >= 46, equality only via the 162's
  wrapper s I (\u. x). Index-shift lemma 11.1: moving ν's subterm out of k
  binders saves exactly k bits per needed s/c leaf ⇒ |X2| >= |T| + k·F_need;
  arms <= 23 bits: only s (\q.c) (s s s) (22) and s (\q.c) (s s c) (23),
  F_need = 4. Open: R1′ (a binder above ν carrying a needed value: lets via
  bridgeadv's two-productive-uses price; openers via a parametrised hole
  split), R2b (arm-shaped <= 27-bit wrapper routing its slot on zero), R3
  (24–25-bit arms routing j), R4 (cell-value sharing). Not yet reviewed.

- **close46-5 (26.6M tok total)** — StreamSpecializer.lean: w >= 46 for
  λs. ((λg. s (g P) (g s)) A) j and the root form with P free in g, s (any A);
  x-headed bodies with λ-free A excluded; leading-λ bodies admit a no-copy
  let motion with exact cost change freeLeaves(A) + 3·count_j(A) + uses_y(B)
  − uses_x(B); COUNTEREXAMPLE to "linear lets never pay": A = (s s) c,
  B = λy1 y2 y3 y4. x: source 29, contractum 31 (LambdaSink.lean; not a
  reader) — bridgeadv's prose claim wrong, its formula right. 20 Lean modules
  10.75 s. Open: x-headed bodies with λ-containing A, nested head redexes.

- **review_hole (Codex astra, fresh context, 1.58M tok)** — no reader <= 45.
  Confirmed: transfer/joint dispensability/ancestor closure; exact depth-1
  price identity; index-shift arithmetic (11.1); small checks reproduced
  (P-lemma 9,265; arms 53,537 with 17 caps independently rejected;
  r1wrap 15/18). BROKEN: persistence premise "touched j-parent X gives r j or
  j on zero" — R59 = \s. ((\a t. t a) j) (s I (\u. s (\q.c) (s s u))) (w 59)
  and R84 = \s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k. k a) (t t)) j)
  (w 84; X gives \k. k j on zero, N on unary) lie outside R1–R4. §11.2
  zero-shape lemma refuted by R104 (w 104). 10.1 and 11.4 use minimality
  without stating it. Repair: unary-only wrapper check (6,089 wrappers <= 18,
  zero caps; one omitted survivor at 17, \u. s I x, none <= 16) ⇒ a minimum
  reader in the R1 anchor+binder case has w >= 46, equality via s I (\u. x).
  class-bound.md §3 downgraded: four families cover rigid-on-zero parents
  only; zero-λ parents open. Files: review_hole/REVIEW.md, check.py,
  wrapper_unfiltered.py.

- **close46-6 (30.7M tok total; lane closed)** — NeededHead.lean: for
  (λx. x B1..Bk) A, keep A once at the head, replace other x uses by the
  nearest outer variable: weight falls by exactly 6 + Σ freeLeaves(B_i) +
  3 Σ count_j(B_i); minimum_forget_fails ⇒ the replacement breaks a law in a
  minimum reader; minimum_extra_use (≥ 1 non-head use, no weight bound);
  body_needed_sharing (1..5 extra uses below 46); unary_needed_if_zero (if
  zero survives, some unary length fails). NestedLets.lean: nested head
  redex ⇒ adjacent lets at exact capture charge; independent adjacent lets
  interchange at F(A) − F(E) + uses_y(D) − uses_x(D). 22 modules, 17.85 s.
  Still missing: tie the needed uses to the unary-output ancestor, created-
  redex origins, input-cell-delivered values. Promotion → integrate2 lane.

- **Wave 5 launched (2026-10-22 ~01:11)**: Codex astra xhigh zerolam (zero-λ
  parents), needbinder (R1′), loop (pumping lemma for the unary run); Claude
  opus root (app-rooted + depth-0 shared top-level let), adv5 (constructive
  adversary); integrate2 (close46 Lean promotion). BRIEF5.md is the addendum.
  Codex weekly reset (1% used, resets Oct 29).
