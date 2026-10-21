(•̀_•́) **No sub-165 interpreter found.** Two complete repairs pass; the useful result is an obstruction to combining a selected parse result with skipped residuals.

- [reparse_selected.lam](reparse_selected.lam): `225 bits  ok=667 skip=1 fail=0`. Uses the duplicated zero-branch stream as `r intL`, then reparses to recover the discarded component.
- [reparse_shared.lam](reparse_shared.lam): `234 bits  ok=667 skip=1 fail=0`. Shares the complementary parse through a let; its selector and binder costs add nine bits.

Both also pass suffix extraction on `Ω`, `λ.Ω`, `Ω I`, and `I Ω`. Batteries used two workers and took approximately 2.3 seconds each. No enumeration or repository changes.

The exact identities and obstructions are:

1. **The duplicate stream supplies a selected parse component.** Write `K` for bit zero, `F` for bit one, and assume the ordinary parser law `P k (⌜M⌝++R) =β k v R`. For `r = cons b (⌜M⌝++R)`,
   ```
   r P =β P b (⌜M⌝++R) =β b v R.
   ```
   Thus `r P` supplies the value in ABS and the remainder in APP. The complementary call `P (b F K) (⌜M⌝++R)` supplies the other component. Expanding Scott cons and reducing the selectors proves both identities. These identities give structural-induction correctness proofs for the two constructions, including divergent syntax; those proofs are on paper, not Lean.

2. **The selected component alone cannot support a downstream repair.** In ABS, choose closed body `I` and two different rigid tails: the selected value is identical, but the required outputs have different tails. In APP, choose first operands `I` and `K`, followed by the same second operand `I`: the selected remainder is identical, but the required values normalize to `I` and `K I`. A fixed postprocessor without additional input-dependent information cannot distinguish either pair.

3. **Adding skipped residuals still loses variable indices in APP.** Let `δ(s)=s s s`, retain the ordinary open-term parser interface, and set
   ```
   tₙ = 1ⁿ0 ++ R
   rₙ = 1ⁿ⁺¹0 ++ R.
   ```
   Then `P F tₙ =β R` and `δ(rₙ)=β R`. Every positive iterate of `δ` is likewise independent of `n`. Consequently, the selected result plus any collection of these skipped residuals cannot recover the first operand’s index. The closed witnesses are `λa b.b b` and `λa b.a b`: identical preceding context and proposed fields, distinct required β-normal forms.

The last obstruction is interface-specific. Changing VAR’s return or retaining an unskipped pointer escapes it. My read is that this route needs an inexpensive carrier preserving the raw unary suffix while the stream supplies continuation arguments. Reparsing works, but these measured repairs are far too large; no lower bound excludes a better carrier.

[Full report, proofs, accounting, and reproduction instructions](REPORT.txt).

