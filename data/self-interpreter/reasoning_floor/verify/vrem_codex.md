(・_・) **Verdicts: (1) correct; (2) correct.** I found no invalid inference, omitted allocation, or incorrect reduction in the two claimed lower bounds. These are valid handwritten arguments on top of the stated formal and published results; neither numerical bound has thereby become a Lean theorem.

Review scope: `remainder/REPORT.md` §3–4, `remainder/RemainderChain.lean`, `remainder/audit.py`, and `global/PROJECTIONS.md` §1–2, together with the relevant definitions and proofs in `SelfintZero`, `SelfintNonlinearChain`, `SelfintProjections`, and the background documents. I did not consult another agent or inspect another review. No candidate enumeration was performed.

**Claim (1): every closed exact remainder extractor has at least 27 bits.**

The three-live-binder argument at `remainder/REPORT.md:234–250` is sound for the chosen weak-head evaluation, including when the source contains arbitrary redexes. The details that matter are:

1. Correctness on a fixed quote with normal suffix forces `R` to expose a lambda by weak-head reduction. Before that first lambda appears, every weak-head step of an invocation is a step in its function `R`. Closedness excludes a free-variable head. The exposed binder is live: otherwise applying any stream gives the same closed body, which cannot be beta-convertible to both `I` and `F`. Confluence transfers the extractor contract to this reduct, and `remainder_body_two_nonlinear` applies to its body.
2. If the source has at most two live binders, both must be nonlinear. The new chain theorem makes those two incomparable. Every ancestor of either is then vacuous, so neither lambda can refer to an ancestor: each is closed in isolation. Neither contains any other live binder.
3. Track surviving lambda occurrences through weak-head contractions. An uncontracted copy of one of these two closed live lambdas cannot be changed by a surrounding substitution, and weak-head evaluation never reduces its body. Contracting that lambda destroys that particular occurrence; it does not create a modified surviving version of its binder. Copies inserted later are again copies of the same closed source subterms. All other original binders are vacuous, and capture-avoiding substitution cannot introduce an occurrence of their own variable. Thus any exposed *live* lambda is an unchanged copy of one of the two source live lambdas, with no internal nonlinear binder. This contradicts the body theorem.

This is not an assertion that closed lambda bodies are invariant under unrestricted beta reduction. They are not. The proof explicitly chooses weak-head reduction, which is enough to obtain the required contradiction.

The allocation at `REPORT.md:252–268` is exhaustive. Three live binders, including two nonlinear ones, require `L >= 3` and `V >= 5`. With `2L + 4V - 2 + X <= 26`, increasing `V` to six already costs 28, and increasing `L` to five also costs 28. Therefore `V=5`, there are exactly two binary nonlinear binders and one affine live binder, and the only possibilities are `L=3, X<=2` or `L=4, X=0`. The fourth binder, if present, is vacuous.

I checked the subsequent grammar classification independently:

- **Zero index sum (`REPORT.md:274–319`).** Every lambda subterm is closed. The same weak-head residual argument applies to every lambda. The exposed live lambda with two internal nonlinear binders must therefore be the affine source binder containing both others. Its subtree contains all five leaves, so no application can lie outside it. An outer vacuous lambda discards the public stream. With three lambdas this leaves precisely the two binary association patterns on `s,D,D`, with the three positions for `s`: the six displayed layouts. With a fourth vacuous lambda, its closed body can wrap one `D` or the application `D D`; a wrapper containing an occurrence of `s` or a `D`-bound variable would make `X>0`. These are exactly the twelve `s,D,J` layouts and the two wrapped-Omega layouts listed in the report.
- **Positive index sum, lambda root (`REPORT.md:323–346`).** The root cannot be nonlinear because the only other nonlinear binder would be comparable to it. The only possible positive-index occurrence is the unique `s` occurrence inside one nonlinear binder. That helper has three leaves, the other helper is `D`, and the body is their application in one of the two orders. `H_s D` reduces to one of the six already handled layouts; `D H_s` reduces to `H_s H_s`. The six displayed helper bodies are complete.
- **Positive index sum, application root (`REPORT.md:351–408`).** The nested pair of binders occupies one closed operand `N`; the incomparable nonlinear binder occupies the other operand and is exactly `D`. No leaf remains for a third component. If the affine binder is outermost, positive index sum forces the two lambdas to be leading: `N=λa b.T(a,b,b)`. In both outer application orders the exposed interface body has only one internal nonlinear binder. If the nonlinear binder is outermost, a leading affine binder gives the six displayed `T(x,x,y)` cases. A nonleading affine binder must contain its own occurrence and exactly one captured `x`, leaving the other `x` outside. The four displayed forms are then the only possibilities.

