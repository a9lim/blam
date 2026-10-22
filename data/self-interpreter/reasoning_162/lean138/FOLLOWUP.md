Follow-up from the coordinator, same lane, same rules (files only in
tmp/round3/lean138/; at most two Lean threads; no sorry or new axioms).

Verified: Reader138.lean builds (1.3 s), axioms clean. Now priority 3:
discharge the `NextPrice` premise by formalizing the NEXT classification,
so that the class bound needs no handwritten numeric fact.

Statement to prove (make it precise against the existing definitions): for
every Q in frame [c, p] that is beta-normal, whose tag binder b occurs only
as the head of exactly-two-argument spines, and that satisfies the
canonical rigid NEXT branch laws
    Q K t =β p (λf. c Abs(f)) t,   Q F t =β p (λf. p (λg. c App(f,g))) t
(Abs(f) = λe a. f (λb r. b a (r e)), App(f,g) = λe. f e (g e)), we have
wire Q ≥ 92 and freeLeaves 0 Q ≥ 4. The handwritten proof is the nine-form
pruning argument in
data/self-interpreter/reasoning_floor/next-proof-codex/REPORT.md section 4
(reviewed in data/self-interpreter/reasoning_floor/verify/vnext_codex.md),
repriced in tmp/round3/next/REPORT.md section 3 and floor/Facts.lean.

If the full classification is too large for this session, prove the
strongest clean piece (e.g. the pruning lemma: selecting a tag arm deletes
syntax without rebinding survivors, so wire and freeLeaves do not increase;
or the common-head-path lemma), state exactly what remains, and append the
results to REPORT.md as a new section.
