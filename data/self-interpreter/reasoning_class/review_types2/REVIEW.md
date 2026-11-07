# Third review of BN46: every β-normal reader has w ≥ 46

Reviewer: a fresh-context Claude subagent, standing in for the Gemini consult whose quota ran out. Nothing reviewed here is my own work.
Scope: the argument, not a rerun. I did not rerun any decisive search.
Writes: only under `tmp/round4/review_types_gemini/` (`runs/` holds my logs, the runner, and a target-modified copy of `narrow2.py`). No tracked file changed, nothing committed.

**Overall verdict: sound.** BN46 holds as a computer-checked theorem (Z, U₁, U₂, no minimality hypothesis, sharp at the 162).
- The handwritten steps are correct.
- Codex's repaired tabling argument holds for every law set that contains Z and at least one unary law.
- The lower bound is admissible.
- I found no gap and no counterexample.
- The trust boundary is now the Python search alone. The two cut-offs that rested on the Rust engine (W₂, W₄) have hand proofs below.
- There are a few documentation defects in the tmp files (§4). None affects the result.

## 1. Shape lemma and the arity partition: **sound**

Let R be β-normal. If R is not a λ, its head is c or j, so the head of R Z(r) is rigid and is not r. That fails.

So R = λs. M with M β-normal. Then R Z(r) → M[Z/s], and:
- **M = λx. M′.** Every reduct of M[Z/s] is a λ. But `r j` is neutral and its only reduct is itself, so the two have no common reduct. That fails.
- **M has no leading λ.** Then M = h N⃗, and h ∈ {s, c, j}, because no other binder is in scope at the head.
  - h = c or h = j gives a rigid head ≠ r. That fails.
  - h = s with no arguments gives Z(r), which is a λ. That fails.

Hence R = λs. s A₁ … A_k with k ≥ 1, and depth(j) ≥ 1. The case "body headed by c or j" is covered above. The shape lemma uses only the zero law.

The partition is exhaustive and disjoint:
- **Depth ≥ 2:** the D2 run (untabled `narrow.py`, from the bare root, `--jdepth 2+`).
- **Depth exactly 1:** the exact root arity k is a function of the term.
  - The prefixes `\s. s _`, `\s. s _ _` and `\s. s _ _ _` fix k = 1, 2, 3 as literal trees.
  - `narrow3 --minarity 4` from `\s. _` gives spine indices 0–3 one choice only, an application. The head at index 4 is unconstrained apart from β-normality. That chunk covers exactly the bodies `X A₁ A₂ A₃ A₄`, which includes every k ≥ 4.
  - The spine index is part of the hole metadata, so it is part of the memo key.

REPORT §5's justification ("every law's run needs the root head first, so the search fixes the root spine") is not the operative reason, but it is harmless. The operative reason is that each prefix fixes the tree shape, and the search from any start state is complete for that state's completions.

## 2. Codex's repaired tabling argument: **sound for joint law sets**

I re-derived the argument, as an existence reduction.

1. **The future depends only on the key.**
   - Each law's residual is a set of readbacks: the needed-hole closure, the stack, the target, the target binders, and the pending work.
   - Each unfilled hole in a residual is `HC(id, k, readbacks of its d−k outer env entries)`. Holes are renamed in first-occurrence order, which is injective, so a hole occurring twice is distinguished from two distinct holes.
   - The machine computes on denoted terms. So for corresponding fills of the reachable holes, two states with equal keys have identical future runs: the same ok, fail or need outcome, and the same β count after the cut.
   - The only state the key does not carry is the fuel already spent and the cycle-snapshot history. Neither can turn a success into a fail. Fuel only ever yields `fuel`, and a `Cycle` is a sound certificate (§3). So a difference in history can only produce a listed cut-off, which makes the subtree unclean and blocks tabling.
2. **Orphans are dead.**
   - An "ok" law has finished, and a "need" law's future is a function of its residual.
   - So a hole that appears in no residual is never evaluated, for any completion.
3. **Needed occurrences.**
   - The zero target contains j and the unary target contains c. The inputs contain neither, and reduction creates no free names.
   - So in any completion R* that satisfies the laws, j is reached by the zero run and some c by a unary run. Neither of these is inside an orphan.
