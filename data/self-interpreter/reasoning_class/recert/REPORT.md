# SF-family soundness audit

**No additional cut-off must be reopened. SF and SF′ are sound under their stated one-argument preservation hypotheses. SF2 remains unsound.** All requested shared cases and both adv6 new-base cases have replacement regular certificates; all further reconstructed rootnarrow family positives do too.

Evidence: **C** = newly checked finite certificate/reduction; **L** = newly kernel-replayed Lean theorem; **H** = handwritten mathematical argument. No tracked file was modified, no commit was made, and all generated files are under `tmp/round4/recert/`.

## 1. Counts and coverage

| Corpus | Re-certified divergence | Other result | Newly reopened |
|---|---:|---|---:|
| shared P1, four SF cases | 4/4 [C,L] | — | 0 |
| shared P4, four SF + four Y-family cases | 8/8 [C,L] | — | 0 |
| adv6, conservative inventory of every handwritten residual in certificate dumps | 63/63 [C] | Both new-base cases additionally [L] | 0 |
| rootnarrow, additional source-unique cut-offs outside the five original regression files | 265/266 [C] | 1 terminating C2 mismatch [C,L], not an SF exclusion | 0 |
| **Total expanded audit** | **340/341** | **1 C2 mismatch** | **0** |

The expanded inventory intentionally overcovers the request. Of adv6's 63 rows, 12 need an argument beyond the syntactic stream-absence test; the second explicitly requested new-base example also has a stream-absence proof. Thus the specifically relevant SF/new-base subset is **13/13**, and another **50/50** handwritten residuals have independently recovered divergence certificates as well. No s-absent argument was used to manufacture a divergence certificate.

For rootnarrow, bounded reruns of the old W5/SR/SF′/SF2 recognizers produced **60 source-unique positives: 49 SF′, 10 SR, 1 SF2** (90 occurrences including duplicate derived JSON files). **All 60 pass the new checker.** These are overlapping recognizer successes, not an attempted reconstruction of historical first-success attribution: C1/C2 was not run first, and negative/timed-out legacy attempts are not proofs of nonmembership. To eliminate that attribution uncertainty, the new checker was run over **all 266** remaining source-unique terms (323 JSON occurrences), not just those 60. Every term is either independently divergent or the explicit C2 mismatch below.

The five prior regression files are `h_xfull1.json`, `h2_1.json`, `h2_2.json`, `h2_5.json`, `h3_1.json`; matching source strings in any derived file are recorded in `coverage.json` (1,038 occurrences). The extra inventory includes `h2_3` and `h2_6`, which were **not** among those five despite the broad “h2_*” description. Twelve of the 266 extra source strings also occur in certgen's separate MANIFEST/pre_h63re set; these were rechecked here rather than silently dropped. No new W5-only case was found outside prior coverage.

**Previously reopened case remains reopened:** certgen's `rootnarrow/work/h2_2.json:31`,

    Δ (λz. z (λa b. z b U) (z V)),   Δ = λx. x x.

It was outside this additional-corpus audit. This report neither recovers its exclusion nor claims a terminating filling for it. It must not be confused with certgen's separate rule-level SF2 counterexample.

## 2. Exact source reconciliation

**The shared/adv6 certificate-log indices are not JSON cut-list indices.** Directly indexing the JSON with a printed certificate number audits the wrong term. `inventory.py` matches each literal source string, asserts it exists in its JSON, and retains both identities. All indices are zero-based. `MANIFEST.json` contains every literal source, aliases, chosen allocation/context, certificate hash, result, and resource measurement. The final independent validation checks the certificate's code DAG against compilation of that exact source applied to the zero probe.

### Shared

| JSON identity | Certificate-log index | Argument | Artifact |
|---|---:|---|---|
| `shared/p1.json:18` | 20 | SF | `A000` |
| `shared/p1.json:8` | 21 | SF | `A001` |
| `shared/p1.json:13` | 38 | SF | `A002` |
| `shared/p1.json:15` | 81 | SF | `A003` |
| `shared/p4.json:80` | 33 | SF | `A004` |
| `shared/p4.json:60` | 35 | SF | `A005` |
| `shared/p4.json:70` | 55 | SF | `A006` |
| `shared/p4.json:74` | 107 | SF | `A007` |
| `shared/p4.json:129` | 15 | Y-family | `A008` |
| `shared/p4.json:224` | 135 | Y-family | `A009` |
| `shared/p4.json:16` | 147 | Y-family | `A010` |
| `shared/p4.json:173` | 182 | Y-family | `A011` |

### adv6 handwritten residuals (complete conservative inventory)

The two new-base examples are **p1root log 322 → JSON 212 (`A029`)** and **log 324 → JSON 210 (`A030`)**. The first is not s-absent because a hole within Q can mention the stream. The second is s-absent too, but is explicitly included in the SF/new-base subset.