All four reduction tables in §4 check out, as do the adjacent reductions involving the wrapped `D D` and nonleading affine helpers. On `stream(I,n)`, every terminating table result either visibly retains an outer lambda or reduces to a normal term different from rigid `n`. The other cases are excluded by the stated cycles, growing head spines, or the internal-binder theorem. The two leading-lambda reductions at `REPORT.md:376–377`, which the supplied audit does not check, are also correct:

```
N = λx y.x(x y):   N N → λy.N(N y) → λy z.(N y)((N y)z)
N = λx y.x(y x):   N N → λy.N(y N) → λy z.(y N)(z(y N)).
```

The divergence arguments are genuine recurrences, not conclusions from running out of fuel. In the `J(A)=λy.A y` family, `J^k(N) V →^k N V`, so the displayed recurrence is valid for every `k`, not merely the checked values `0,1,3`. Each intervening head lambda has a pending argument. The flip family is an exact three-step cycle. The all-`Q` argument in §1 is also sound: after consuming three all-`Q` arguments, its head is another all-`Q` tree with four all-`Q` arguments before any arbitrary pending suffix arguments. This preserves an indefinitely reducible protected head prefix.

I also checked the independent 24-bit proof in `global/PROJECTIONS.md:25–106`. Its four `(L,V)` allocations are complete; shortest-source minimality excludes every erasing source redex, including internal ones. This justifies the beta-normal operand classification. The five one-vacuous and three two-vacuous layouts are complete under their index budgets and have the stated reductions. The final application-tree invariant for the binary/ternary diagonal cases is preserved at every head contraction. This weaker proof is consistent with the 27-bit result.

**Claim (2): a literal `λc s.c A B` self-interpreter has at least 70 bits.**

The requirements really do sit in the original `A`, not merely in a residual or in the public interface.

- **Incomparability (`PROJECTIONS.md:135–140`).** The quotation of Omega with rigid tail is binder-affine. Substituting it for the free stream variable preserves `Chain` if `A` had that property. Rigid projection gives a beta join with `λz.Omega`; every reduct of that target is itself. Thus the instantiated payload would reduce to a term without `Chain`, contradicting preservation. The contradiction starts from the syntax of `A`, so the incomparable nonlinear pair lies inside `A`.
- **Internal width three (`PROJECTIONS.md:142–148`).** Form the actual source term `P = A[K/c,stream(S,I)/s] I`, without further reducing it. It is closed and beta-convertible to `S`. The substituted closed terms have width one. In this *unreduced substitution result*, every subterm either lies inside an inserted closed argument or descends from an original subterm `U` of `A`; in the latter case its free-variable set is exactly `FV(U) \ {c,s}`. The final application to closed `I` adds no support. Statman's theorem therefore forces three distinct variables bound internally to `A` in one original subterm. No beta-monotonicity of width is assumed.
- **Counting (`PROJECTIONS.md:150–159`).** Those three binders lie on one ancestor chain. They cannot contain both members of an incomparable pair, so at least four live internal binders are present. Four live binders with at least two nonlinear ones require at least six internally bound leaves. A required stream occurrence supplies a distinct seventh leaf. Selected occurrences of the three width-witness variables have indices at least `2,1,0`. Consequently `L(A)>=4`, `V(A)>=7`, `X(A)>=3`, and `|A|>=37`.
- **The open remainder body (`PROJECTIONS.md:126–130`).** `SelfintProjections.remainder_two_nonlinear` is a theorem about `B` itself. Fixing `c` to closed affine `I` does not change its nonlinear count. The independent stream-occurrence theorem supplies a free leaf. The exact inequality `10 nonlinear(B) + 4 freeLeaves(0,B) <= |B|+2` was proved for arbitrary open terms, so it gives `|B|>=22` without adding a closure binder.
- **Disjoint accounting (`PROJECTIONS.md:162–180`).** `A` and `B` are disjoint source subtrees. The two outer lambdas cost four bits, the two outer applications four, and the head occurrence of `c` three. Thus the additive overhead is exactly eleven, and `11+37+22=70`. Internal binders, leaves, and index contributions have not been charged twice. None of this transfers the same bound to an arbitrary source that expands into the displayed form.

