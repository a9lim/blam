(._.) **No sub-175 non-strict machine, sub-187 strict machine, or sub-165 interpreter found.** I constructed a 186-bit universal machine that survives all six strictness probes but is **provably non-strict**, and derived an obstruction covering its entire environment family.

All artifacts are in the assigned directory; full derivations and reproduction scripts are in [REPORT.md](REPORT.md).

Let `P` be the 165 with `list list list` replaced by `list list next`.

| Complete construction | Bits | Battery result | Idea |
|---|---:|---|---|
| `int166_skip_next.lam` | 166 | `ok=667 skip=1 fail=0` | Change the erased skip argument to alter behavior on non-stream inputs. |
| `uni186_skip_next_Kparser.lam` | 186 | `ok=667 skip=1 fail=0` | `(\p. p (\v. v (\b. p))) P`, base environment `K P`. |
| `uni188_skip_next_parser_parser.lam` | 188 | `ok=667 skip=1 fail=0` | `(\p. p (\v. v (p p))) P`, base environment `P P`. |

Each has a matching `.blc`. Compilation was unoptimized; batteries used two threads and took approximately 2.5 seconds each. No enumeration runs.

The correctness argument extends beyond the battery. The recorded identity `s s =β K rest` implies `s s T =β rest` for **any** third argument, including divergent `T`. Thus the modified parser has the same genuine-stream transitions. For closed `M`, either universal boundary reduces to

```text
P (λv. v A) (⌜M⌝ ++ N) →* (λenv. M) A N → M N.
```

This includes divergent `M`; it is a reduction proof, not a new Lean verification.

The useful exact identities concern non-stream inputs. Write the reader as

```text
P_Q c s = s H_c Q(c,s)
H_c     = λb. b Z_c c.
```

Then, independently of `Q` and `Z`,

```text
P_Q c K F → H_c F → c.
```

For skips `Q = s s T`, additionally `P_T c F → T[s := F]`. Consequently the original parser gives `P c F = F`, while the modified parser gives `P c F = next_c`. These identities were also checked by exact normalization with the recursive parser and continuation rigid.

**The strictness obstruction:** every boundary `P_Q (λv. v (K P_Q))` with the ordinary variable and APP representations fails on

```text
M = (free₁ K) F
⌜M⌝ = 0101100000110000010.
```

Put `R = ⌜K⌝ ++ ⌜F⌝ ++ N`. The variable’s returned selector is `r = cons K R`, so

```text
U_Q (⌜M⌝ ++ N)
  =β r (K P_Q) K F N
  →* P_Q R K F N
  →* R N.
```

With `N = F`, this is a finite Scott stream. This refutes strictness **at every size in this family**, regardless of the skip expression. The identity was computationally verified with both rigid `N` and concrete `F`.

Both new universal machines were capped on all six existing strictness probes at `2¹⁶` β. Nevertheless, this witness makes the 186 halt with a 183-bit normal form and the 188 halt with `I`.

A second family exclusion follows for the original 165: base environment `P a` cannot be strict for any `a`. Open variable 2 evaluates to

```text
(cons F (cons K N)) (P a) N
  →* P a F (cons K N) N
  →* N.
```

My read: off-protocol behavior is a real degree of freedom, but modifying the skip alone cannot rescue the `K parser` environment. A strict improvement here must break the exposed identity `P c K F = c` or use a different environment construction. For the non-strict target, I found no saving; coordinated value/control changes or reader/knot fusion remain necessary avenues, without any global optimality claim.