| JSON corpus | Count | log index → JSON index |
|---|---:|---|
| `adv6/work/p1root.json` | 28 | 20→107, 21→77, 44→92, 175→368, 176→364, 206→111, 208→105, 215→84, 216→73, 217→75, 220→122, 221→116, 234→14, 235→10, 267→319, 268→317, 291→367, 322→212, 324→210, 352→263, 353→261, 376→108, 378→97, 379→89, 380→91, 383→78, 400→119, 418→13 |
| `adv6/work/p1rootj.json` | 3 | 25→11, 26→7, 41→10 |
| `adv6/work/pr_gs_yy___.json` | 4 | 13→32, 25→18, 27→14, 55→17 |
| `adv6/work/q_0b5945.json` | 3 | 50→58, 51→50, 95→55 |
| `adv6/work/q_538700.json` | 1 | 13→11 |
| `adv6/work/q_5716b1.json` | 7 | 1→9, 10→17, 11→15, 13→11, 15→8, 17→4, 19→0 |
| `adv6/work/q_83dd77.json` | 8 | 7→16, 62→55, 64→73, 71→18, 73→15, 75→11, 76→20, 81→2 |
| `adv6/work/q_8d8910.json` | 3 | 20→46, 21→29, 44→37 |
| `adv6/work/q_94fadb.json` | 3 | 110→25, 112→19, 205→22 |
| `adv6/work/q_df9ee9.json` | 3 | 110→73, 112→64, 344→70 |

### Additional rootnarrow reconstructed family positives

These are JSON indices; duplicate occurrence aliases are in the manifest. All listed terms are independently accepted, including the SF2-positive case.

| Canonical JSON corpus | Index and first successful bounded family recognizer |
|---|---|
| `rootnarrow/work/c1_lamyj.json` | 0 SFprime |
| `rootnarrow/work/fix_3.json` | 0 SFprime |
| `rootnarrow/work/fix_4.json` | 4 SFprime, 5 SFprime, 6 SFprime |
| `rootnarrow/work/h2_3.json` | 0 SFprime, 1 SFprime, 7 SR, 8 SR, 9 SR, 10 SR, 12 SFprime, 13 SFprime, 14 SFprime, 36 SFprime, 50 SFprime, 51 SFprime, 53 SFprime, 54 SFprime, 55 SFprime, 56 SFprime, 58 SFprime, 59 SFprime, 78 SFprime, 79 SFprime |
| `rootnarrow/work/h2_6.json` | 0 SFprime, 2 SFprime, 15 SFprime, 17 SFprime, 18 SFprime, 19 SFprime, 20 SF2, 22 SFprime, 46 SFprime |
| `rootnarrow/work/h6_2.json` | 0 SFprime, 1 SFprime, 4 SFprime, 5 SFprime, 7 SFprime, 9 SFprime, 10 SFprime, 11 SFprime, 12 SFprime, 13 SFprime, 17 SFprime, 18 SFprime, 19 SR, 20 SR, 21 SR, 22 SR |
| `rootnarrow/work/h6_3.json` | 0 SFprime, 1 SR, 15 SR, 21 SFprime, 22 SFprime, 23 SFprime, 40 SFprime, 43 SFprime, 44 SFprime |
| `rootnarrow/work/h_xfull2.json` | 2 SFprime |

## 3. SF and SF′: why the rule survives

**SF as stated in shared/REPORT §2 is sound [H].** Its definition of S constrains **every internal spine argument** of an S-element. Its step conclusion constrains only X′ and Z′ in

    X₀ Z →h+ X′ Z′ R⃗.

The R⃗ tail is deliberately arbitrary. This is sufficient: the invariant is **the whole head state has form X Y T⃗ with X,Y ∈ S**, not “the whole head state belongs to S.” Flatten X into `X₀ X₁ … Xₘ`. If m=0, the first base argument is Y∈S; otherwise it is X₁∈S. Apply the stipulated positive head reduction to that one argument, leaving every pending tail untouched. Its result again has an S-term at the head and an S-term as the first argument. Repeat. There is at least one beta contraction each time, so this gives an infinite head reduction, not a zero-progress loop.

The proof does **not** silently infer that arbitrary tails belong to S. Original SF is stronger than necessary about internal arguments, but it has no SF2 flaw. Its recursive base/application description should be read as an inductively generated family of finite terms, so spine decomposition is available.

**SF′ is also sound [H].** Here S′ requires only the *first* internal argument of an S′-spine to belong to S′. Exactly the same flattening proof works: only that first argument is consumed by the one-argument obligation. Arbitrary later arguments remain arbitrary. `certsf.SF.hstep_ok` and `step_ok` test each base/template with exactly one fresh S′ argument; reaching an under-applied lambda rejects the check. Every template parameter is assumed S′ only because base membership separately requires its instantiation to be in S′. Checking the dispatcher's own step is essential and is present in the inspected version.