I independently downloaded the publisher's preview of [Statman's *Two Variables Are Not Enough*](https://page-one.springer.com/pdf/preview/10.1007/11560586_32) and checked printed page 406 visually and as text. It explicitly states the width-three consequence for a closed term beta-convertible to `S`. I verified that the cited theorem has the needed scope; I did not reconstruct its complete published proof from the two-page preview.

**Two presentation clarifications; neither invalidates a bound.**

- `REPORT.md:287–316` gives beta reducts, not uniformly deterministic weak-head traces. For example, `D(J s)` reduces to `Omega` by first contracting its argument `J s`; ordinary weak-head reduction instead cycles between `D(J s)` and `(J s)(J s)`. Likewise, reducing the argument first gives `D(s D) →* D K → K K`. Both uses in the exclusion are valid by confluence. Keep the distinction when describing what the audit checks.
- In `PROJECTIONS.md:57–64`, “literal vacuous boxes” is essential notation. The 11-bit `deltaK` is literally `λx.x(λu.x)`. Writing an actual application of the seven-bit `K` to `x` would cost more. The classification and reductions use the literal-box interpretation stated in the text.

**The two verified results together actually give 73 for the literal class.** Let `q` count free `c` occurrences in the original `B`. The projection law permits capture-avoiding substitution `C:=stream(M,N)` for the rigid continuation, so `R_B=λs.B[s/c]` is a closed exact remainder extractor. Each replacement lowers the corresponding de Bruijn index by one and changes no other node. Hence

```
|R_B| = 2 + |B| - q >= 27,
|B| >= 25 + q,
|H| = 11 + |A| + |B| >= 73 + q >= 73.
```

This is a further handwritten consequence, not a reason to reject the claimed 70. The closure cost is explicitly subtracted, so it is not an additive charge of a whole extractor alongside the open payload.

**Checks actually executed.**

- `lake env lean -j2 ../tmp/overnight/remainder/RemainderChain.lean`: success, about 0.18 s. All six printed axiom audits contain only `propext` and `Quot.sound`. I inspected its chain preservation, lexicographic descent, finite zero-prefix simulation, and the final lambda-versus-Omega contradiction.
- Separate `lake env lean -j2` checks of `Blc/SelfintZero.lean`, `Blc/SelfintNonlinearChain.lean`, and `Blc/SelfintProjections.lean`: success, each under one second, using the available compiled imports. This was not a clean rebuild of every transitive dependency.
- The supplied `remainder/audit.py`: 33/33 equations passed in 0.0025 s. I suppressed only its output-file write, leaving the author's artifact untouched; its probe enumerator was never invoked.
- Independent `verify/vrem_codex_checks.py`: 52/52 fixed equations passed in about 0.001 s. It uses `blcc` only as a parser and its own capture-avoiding substitution and beta reducer, independent of the author's `lc.py` reducer. It covers all four §4 reduction tables, the two omitted two-lambda expansions, the other displayed cycles, the 24-bit proof's finite reductions, and both 67-bit bootstrap traces. Two terminating identities are checked by finite common normal forms; the claimed cycles and exact step counts are checked by literal finite traces. Results are in `verify/vrem_codex_checks.json`.
- The allocation completeness, residual-origin argument, all-`k` recurrence, width localization, and bit accounting were checked analytically. Finite equation checks do not stand in for those arguments. I did not run a candidate census or the 240-probe construction battery.

Reviewed snapshot SHA-256 values:

```
eeca4bbab7aa66e6210336ae0ae26acb3453b50b90d04f12f6f57b58270e73cc  remainder/REPORT.md
1c3f43653892b6e8b944511a59356e984ef2e77327f03a96d311a581fffdda19  remainder/RemainderChain.lean
a5127296be938da3189974a00f48b069b520a41907c9a8ddfc14cd8b0e257638  remainder/audit.py
41e156a0a3e39ed5a637b8c7d984e93cad65af6e48ab4ec33297278295767455  global/PROJECTIONS.md
```