4. **Transfer.** Take a memo hit at state B on R*'s path, against a stored clean state A with o_A ≤ o_B (the condition `remaining_B ≤ memo[key]`).
   - Replace B's orphans in R* by 2-bit fillers to get R**. The laws still hold, w(R**) ≤ w(R*), and R** is still β-normal (a variable may sit at a head), with one j and a reached c.
   - Fill A's reachable holes as R** fills B's reachable holes, and fill A's orphans with 2-bit fillers. Call the result R_A.
   - R_A satisfies every checked law, has j at the same depth (the hole depth is in the key, and orphans are leaves disjoint from j's λ-path), and has cost o_A + Δ ≤ o_B + Δ = w(R**) ≤ budget.
5. **A's search would have found R_A.** The search from A is complete for A's completions within the budget: it refines needed holes as R_A has them, and at every step the LB is at most the cost of R_A.
   - One check matters here. A's LB uses `dmin` and `nopen` over A's own orphans, which can differ from B's. That is harmless, because admissibility is only needed for A's own completion R_A.
   - The guard `(¬ju ∨ ¬cu) ∧ no open holes ⇒ prune` cannot fire on R_A's path, because R_A's j and c lie in open holes until they are placed.
   - Nested memo hits are well-founded by the order in which entries are created.
   - So A's subtree would contain a solution or a fuel leaf, which contradicts "clean".

The failure modes asked about:
- **A second c is needed when `cused` is already true.** The flags gate only the LB and the guard, never law satisfaction. A further c lives in a reachable fill, which is identical in A and B. No problem.
- **A c that one unary law needs although another c exists.** This is the same case: c may be placed many times, and the placement is in the reachable fills.
- **j's depth tax.** j is either already placed, with its depth fixed, or inside a reachable hole whose depth is in the key. Replacing an orphan never touches the λs above j. No interaction.
- **An orphan at depth 0, where no bound variable exists.** The filler is then `c`, which costs 2 + 0. In any case, every tabled BN46 run starts under `λs`, and D2 is untabled. So this case never arises.
- **Single-law runs.** The defect is real: Codex's `\s. s s c j` against the stored state `\s. s F H`. The cause is that the engine requires a c the zero law does not need. That is exactly step 3 failing, and BN46 has no single-law run.

**Differential evidence** (mine, `runs/`, each run ≤ 92k states and ≤ 15 s, single thread):
- `narrow2.py 47 --betanormal --prefix '\s. s _ _ j'`, tabled (63,744 states) against `--notab` (91,923 states): identical solution and cut-off sets, namely the 162 core plus four fuel cut-offs.
- A joint problem with many solutions: the same engine with the unary target changed to `c U_{n−1}` (`runs/n2mod.py`, `MODT=cU`), laws 1, 2, 0, β-normal. Tabled and untabled give identical SOL/FUEL sets: 5 at B=38 and 15 at B=41 (54,278 against 76,847 states).
- With target `c N` the solution counts also agree, at B = 28, 30, 36 and 40.
- These runs exercise the memo key on joint laws where solutions exist. They do not independently test the shared machine, which Codex's independent enumerator covered on single laws.

## 3. Lower bound, completeness and cut-offs: **sound**

The lower bound is `LB = refined + 2·open + [¬ju](4·max(dmin, jlo) − 2) + [¬cu]·dmin`.
- **Admissibility.** Every subtree costs at least 2, with one exception: j at depth 0 costs 0, and the −2 increment covers that.
- An unplaced j lies at depth ≥ max(dmin, jlo), so its subtree costs ≥ 4·depth.
- An unplaced c lies at depth ≥ dmin, so its subtree costs ≥ 2 + depth.
- If j and c share one subtree, that subtree has an application, costing ≥ 4 + 4d_j + d_c. That covers both increments.
- **Termination.** Each λ raises LB by 2 and each application by 4.
- **The cost model matches class-bound §2.** λ and application cost 2; variable index i costs 2+i; c at depth d costs 2+d; j costs 4·depth(j). Check: the 162 is (42, 1).

**Completeness.**
- Every hole refinement is offered: λ (except at a head under `--betanormal`), application, every index below d, c, and j at most once. Propagating the head flag generates exactly the β-normal trees.
- The comparison is head reduction, then recursion into arguments, then descent under λs with fresh rigid names. That is standard normal order, complete for normal forms.
- Its early refutations are valid for pure β, with no η: λ against neutral, a head mismatch, or an arity mismatch.
- Laws n = 1, 2 are a weakening, so the exclusion is valid.
- `fuel`, the 400-snapshot cap and `RecursionError` only ever yield `fuel`, never `fail`. Hence on R*'s path every leaf is either a solution or a listed fuel cut-off.
- All the printed counts (0, 0, 7, 0) are under the 20-line print cap, so every cut-off was seen.

**The cycle certificate (L5).**
- The low-water mark is lowered on the snapshotting step itself, so P₁ is never empty.
- The entries below the mark are never popped, hence never inspected.
- So `H P₁ →wh* H P₁ Y`. Weak-head steps extend to the context `[] Y`, so the weak-head reduction is infinite and there is no whnf, independent of every fill.
- For `narrow.py`'s opaque holes, whose readbacks carry no environment, erase each hole to an atom. The real head-reduction sequence projects step for step onto the atom sequence, because no hole is ever at the head. So the infinite atom sequence lifts to the real term. Sound.

**The cut-offs**, all re-derived by hand. Each hole sits in an argument position that is never evaluated.
- W₁, W₃, W₅: Codex's derivations check out.
- **W₂ = λx. x (x (λy. x)) (new hand proof).**
  - Let X₀ = W₂ and X_{n+1} = X_n (λy. X_n).
  - By induction, X_{n+1} →wh* W₂ (λy. X_n) →wh* (λy. X_n)(…) → X_n →wh* W₂.
  - So W₂ W₂ →⁺ W₂ X₁ →⁺ W₂ X₂ →⁺ ⋯, which is an infinite weak-head reduction.
- **W₄ = λx. x (x I x) (new hand proof).**
  - W₄ I →* I, since I (I I I) →* I.
  - Let X₀ = W₄ and X_{n+1} = X_n I X_n. Then X_{n+1} →wh* W₄ I X_n →* X_n →wh* W₄.
  - So W₄ W₄ →⁺ W₄ X₁ →⁺ W₄ X₂ →⁺ ⋯.
- Every cut-off in BN46 is therefore handwritten, and the frozen engine is not needed.

## 4. Anything else: **no gap; minor documentation defects**

1. Three tmp texts still carry the unrepaired claims:
   - `types/REPORT.md` §3 still says "Completions correspond one to one".
   - `narrow2.py`'s docstring still asserts infeasibility "for every partial term with the same canonical residual problem".
   - `narrow.py` says "complete for the checked laws", but it requires a c even for Z alone (Codex's `\s. s F j`).

   `class-bound.md` already states the repaired, joint-law form, which is the canonical text.
2. Wording in `class-bound.md`:
   - "replaced by a 2-bit variable" means a hole absent from every residual. It is the innermost variable at depth ≥ 1, which every tabled run satisfies.
   - "the seven cut-offs all self-applications without a head normal form": W₅'s cut-off is `W₅ A W₅ ⃗Y`, which is not literally a self-application, and W₃ diverges only with its trailing argument.
   - Both are harmless.
3. The trust boundary is a hand-written Python machine. It is computer-checked, not kernel-checked. Two reviewers have audited it, with an independent single-law enumeration (Codex) and joint-law tabling differentials (above). A Lean port would need a verified narrowing-completeness proof.
4. A probe consistent with the depth tax: `λs. s (λb t. b (t j) (c t (t t t)))` is a valid β-normal k = 1 reader (`rd.check` True). Its cost is 42, but j sits at depth 3, so w = 54.

| Point | Verdict |
|---|---|
| 1. shape lemma, arity partition | sound |
| 2. tabling via needed occurrences | sound (joint laws only; the single-law defect is real but out of scope) |
| 3. LB and needed-narrowing completeness, L5, cut-offs | sound |
| 4. other | no gap; doc fixes in the tmp files |
| **Overall** | **sound** (computer-checked) |