**SF2's extrapolation is invalid.** It gives a base several fresh arguments, marks *all* of them as S′, but its invariant guarantees only the first. A template may return a later arbitrary argument as head. A sound arity-aware extension must track which individual argument positions are protected and preserve those obligations; SF′ does not authorize SF2.

The original SF instances check directly: with `H=λy.y A_y W_y`,

    H Z → Z A_Z W_Z
    (λw.X w V) Z → X Z V′
    (λw.w (X w)) Z → Z (X Z)
    (λw.X (X w)) Z → X (X Z).

For the stream-headed variant, `A_X=λw.s (X w)` and `s=cons b r` give `A_X Z →+ X Z b r`. All leave a protected head/first argument regardless of W,V or any trailing C.

For adv6's two new base sets, write `H=λy.y y W_y`, `Q=λz.z A_z`, with either `A_X=λw.X w V` or `A_X=λw.w (X w)`. Take the application closure of `{H,Q} ∪ {A_X : X∈S}`. The checks are `H Z→Z Z W_Z`, `Q Z→Z A_Z`, and the corresponding A equation above. Thus H Q has the required invariant. Scoped hole fillings are allowed; their arbitrary residuals remain in unprotected tail positions. The two literal code-table certificates were also replayed in Lean.

For the Y family, `Y₀=λz.H`, `Yₖ₊₁=λw.w Yₖ` give `Yₖ Yₖ→+H` by induction, and `H Yₖ C⃗→+H Yₖ₊₁ C⃗`; these are positive reductions and preserve the tail. All four corpus instances have independent certificates.

## 4. Checker rejections and the terminating control

Context-2 rejects ten entries in the expanded inventory. Two adv6 rows (`A038`, `A071`) pass context 0; five root rows (`R146`, `R189`, `R197`, `R198`, `R308`) pass context 4; the two pre_h63re overlaps (`R255`, `R260`) pass context 6. A rejected abstraction is UNKNOWN until an independent certificate or reduction resolves it.

The sole remaining rejection is `rootnarrow/work/h6_3.json:49` (`R322`):

    F = λw. w (w (w (w I)))
    H = λz.F
    R = (λx. (x U) (x V)) H.

For arbitrary U,V, `R→+F F→+I`. Indeed F I→+I, so `F F→F(F(F(F I)))→*I`. Filling both holes with I, the explicit reducer finds **R→h^513 I** and **R Z→h^514 Z**. `Direct322.lean` kernel-checks both identities and `Solvable (R Z)`; the only reported axiom is `propext`. The exact opaque-closure run also stops without demanding either hole (`Direct322.json`).

This is **not a newly false SF certificate**: no old family recognizer accepted it, and shared/cert.py returns `fail` on all three laws in 345 beta calls (`Direct322_C2.json`). R Z normalizes to Z, whose head lambda shape differs from the required `r j`. Therefore the reader cut-off stays excluded by C2. A terminating instance disproves a claimed divergence certificate; it does not establish that a reader cell is viable when a separate mismatch proof excludes it.

## 5. Verification boundary and resources

Every accepted artifact was independently replayed by `portable.check`, and its literal code table was compared with compilation of its manifest source applied to Z in a fresh subprocess (`*.validation.json`). **340/340 pass.** `VALIDATION.json` records the totals. The 14 highlighted shared/new-base code-table theorems additionally pass Lean, as does the direct terminating example: **15 Lean files checked in this audit**.

As in certgen, a code-table Lean theorem proves nontermination of the concrete closure machine. The translation to lambda head reduction and arbitrary scoped hole fillings is the handwritten simulation in certgen/SOUNDNESS.md. This audit does not upgrade that bridge to a Lean theorem, nor claim that every one of the 340 individual certificates was replayed in Lean.

Final discovery maxima: **7,270 states**, **10,897 work visits**, **0.102 s**, **35.1 MB RSS** per source. Discovery processes are single-threaded, capped at 45,000 states/work visits, with 80 s internal/110 s external deadlines and a 900 MB RSS watchdog. Legacy classification has a 30,000 beta-call budget and 0.3 s per variant; capped attempts stay unclassified. Each source/check uses a separate process; orchestration has at most two workers. Final Lean maxima: **2.14 s**, **614 MB sampled RSS**, **two threads**; each file has a 110 s / 1.8 GB watchdog. No required run reached a resource cap. No additional packages were installed.

Reproduce from repository root:

    python -B tmp/round4/recert/inventory.py
    python -B tmp/round4/recert/classify.py
    python -B tmp/round4/recert/validate_all.py
    python -B tmp/round4/recert/lean_batch.py
    python -B tmp/round4/recert/lean_limited.py Direct322.lean

`one.py LABEL discover_site_K` regenerates one chosen certificate; `batch.py` supplies bounded corpus slices. The manifest, not a legacy numeric log position, is the authoritative mapping to an exact input.
