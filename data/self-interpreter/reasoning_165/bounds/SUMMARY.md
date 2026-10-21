(•̀ᴗ•́) **No sub-165 construction. I obtained a conditional 165-bit lower bound, a stronger 14-bit zero-arm bound, and an analytic 19-bit APP-lift bound.** These are hand proofs, with targeted computational checks—not Lean formalizations.

Full proofs and boundaries: [RESULT.md](RESULT.md). Checks: [proof_check.py](proof_check.py).

**The reader theorem.** In the actual frame `[s,next,cont,intL,x]`, consider readers
```text
s H S
H = λb r1 … rm. b A B
```
where:

- `S` satisfies the stop-at-first-zero law;
- `A` and `B` are arbitrary terms, including β-redexes and further uses of `b`;
- there are no common arguments following `b A B`;
- the handler satisfies the parametric laws
  ```text
  H K R R =β R next
  H F R T =β cont R T
  ```
  with independent rigid neighbours, `R`, and `T`.

Then the exact handler minima are:

| Tails bound before dispatch | Zero arm | Variable arm | Handler |
|---|---:|---:|---:|
| 0 | 14 | 5 | **27** |
| 1 | 12 | 10 | **33** |
| 2 | 10 | 16 | **40** |

Three or more leave an unwanted outer lambda. The skip costs at least **10**, and the reader’s two applications plus `s` cost **6**. Thus the reader costs at least **43**, and retaining the other 122 bits gives **165**.

This class includes the 165 and permits β-compression inside both arms. It does not cover arbitrary reader shapes or exploitation of the variable-tail correlation.

**The zero-arm result is stronger than that theorem requires.** In frame `[b,s,next,cont,intL,x]`, even allowing
```text
b := K
s := cons K R
```
an arm satisfying
```text
Z R R =β R next
```
for rigid `R,next,cont,intL,x` cannot cost below **14**.

The proof starts with the exact classification, when `R` is absent from `Z` and neighbours are rigid:
```text
Z R R =β R next
⇒ NF(Z) ∈ { λu v. u next, λu v. v next }.
```
Their costs are 15 and 14. A non-normal representative needs at least two lambdas, two applications, and the required `next` occurrence, costing at least 16.

Borrowing the known `K` or whole zero cell requires a separate argument. Below 14, the required `next` occurrence forces
```text
2L + 4A ≤ 9.
```
One-application terms involving the supplied structures have only two leaves and vacuous local lambdas; they either erase `next` or produce the wrong head. Two-application terms have no lambdas and reduce to precisely six trees using `b,b,next` and twelve using `b,s,next`. All fail; their reductions are listed in the report and directly checked. The existing 14-bit arm attains the bound.

Consequently, **reusing the known zero tag or whole zero cell alone cannot buy the missing bit while NEXT and recursion remain rigid.**

Two additional results:

- **APP lift ≥19 bits**, without a syntax restriction, under `V E =β f E (g E)` with independent rigid variables. Its unique normal form costs 19. A non-normal representative needs at least two lambdas and three applications; the captured `f` contributes at least one index bit, giving `2·2 + 4·3 + 2 + 1 = 19`. The application bound follows because terms with at most two application nodes cannot increase that count under β-reduction.
- **Cell currying costs 25 versus 24 bits** in the outer-selector grammar with the tag used only at that dispatch. Thus the cell benefits from binding its remaining argument before dispatch, whereas the reader pays six extra bits for doing so. This is a precise limitation on sharing that particular selector structure.

**Complete-interpreter ledger:** no new complete interpreter was constructed. The unchanged reference was copied as [reference165.lam](reference165.lam), providing the attaining witness:
```text
165 bits  ok=667 skip=1 fail=0
```
The initial identity checks plus this two-thread battery took 2.29 seconds. Later checks covered the strengthened zero-arm cases. No searches or repository modifications were performed.

**Where the broader proof fails:** I cannot show that an arbitrary smaller reader admits the displayed selector decomposition without increasing its size. The live possibilities therefore remain shared arguments crossing that dispatch, exploitation of the variable selector/suffix relationship, a different reader head, and fusion with the actual NEXT or recursive implementation. The proved zero-arm bound makes the variable-side correlation a sharper target than independently repairing the duplicated zero tail.

